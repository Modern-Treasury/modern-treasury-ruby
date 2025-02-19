# typed: strong

module ModernTreasury
  module Models
    class ConnectionLegalEntityUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

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
          .void
      end
      def initialize(status: nil, request_options: {})
      end

      sig { override.returns({status: Symbol, request_options: ModernTreasury::RequestOptions}) }
      def to_hash
      end

      class Status < ModernTreasury::Enum
        abstract!

        PROCESSING = :processing

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
