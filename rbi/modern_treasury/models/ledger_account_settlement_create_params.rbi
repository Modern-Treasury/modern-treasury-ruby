# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountSettlementCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LedgerAccountSettlementCreateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The id of the contra ledger account that sends to or receives funds from the
      # settled ledger account.
      sig { returns(String) }
      attr_accessor :contra_ledger_account_id

      # The id of the settled ledger account whose ledger entries are queried against,
      # and its balance is reduced as a result.
      sig { returns(String) }
      attr_accessor :settled_ledger_account_id

      # If true, the settlement amount and settlement_entry_direction will bring the
      # settlement ledger account's balance closer to zero, even if the balance is
      # negative.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :allow_either_direction

      # The description of the ledger account settlement.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The exclusive upper bound of the effective_at timestamp of the ledger entries to
      # be included in the ledger account settlement. The default value is the
      # created_at timestamp of the ledger account settlement.
      sig { returns(T.nilable(Time)) }
      attr_accessor :effective_at_upper_bound

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # It is set to `false` by default. It should be set to `true` when migrating
      # existing settlements.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :skip_settlement_ledger_transaction

      # The status of the ledger account settlement. It is set to `pending` by default.
      # To post a ledger account settlement at creation, use `posted`.
      sig do
        returns(
          T.nilable(
            ModernTreasury::LedgerAccountSettlementCreateParams::Status::OrSymbol
          )
        )
      end
      attr_accessor :status

      sig do
        params(
          contra_ledger_account_id: String,
          settled_ledger_account_id: String,
          allow_either_direction: T.nilable(T::Boolean),
          description: T.nilable(String),
          effective_at_upper_bound: T.nilable(Time),
          metadata: T::Hash[Symbol, String],
          skip_settlement_ledger_transaction: T.nilable(T::Boolean),
          status:
            T.nilable(
              ModernTreasury::LedgerAccountSettlementCreateParams::Status::OrSymbol
            ),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The id of the contra ledger account that sends to or receives funds from the
        # settled ledger account.
        contra_ledger_account_id:,
        # The id of the settled ledger account whose ledger entries are queried against,
        # and its balance is reduced as a result.
        settled_ledger_account_id:,
        # If true, the settlement amount and settlement_entry_direction will bring the
        # settlement ledger account's balance closer to zero, even if the balance is
        # negative.
        allow_either_direction: nil,
        # The description of the ledger account settlement.
        description: nil,
        # The exclusive upper bound of the effective_at timestamp of the ledger entries to
        # be included in the ledger account settlement. The default value is the
        # created_at timestamp of the ledger account settlement.
        effective_at_upper_bound: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        # It is set to `false` by default. It should be set to `true` when migrating
        # existing settlements.
        skip_settlement_ledger_transaction: nil,
        # The status of the ledger account settlement. It is set to `pending` by default.
        # To post a ledger account settlement at creation, use `posted`.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            contra_ledger_account_id: String,
            settled_ledger_account_id: String,
            allow_either_direction: T.nilable(T::Boolean),
            description: T.nilable(String),
            effective_at_upper_bound: T.nilable(Time),
            metadata: T::Hash[Symbol, String],
            skip_settlement_ledger_transaction: T.nilable(T::Boolean),
            status:
              T.nilable(
                ModernTreasury::LedgerAccountSettlementCreateParams::Status::OrSymbol
              ),
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The status of the ledger account settlement. It is set to `pending` by default.
      # To post a ledger account settlement at creation, use `posted`.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::LedgerAccountSettlementCreateParams::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            ModernTreasury::LedgerAccountSettlementCreateParams::Status::TaggedSymbol
          )
        POSTED =
          T.let(
            :posted,
            ModernTreasury::LedgerAccountSettlementCreateParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LedgerAccountSettlementCreateParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
