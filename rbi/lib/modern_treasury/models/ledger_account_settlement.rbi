# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountSettlement < ModernTreasury::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :id

      # The amount of the ledger account settlement.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount

      # The id of the contra ledger account that sends to or receives funds from the
      #   settled ledger account.
      sig { returns(String) }
      attr_accessor :contra_ledger_account_id

      sig { returns(Time) }
      attr_accessor :created_at

      # The currency of the ledger account settlement.
      sig { returns(String) }
      attr_accessor :currency

      # The currency exponent of the ledger account settlement.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :currency_exponent

      # The description of the ledger account settlement.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The exclusive upper bound of the effective_at timestamp of the ledger entries to
      #   be included in the ledger account settlement. The default value is the
      #   created_at timestamp of the ledger account settlement.
      sig { returns(Time) }
      attr_accessor :effective_at_upper_bound

      # The id of the ledger that this ledger account settlement belongs to.
      sig { returns(String) }
      attr_accessor :ledger_id

      # The id of the ledger transaction that this settlement is associated with.
      sig { returns(T.nilable(String)) }
      attr_accessor :ledger_transaction_id

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :object

      # The id of the settled ledger account whose ledger entries are queried against,
      #   and its balance is reduced as a result.
      sig { returns(String) }
      attr_accessor :settled_ledger_account_id

      # The direction of the ledger entry with the settlement_ledger_account.
      sig { returns(T.nilable(String)) }
      attr_accessor :settlement_entry_direction

      # The status of the ledger account settlement. One of `processing`, `pending`,
      #   `posted`, `archiving` or `archived`.
      sig { returns(ModernTreasury::Models::LedgerAccountSettlement::Status::TaggedSymbol) }
      attr_accessor :status

      sig { returns(Time) }
      attr_accessor :updated_at

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
          status: ModernTreasury::Models::LedgerAccountSettlement::Status::OrSymbol,
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
      ); end
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
      def to_hash; end

      # The status of the ledger account settlement. One of `processing`, `pending`,
      #   `posted`, `archiving` or `archived`.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerAccountSettlement::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::LedgerAccountSettlement::Status::TaggedSymbol) }

        ARCHIVED = T.let(:archived, ModernTreasury::Models::LedgerAccountSettlement::Status::TaggedSymbol)
        ARCHIVING = T.let(:archiving, ModernTreasury::Models::LedgerAccountSettlement::Status::TaggedSymbol)
        DRAFTING = T.let(:drafting, ModernTreasury::Models::LedgerAccountSettlement::Status::TaggedSymbol)
        PENDING = T.let(:pending, ModernTreasury::Models::LedgerAccountSettlement::Status::TaggedSymbol)
        POSTED = T.let(:posted, ModernTreasury::Models::LedgerAccountSettlement::Status::TaggedSymbol)
        PROCESSING = T.let(:processing, ModernTreasury::Models::LedgerAccountSettlement::Status::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::LedgerAccountSettlement::Status::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
