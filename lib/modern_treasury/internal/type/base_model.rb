# frozen_string_literal: true

module ModernTreasury
  module Internal
    module Type
      # @abstract
      #
      # @example
      #   # `async_response` is a `ModernTreasury::Models::AsyncResponse`
      #   async_response => {
      #     id: id,
      #     object: object
      #   }
      class BaseModel
        extend ModernTreasury::Internal::Type::Converter

        class << self
          # @api private
          #
          # Assumes superclass fields are totally defined before fields are accessed /
          #   defined on subclasses.
          #
          # @return [Hash{Symbol=>Hash{Symbol=>Object}}]
          def known_fields
            @known_fields ||= (self < ModernTreasury::BaseModel ? superclass.known_fields.dup : {})
          end

          # @api private
          #
          # @return [Hash{Symbol=>Hash{Symbol=>Object}}]
          def fields
            known_fields.transform_values do |field|
              {**field.except(:type_fn), type: field.fetch(:type_fn).call}
            end
          end

          # @api private
          #
          # @param name_sym [Symbol]
          #
          # @param required [Boolean]
          #
          # @param type_info [Hash{Symbol=>Object}, Proc, ModernTreasury::Internal::Type::Converter, Class]
          #
          # @param spec [Hash{Symbol=>Object}] .
          #
          #   @option spec [NilClass, TrueClass, FalseClass, Integer, Float, Symbol] :const
          #
          #   @option spec [Proc] :enum
          #
          #   @option spec [Proc] :union
          #
          #   @option spec [Boolean] :"nil?"
          private def add_field(name_sym, required:, type_info:, spec:)
            type_fn, info =
              case type_info
              in Proc | ModernTreasury::Internal::Type::Converter | Class
                [ModernTreasury::Internal::Type::Converter.type_info({**spec, union: type_info}), spec]
              in Hash
                [ModernTreasury::Internal::Type::Converter.type_info(type_info), type_info]
              end

            setter = "#{name_sym}="
            api_name = info.fetch(:api_name, name_sym)
            nilable = info[:nil?]
            const = if required && !nilable
              info.fetch(
                :const,
                ModernTreasury::Internal::Util::OMIT
              )
            else
              ModernTreasury::Internal::Util::OMIT
            end

            [name_sym, setter].each { undef_method(_1) } if known_fields.key?(name_sym)

            known_fields[name_sym] =
              {
                mode: @mode,
                api_name: api_name,
                required: required,
                nilable: nilable,
                const: const,
                type_fn: type_fn
              }

            define_method(setter) { @data.store(name_sym, _1) }

            define_method(name_sym) do
              target = type_fn.call
              value = @data.fetch(name_sym) { const == ModernTreasury::Internal::Util::OMIT ? nil : const }
              state = {strictness: :strong, exactness: {yes: 0, no: 0, maybe: 0}, branched: 0}
              if (nilable || !required) && value.nil?
                nil
              else
                ModernTreasury::Internal::Type::Converter.coerce(
                  target, value, state: state
                )
              end
            rescue StandardError
              cls = self.class.name.split("::").last
              # rubocop:disable Layout/LineLength
              message = "Failed to parse #{cls}.#{__method__} from #{value.class} to #{target.inspect}. To get the unparsed API response, use #{cls}[:#{__method__}]."
              # rubocop:enable Layout/LineLength
              raise ModernTreasury::ConversionError.new(message)
            end
          end

          # @api private
          #
          # @param name_sym [Symbol]
          #
          # @param type_info [Hash{Symbol=>Object}, Proc, ModernTreasury::Internal::Type::Converter, Class]
          #
          # @param spec [Hash{Symbol=>Object}] .
          #
          #   @option spec [NilClass, TrueClass, FalseClass, Integer, Float, Symbol] :const
          #
          #   @option spec [Proc] :enum
          #
          #   @option spec [Proc] :union
          #
          #   @option spec [Boolean] :"nil?"
          def required(name_sym, type_info, spec = {})
            add_field(name_sym, required: true, type_info: type_info, spec: spec)
          end

          # @api private
          #
          # @param name_sym [Symbol]
          #
          # @param type_info [Hash{Symbol=>Object}, Proc, ModernTreasury::Internal::Type::Converter, Class]
          #
          # @param spec [Hash{Symbol=>Object}] .
          #
          #   @option spec [NilClass, TrueClass, FalseClass, Integer, Float, Symbol] :const
          #
          #   @option spec [Proc] :enum
          #
          #   @option spec [Proc] :union
          #
          #   @option spec [Boolean] :"nil?"
          def optional(name_sym, type_info, spec = {})
            add_field(name_sym, required: false, type_info: type_info, spec: spec)
          end

          # @api private
          #
          # `request_only` attributes not excluded from `.#coerce` when receiving responses
          #   even if well behaved servers should not send them
          #
          # @param blk [Proc]
          private def request_only(&blk)
            @mode = :dump
            blk.call
          ensure
            @mode = nil
          end

          # @api private
          #
          # `response_only` attributes are omitted from `.#dump` when making requests
          #
          # @param blk [Proc]
          private def response_only(&blk)
            @mode = :coerce
            blk.call
          ensure
            @mode = nil
          end

          # @param other [Object]
          #
          # @return [Boolean]
          def ==(other) = other.is_a?(Class) && other <= ModernTreasury::BaseModel && other.fields == fields
        end

        # @param other [Object]
        #
        # @return [Boolean]
        def ==(other) = self.class == other.class && @data == other.to_h

        class << self
          # @api private
          #
          # @param value [ModernTreasury::BaseModel, Hash{Object=>Object}, Object]
          #
          # @param state [Hash{Symbol=>Object}] .
          #
          #   @option state [Boolean, :strong] :strictness
          #
          #   @option state [Hash{Symbol=>Object}] :exactness
          #
          #   @option state [Integer] :branched
          #
          # @return [ModernTreasury::BaseModel, Object]
          def coerce(value, state:)
            exactness = state.fetch(:exactness)

            if value.is_a?(self.class)
              exactness[:yes] += 1
              return value
            end

            unless (val = ModernTreasury::Internal::Util.coerce_hash(value)).is_a?(Hash)
              exactness[:no] += 1
              return value
            end
            exactness[:yes] += 1

            keys = val.keys.to_set
            instance = new
            data = instance.to_h

            # rubocop:disable Metrics/BlockLength
            fields.each do |name, field|
              mode, required, target = field.fetch_values(:mode, :required, :type)
              api_name, nilable, const = field.fetch_values(:api_name, :nilable, :const)

              unless val.key?(api_name)
                if required && mode != :dump && const == ModernTreasury::Internal::Util::OMIT
                  exactness[nilable ? :maybe : :no] += 1
                else
                  exactness[:yes] += 1
                end
                next
              end

              item = val.fetch(api_name)
              keys.delete(api_name)

              converted =
                if item.nil? && (nilable || !required)
                  exactness[nilable ? :yes : :maybe] += 1
                  nil
                else
                  coerced = ModernTreasury::Internal::Type::Converter.coerce(target, item, state: state)
                  case target
                  in ModernTreasury::Internal::Type::Converter | Symbol
                    coerced
                  else
                    item
                  end
                end
              data.store(name, converted)
            end
            # rubocop:enable Metrics/BlockLength

            keys.each { data.store(_1, val.fetch(_1)) }
            instance
          end

          # @api private
          #
          # @param value [ModernTreasury::BaseModel, Object]
          #
          # @return [Hash{Object=>Object}, Object]
          def dump(value)
            unless (coerced = ModernTreasury::Internal::Util.coerce_hash(value)).is_a?(Hash)
              return super
            end

            acc = {}

            coerced.each do |key, val|
              name = key.is_a?(String) ? key.to_sym : key
              case (field = known_fields[name])
              in nil
                acc.store(name, super(val))
              else
                mode, api_name, type_fn = field.fetch_values(:mode, :api_name, :type_fn)
                case mode
                in :coerce
                  next
                else
                  target = type_fn.call
                  acc.store(api_name, ModernTreasury::Internal::Type::Converter.dump(target, val))
                end
              end
            end

            known_fields.each_value do |field|
              mode, api_name, const = field.fetch_values(:mode, :api_name, :const)
              next if mode == :coerce || acc.key?(api_name) || const == ModernTreasury::Internal::Util::OMIT
              acc.store(api_name, const)
            end

            acc
          end
        end

        # Returns the raw value associated with the given key, if found. Otherwise, nil is
        #   returned.
        #
        #   It is valid to lookup keys that are not in the API spec, for example to access
        #   undocumented features. This method does not parse response data into
        #   higher-level types. Lookup by anything other than a Symbol is an ArgumentError.
        #
        # @param key [Symbol]
        #
        # @return [Object, nil]
        def [](key)
          unless key.instance_of?(Symbol)
            raise ArgumentError.new("Expected symbol key for lookup, got #{key.inspect}")
          end

          @data[key]
        end

        # Returns a Hash of the data underlying this object. O(1)
        #
        #   Keys are Symbols and values are the raw values from the response. The return
        #   value indicates which values were ever set on the object. i.e. there will be a
        #   key in this hash if they ever were, even if the set value was nil.
        #
        #   This method is not recursive. The returned value is shared by the object, so it
        #   should not be mutated.
        #
        # @return [Hash{Symbol=>Object}]
        def to_h = @data

        alias_method :to_hash, :to_h

        # @param keys [Array<Symbol>, nil]
        #
        # @return [Hash{Symbol=>Object}]
        def deconstruct_keys(keys)
          (keys || self.class.known_fields.keys)
            .filter_map do |k|
              unless self.class.known_fields.key?(k)
                next
              end

              [k, public_send(k)]
            end
            .to_h
        end

        # @param a [Object]
        #
        # @return [String]
        def to_json(*a) = self.class.dump(self).to_json(*a)

        # @param a [Object]
        #
        # @return [String]
        def to_yaml(*a) = self.class.dump(self).to_yaml(*a)

        # Create a new instance of a model.
        #
        # @param data [Hash{Symbol=>Object}, ModernTreasury::BaseModel]
        def initialize(data = {})
          case ModernTreasury::Internal::Util.coerce_hash(data)
          in Hash => coerced
            @data = coerced
          else
            raise ArgumentError.new("Expected a #{Hash} or #{ModernTreasury::BaseModel}, got #{data.inspect}")
          end
        end

        # @return [String]
        def inspect
          rows = self.class.known_fields.keys.map do
            "#{_1}=#{@data.key?(_1) ? public_send(_1) : ''}"
          rescue ModernTreasury::ConversionError
            "#{_1}=#{@data.fetch(_1)}"
          end
          "#<#{self.class.name}:0x#{object_id.to_s(16)} #{rows.join(' ')}>"
        end
      end
    end
  end
end
