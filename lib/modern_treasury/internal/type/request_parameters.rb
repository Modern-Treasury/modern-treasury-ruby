# frozen_string_literal: true

module ModernTreasury
  module Internal
    module Type
      # @api private
      module RequestParameters
        # @!parse
        #   # Options to specify HTTP behaviour for this request.
        #   # @return [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
        #   attr_accessor :request_options

        # @param mod [Module]
        def self.included(mod)
          return unless mod <= ModernTreasury::Internal::Type::BaseModel

          mod.extend(ModernTreasury::Internal::Type::RequestParameters::Converter)
          mod.optional(:request_options, ModernTreasury::RequestOptions)
        end

        # @api private
        module Converter
          # @api private
          #
          # @param params [Object]
          #
          # @return [Array(Object, Hash{Symbol=>Object})]
          def dump_request(params)
            case (dumped = dump(params))
            in Hash
              [dumped.except(:request_options), dumped[:request_options]]
            else
              [dumped, nil]
            end
          end
        end
      end
    end
  end
end
