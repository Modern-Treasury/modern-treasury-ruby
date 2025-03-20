# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountSettlement < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The amount of the ledger account settlement.
      sig { returns(T.nilable(Integer)) }
      def amount
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_)
      end

      # The id of the contra ledger account that sends to or receives funds from the
      #   settled ledger account.
      sig { returns(String) }
      def contra_ledger_account_id
      end

      sig { params(_: String).returns(String) }
      def contra_ledger_account_id=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The currency of the ledger account settlement.
      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      # The currency exponent of the ledger account settlement.
      sig { returns(T.nilable(Integer)) }
      def currency_exponent
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def currency_exponent=(_)
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
      sig { returns(Time) }
      def effective_at_upper_bound
      end

      sig { params(_: Time).returns(Time) }
      def effective_at_upper_bound=(_)
      end

      # The id of the ledger that this ledger account settlement belongs to.
      sig { returns(String) }
      def ledger_id
      end

      sig { params(_: String).returns(String) }
      def ledger_id=(_)
      end

      # The id of the ledger transaction that this settlement is associated with.
      sig { returns(T.nilable(String)) }
      def ledger_transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ledger_transaction_id=(_)
      end

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      # The id of the settled ledger account whose ledger entries are queried against,
      #   and its balance is reduced as a result.
      sig { returns(String) }
      def settled_ledger_account_id
      end

      sig { params(_: String).returns(String) }
      def settled_ledger_account_id=(_)
      end

      # The direction of the ledger entry with the settlement_ledger_account.
      sig { returns(T.nilable(String)) }
      def settlement_entry_direction
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def settlement_entry_direction=(_)
      end

      # The status of the ledger account settlement. One of `processing`, `pending`,
      #   `posted`, `archiving` or `archived`.
      sig { returns(ModernTreasury::Models::LedgerAccountSettlement::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: ModernTreasury::Models::LedgerAccountSettlement::Status::TaggedSymbol)
          .returns(ModernTreasury::Models::LedgerAccountSettlement::Status::TaggedSymbol)
      end
      def status=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      sig do
        params(
          id: String,
          amount: T.nilable(Integer),
          contra_ledger_account_id: String,
          created_at: Time,
          currency: String,
          currency_exponent: T.nilable(Integer),
          description: T.nilable(String),
          effective_at_upper_bound: Time,
          ledger_id: String,
          ledger_transaction_id: T.nilable(String),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          settled_ledger_account_id: String,
          settlement_entry_direction: T.nilable(String),
          status: ModernTreasury::Models::LedgerAccountSettlement::Status::TaggedSymbol,
          updated_at: Time
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        amount:,
        contra_ledger_account_id:,
        created_at:,
        currency:,
        currency_exponent:,
        description:,
        effective_at_upper_bound:,
        ledger_id:,
        ledger_transaction_id:,
        live_mode:,
        metadata:,
        object:,
        settled_ledger_account_id:,
        settlement_entry_direction:,
        status:,
        updated_at:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              amount: T.nilable(Integer),
              contra_ledger_account_id: String,
              created_at: Time,
              currency: String,
              currency_exponent: T.nilable(Integer),
              description: T.nilable(String),
              effective_at_upper_bound: Time,
              ledger_id: String,
              ledger_transaction_id: T.nilable(String),
              live_mode: T::Boolean,
              metadata: T::Hash[Symbol, String],
              object: String,
              settled_ledger_account_id: String,
              settlement_entry_direction: T.nilable(String),
              status: ModernTreasury::Models::LedgerAccountSettlement::Status::TaggedSymbol,
              updated_at: Time
            }
          )
      end
      def to_hash
      end

      # The status of the ledger account settlement. One of `processing`, `pending`,
      #   `posted`, `archiving` or `archived`.
      module Status
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerAccountSettlement::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::LedgerAccountSettlement::Status::TaggedSymbol) }

        ARCHIVED = T.let(:archived, ModernTreasury::Models::LedgerAccountSettlement::Status::TaggedSymbol)
        ARCHIVING = T.let(:archiving, ModernTreasury::Models::LedgerAccountSettlement::Status::TaggedSymbol)
        DRAFTING = T.let(:drafting, ModernTreasury::Models::LedgerAccountSettlement::Status::TaggedSymbol)
        PENDING = T.let(:pending, ModernTreasury::Models::LedgerAccountSettlement::Status::TaggedSymbol)
        POSTED = T.let(:posted, ModernTreasury::Models::LedgerAccountSettlement::Status::TaggedSymbol)
        PROCESSING = T.let(:processing, ModernTreasury::Models::LedgerAccountSettlement::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::LedgerAccountSettlement::Status::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
