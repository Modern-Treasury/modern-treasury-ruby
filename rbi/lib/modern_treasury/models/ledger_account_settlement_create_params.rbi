# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountSettlementCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # The id of the contra ledger account that sends to or receives funds from the
      #   settled ledger account.
      sig { returns(String) }
      def contra_ledger_account_id
      end

      sig { params(_: String).returns(String) }
      def contra_ledger_account_id=(_)
      end

      # The id of the settled ledger account whose ledger entries are queried against,
      #   and its balance is reduced as a result.
      sig { returns(String) }
      def settled_ledger_account_id
      end

      sig { params(_: String).returns(String) }
      def settled_ledger_account_id=(_)
      end

      # If true, the settlement amount and settlement_entry_direction will bring the
      #   settlement ledger account's balance closer to zero, even if the balance is
      #   negative.
      sig { returns(T.nilable(T::Boolean)) }
      def allow_either_direction
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def allow_either_direction=(_)
      end

      # The description of the ledger account settlement.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      # The exclusive upper bound of the effective_at timestamp of the ledger entries to
      #   be included in the ledger account settlement. The default value is the
      #   created_at timestamp of the ledger account settlement.
      sig { returns(T.nilable(Time)) }
      def effective_at_upper_bound
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def effective_at_upper_bound=(_)
      end

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      # It is set to `false` by default. It should be set to `true` when migrating
      #   existing settlements.
      sig { returns(T.nilable(T::Boolean)) }
      def skip_settlement_ledger_transaction
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def skip_settlement_ledger_transaction=(_)
      end

      # The status of the ledger account settlement. It is set to `pending` by default.
      #   To post a ledger account settlement at creation, use `posted`.
      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountSettlementCreateParams::Status::OrSymbol)) }
      def status
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::LedgerAccountSettlementCreateParams::Status::OrSymbol))
          .returns(T.nilable(ModernTreasury::Models::LedgerAccountSettlementCreateParams::Status::OrSymbol))
      end
      def status=(_)
      end

      sig do
        params(
          contra_ledger_account_id: String,
          settled_ledger_account_id: String,
          allow_either_direction: T.nilable(T::Boolean),
          description: T.nilable(String),
          effective_at_upper_bound: T.nilable(Time),
          metadata: T::Hash[Symbol, String],
          skip_settlement_ledger_transaction: T.nilable(T::Boolean),
          status: T.nilable(ModernTreasury::Models::LedgerAccountSettlementCreateParams::Status::OrSymbol),
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        contra_ledger_account_id:,
        settled_ledger_account_id:,
        allow_either_direction: nil,
        description: nil,
        effective_at_upper_bound: nil,
        metadata: nil,
        skip_settlement_ledger_transaction: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              contra_ledger_account_id: String,
              settled_ledger_account_id: String,
              allow_either_direction: T.nilable(T::Boolean),
              description: T.nilable(String),
              effective_at_upper_bound: T.nilable(Time),
              metadata: T::Hash[Symbol, String],
              skip_settlement_ledger_transaction: T.nilable(T::Boolean),
              status: T.nilable(ModernTreasury::Models::LedgerAccountSettlementCreateParams::Status::OrSymbol),
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      # The status of the ledger account settlement. It is set to `pending` by default.
      #   To post a ledger account settlement at creation, use `posted`.
      module Status
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerAccountSettlementCreateParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::LedgerAccountSettlementCreateParams::Status::TaggedSymbol) }

        PENDING =
          T.let(:pending, ModernTreasury::Models::LedgerAccountSettlementCreateParams::Status::TaggedSymbol)
        POSTED =
          T.let(:posted, ModernTreasury::Models::LedgerAccountSettlementCreateParams::Status::TaggedSymbol)

        class << self
          sig do
            override
              .returns(T::Array[ModernTreasury::Models::LedgerAccountSettlementCreateParams::Status::TaggedSymbol])
          end
          def values
          end
        end
      end
    end
  end
end
