# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountSettlementUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # The description of the ledger account settlement.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # To post a pending ledger account settlement, use `posted`. To archive a pending
      #   ledger transaction, use `archived`.
      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountSettlementUpdateParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: ModernTreasury::Models::LedgerAccountSettlementUpdateParams::Status::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          status: ModernTreasury::Models::LedgerAccountSettlementUpdateParams::Status::OrSymbol,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(description: nil, metadata: nil, status: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              description: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              status: ModernTreasury::Models::LedgerAccountSettlementUpdateParams::Status::OrSymbol,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      # To post a pending ledger account settlement, use `posted`. To archive a pending
      #   ledger transaction, use `archived`.
      module Status
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerAccountSettlementUpdateParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::LedgerAccountSettlementUpdateParams::Status::TaggedSymbol) }

        POSTED =
          T.let(:posted, ModernTreasury::Models::LedgerAccountSettlementUpdateParams::Status::TaggedSymbol)
        ARCHIVED =
          T.let(:archived, ModernTreasury::Models::LedgerAccountSettlementUpdateParams::Status::TaggedSymbol)

        sig do
          override
            .returns(T::Array[ModernTreasury::Models::LedgerAccountSettlementUpdateParams::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
