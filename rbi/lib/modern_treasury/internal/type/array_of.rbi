# typed: strong

module ModernTreasury
  module Internal
    module Type
      # @api private
      #
      # Array of items of a given type.
      class ArrayOf
        include ModernTreasury::Internal::Type::Converter

        abstract!
        final!

        Elem = type_member(:out)

        sig(:final) do
          params(
            type_info: T.any(
              ModernTreasury::Internal::AnyHash,
              T.proc.returns(ModernTreasury::Internal::Type::Converter::Input),
              ModernTreasury::Internal::Type::Converter::Input
            ),
            spec: ModernTreasury::Internal::AnyHash
          )
            .returns(T.attached_class)
        end
        def self.[](type_info, spec = {}); end

        sig(:final) { params(other: T.anything).returns(T::Boolean) }
        def ===(other); end

        sig(:final) { params(other: T.anything).returns(T::Boolean) }
        def ==(other); end

        # @api private
        sig(:final) do
          override
            .params(
              value: T.any(T::Array[T.anything], T.anything),
              state: ModernTreasury::Internal::Type::Converter::CoerceState
            )
            .returns(T.any(T::Array[T.anything], T.anything))
        end
        def coerce(value, state:); end

        # @api private
        sig(:final) do
          override
            .params(
              value: T.any(T::Array[T.anything], T.anything),
              state: ModernTreasury::Internal::Type::Converter::DumpState
            )
            .returns(T.any(T::Array[T.anything], T.anything))
        end
        def dump(value, state:); end

        # @api private
        sig(:final) { returns(Elem) }
        protected def item_type; end

        # @api private
        sig(:final) { returns(T::Boolean) }
        protected def nilable?; end

        # @api private
        sig(:final) do
          params(
            type_info: T.any(
              ModernTreasury::Internal::AnyHash,
              T.proc.returns(ModernTreasury::Internal::Type::Converter::Input),
              ModernTreasury::Internal::Type::Converter::Input
            ),
            spec: ModernTreasury::Internal::AnyHash
          )
            .void
        end
        def initialize(type_info, spec = {}); end
      end
    end
  end
end
