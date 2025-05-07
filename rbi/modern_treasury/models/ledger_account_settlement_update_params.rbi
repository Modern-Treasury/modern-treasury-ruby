# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountSettlementUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

      # The description of the ledger account settlement.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # To post a pending ledger account settlement, use `posted`. To archive a pending
      # ledger transaction, use `archived`.
      sig do
        returns(
          T.nilable(
            ModernTreasury::LedgerAccountSettlementUpdateParams::Status::OrSymbol
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status:
            ModernTreasury::LedgerAccountSettlementUpdateParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig do
        params(
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          status:
            ModernTreasury::LedgerAccountSettlementUpdateParams::Status::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The description of the ledger account settlement.
        description: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        # To post a pending ledger account settlement, use `posted`. To archive a pending
        # ledger transaction, use `archived`.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            description: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            status:
              ModernTreasury::LedgerAccountSettlementUpdateParams::Status::OrSymbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # To post a pending ledger account settlement, use `posted`. To archive a pending
      # ledger transaction, use `archived`.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::LedgerAccountSettlementUpdateParams::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        POSTED =
          T.let(
            :posted,
            ModernTreasury::LedgerAccountSettlementUpdateParams::Status::TaggedSymbol
          )
        ARCHIVED =
          T.let(
            :archived,
            ModernTreasury::LedgerAccountSettlementUpdateParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LedgerAccountSettlementUpdateParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
