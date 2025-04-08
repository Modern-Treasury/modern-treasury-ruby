# typed: strong

module ModernTreasury
  module Internal
    module Type
      # @api private
      #
      # When we don't know what to expect for the value.
      class Unknown
        extend ModernTreasury::Internal::Type::Converter

        abstract!
        final!

        sig(:final) { params(other: T.anything).returns(T::Boolean) }
        def self.===(other); end

        sig(:final) { params(other: T.anything).returns(T::Boolean) }
        def self.==(other); end

        class << self
          # @api private
          sig(:final) do
            override
              .params(value: T.anything, state: ModernTreasury::Internal::Type::Converter::CoerceState)
              .returns(T.anything)
          end
          def coerce(value, state:); end

          # @api private
          sig(:final) do
            override
              .params(value: T.anything, state: ModernTreasury::Internal::Type::Converter::DumpState)
              .returns(T.anything)
          end
          def dump(value, state:); end
        end
      end
    end
  end
end
