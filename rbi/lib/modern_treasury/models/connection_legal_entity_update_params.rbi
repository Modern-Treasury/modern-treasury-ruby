# typed: strong

module ModernTreasury
  module Models
    class ConnectionLegalEntityUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # The status of the connection legal entity.
      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig do
        params(
          status: Symbol,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(status: nil, request_options: {})
      end

      sig { override.returns({status: Symbol, request_options: ModernTreasury::RequestOptions}) }
      def to_hash
      end

      # The status of the connection legal entity.
      class Status < ModernTreasury::Enum
        abstract!

        PROCESSING = :processing

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
