# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountSettlement < ModernTreasury::BaseModel
      Shape = T.type_alias do
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
          status: Symbol,
          updated_at: Time
        }
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount

      sig { returns(String) }
      attr_accessor :contra_ledger_account_id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :currency

      sig { returns(T.nilable(Integer)) }
      attr_accessor :currency_exponent

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(Time) }
      attr_accessor :effective_at_upper_bound

      sig { returns(String) }
      attr_accessor :ledger_id

      sig { returns(T.nilable(String)) }
      attr_accessor :ledger_transaction_id

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :object

      sig { returns(String) }
      attr_accessor :settled_ledger_account_id

      sig { returns(T.nilable(String)) }
      attr_accessor :settlement_entry_direction

      sig { returns(Symbol) }
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
          status: Symbol,
          updated_at: Time
        ).void
      end
      def initialize(
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

      sig { returns(ModernTreasury::Models::LedgerAccountSettlement::Shape) }
      def to_h; end

      class Status < ModernTreasury::Enum
        abstract!

        ARCHIVED = :archived
        ARCHIVING = :archiving
        DRAFTING = :drafting
        PENDING = :pending
        POSTED = :posted
        PROCESSING = :processing

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
