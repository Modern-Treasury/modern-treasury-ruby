# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountSettlementUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(Symbol)) }
      attr_reader :status

      sig { params(status: Symbol).void }
      attr_writer :status

      sig do
        params(
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          status: Symbol,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(description: nil, metadata: nil, status: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            description: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            status: Symbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Status < ModernTreasury::Enum
        abstract!

        POSTED = :posted
        ARCHIVED = :archived

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
