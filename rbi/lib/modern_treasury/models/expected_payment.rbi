# typed: strong

module ModernTreasury
  module Models
    class ExpectedPayment < ModernTreasury::BaseModel
      Shape = T.type_alias do
        {
          id: String,
          amount_lower_bound: T.nilable(Integer),
          amount_upper_bound: T.nilable(Integer),
          counterparty_id: T.nilable(String),
          created_at: Time,
          currency: T.nilable(Symbol),
          date_lower_bound: T.nilable(Date),
          date_upper_bound: T.nilable(Date),
          description: T.nilable(String),
          direction: T.nilable(Symbol),
          internal_account_id: T.nilable(String),
          ledger_transaction_id: T.nilable(String),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          reconciliation_filters: T.nilable(T.anything),
          reconciliation_groups: T.nilable(T.anything),
          reconciliation_method: T.nilable(Symbol),
          reconciliation_rule_variables: T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]),
          remittance_information: T.nilable(String),
          statement_descriptor: T.nilable(String),
          status: Symbol,
          transaction_id: T.nilable(String),
          transaction_line_item_id: T.nilable(String),
          type: T.nilable(Symbol),
          updated_at: Time
        }
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount_lower_bound

      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount_upper_bound

      sig { returns(T.nilable(String)) }
      attr_accessor :counterparty_id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :currency

      sig { returns(T.nilable(Date)) }
      attr_accessor :date_lower_bound

      sig { returns(T.nilable(Date)) }
      attr_accessor :date_upper_bound

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :direction

      sig { returns(T.nilable(String)) }
      attr_accessor :internal_account_id

      sig { returns(T.nilable(String)) }
      attr_accessor :ledger_transaction_id

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :object

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :reconciliation_filters

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :reconciliation_groups

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :reconciliation_method

      sig { returns(T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule])) }
      attr_accessor :reconciliation_rule_variables

      sig { returns(T.nilable(String)) }
      attr_accessor :remittance_information

      sig { returns(T.nilable(String)) }
      attr_accessor :statement_descriptor

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_id

      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_line_item_id

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :type

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          amount_lower_bound: T.nilable(Integer),
          amount_upper_bound: T.nilable(Integer),
          counterparty_id: T.nilable(String),
          created_at: Time,
          currency: T.nilable(Symbol),
          date_lower_bound: T.nilable(Date),
          date_upper_bound: T.nilable(Date),
          description: T.nilable(String),
          direction: T.nilable(Symbol),
          internal_account_id: T.nilable(String),
          ledger_transaction_id: T.nilable(String),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          reconciliation_filters: T.nilable(T.anything),
          reconciliation_groups: T.nilable(T.anything),
          reconciliation_method: T.nilable(Symbol),
          reconciliation_rule_variables: T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]),
          remittance_information: T.nilable(String),
          statement_descriptor: T.nilable(String),
          status: Symbol,
          transaction_id: T.nilable(String),
          transaction_line_item_id: T.nilable(String),
          type: T.nilable(Symbol),
          updated_at: Time
        ).void
      end
      def initialize(
        id:,
        amount_lower_bound:,
        amount_upper_bound:,
        counterparty_id:,
        created_at:,
        currency:,
        date_lower_bound:,
        date_upper_bound:,
        description:,
        direction:,
        internal_account_id:,
        ledger_transaction_id:,
        live_mode:,
        metadata:,
        object:,
        reconciliation_filters:,
        reconciliation_groups:,
        reconciliation_method:,
        reconciliation_rule_variables:,
        remittance_information:,
        statement_descriptor:,
        status:,
        transaction_id:,
        transaction_line_item_id:,
        type:,
        updated_at:
      ); end

      sig { returns(ModernTreasury::Models::ExpectedPayment::Shape) }
      def to_h; end

      class Direction < ModernTreasury::Enum
        abstract!

        CREDIT = T.let(:credit, T.nilable(Symbol))
        DEBIT = T.let(:debit, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class ReconciliationMethod < ModernTreasury::Enum
        abstract!

        AUTOMATIC = T.let(:automatic, T.nilable(Symbol))
        MANUAL = T.let(:manual, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class Status < ModernTreasury::Enum
        abstract!

        ARCHIVED = :archived
        PARTIALLY_RECONCILED = :partially_reconciled
        RECONCILED = :reconciled
        UNRECONCILED = :unreconciled

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
