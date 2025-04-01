# typed: strong

module ModernTreasury
  module Models
    class ExpectedPayment < ModernTreasury::BaseModel
      sig { returns(String) }
      attr_accessor :id

      # The lowest amount this expected payment may be equal to. Value in specified
      #   currency's smallest unit. e.g. $10 would be represented as 1000.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount_lower_bound

      # The highest amount this expected payment may be equal to. Value in specified
      #   currency's smallest unit. e.g. $10 would be represented as 1000.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount_upper_bound

      # The ID of the counterparty you expect for this payment.
      sig { returns(T.nilable(String)) }
      attr_accessor :counterparty_id

      sig { returns(Time) }
      attr_accessor :created_at

      # Must conform to ISO 4217. Defaults to the currency of the internal account.
      sig { returns(T.nilable(ModernTreasury::Models::Currency::TaggedSymbol)) }
      attr_accessor :currency

      # The earliest date the payment may come in. Format: yyyy-mm-dd
      sig { returns(T.nilable(Date)) }
      attr_accessor :date_lower_bound

      # The latest date the payment may come in. Format: yyyy-mm-dd
      sig { returns(T.nilable(Date)) }
      attr_accessor :date_upper_bound

      # An optional description for internal use.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # One of credit or debit. When you are receiving money, use credit. When you are
      #   being charged, use debit.
      sig { returns(T.nilable(ModernTreasury::Models::ExpectedPayment::Direction::TaggedSymbol)) }
      attr_accessor :direction

      # The ID of the Internal Account for the expected payment.
      sig { returns(T.nilable(String)) }
      attr_accessor :internal_account_id

      # The ID of the ledger transaction linked to the expected payment.
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

      # The reconciliation filters you have for this payment.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :reconciliation_filters

      # The reconciliation groups you have for this payment.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :reconciliation_groups

      # One of manual if this expected payment was manually reconciled in the dashboard,
      #   automatic if it was automatically reconciled by Modern Treasury, or null if it
      #   is unreconciled.
      sig { returns(T.nilable(ModernTreasury::Models::ExpectedPayment::ReconciliationMethod::TaggedSymbol)) }
      attr_accessor :reconciliation_method

      # An array of reconciliation rule variables for this payment.
      sig { returns(T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule])) }
      attr_accessor :reconciliation_rule_variables

      # For `ach`, this field will be passed through on an addenda record. For `wire`
      #   payments the field will be passed through as the "Originator to Beneficiary
      #   Information", also known as OBI or Fedwire tag 6000.
      sig { returns(T.nilable(String)) }
      attr_accessor :remittance_information

      # The statement description you expect to see on the transaction. For ACH
      #   payments, this will be the full line item passed from the bank. For wire
      #   payments, this will be the OBI field on the wire. For check payments, this will
      #   be the memo field.
      sig { returns(T.nilable(String)) }
      attr_accessor :statement_descriptor

      # One of unreconciled, partially_reconciled, reconciled, or archived.
      sig { returns(ModernTreasury::Models::ExpectedPayment::Status::TaggedSymbol) }
      attr_accessor :status

      # The ID of the Transaction this expected payment object has been matched to.
      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_id

      # The ID of the Transaction Line Item this expected payment has been matched to.
      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_line_item_id

      # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
      #   sepa, signet, wire.
      sig { returns(T.nilable(ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)) }
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
          currency: T.nilable(ModernTreasury::Models::Currency::OrSymbol),
          date_lower_bound: T.nilable(Date),
          date_upper_bound: T.nilable(Date),
          description: T.nilable(String),
          direction: T.nilable(ModernTreasury::Models::ExpectedPayment::Direction::OrSymbol),
          internal_account_id: T.nilable(String),
          ledger_transaction_id: T.nilable(String),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          reconciliation_filters: T.nilable(T.anything),
          reconciliation_groups: T.nilable(T.anything),
          reconciliation_method: T.nilable(ModernTreasury::Models::ExpectedPayment::ReconciliationMethod::OrSymbol),
          reconciliation_rule_variables: T.nilable(T::Array[T.any(ModernTreasury::Models::ReconciliationRule, ModernTreasury::Util::AnyHash)]),
          remittance_information: T.nilable(String),
          statement_descriptor: T.nilable(String),
          status: ModernTreasury::Models::ExpectedPayment::Status::OrSymbol,
          transaction_id: T.nilable(String),
          transaction_line_item_id: T.nilable(String),
          type: T.nilable(ModernTreasury::Models::ExpectedPaymentType::OrSymbol),
          updated_at: Time
        )
          .returns(T.attached_class)
      end
      def self.new(
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
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              amount_lower_bound: T.nilable(Integer),
              amount_upper_bound: T.nilable(Integer),
              counterparty_id: T.nilable(String),
              created_at: Time,
              currency: T.nilable(ModernTreasury::Models::Currency::TaggedSymbol),
              date_lower_bound: T.nilable(Date),
              date_upper_bound: T.nilable(Date),
              description: T.nilable(String),
              direction: T.nilable(ModernTreasury::Models::ExpectedPayment::Direction::TaggedSymbol),
              internal_account_id: T.nilable(String),
              ledger_transaction_id: T.nilable(String),
              live_mode: T::Boolean,
              metadata: T::Hash[Symbol, String],
              object: String,
              reconciliation_filters: T.nilable(T.anything),
              reconciliation_groups: T.nilable(T.anything),
              reconciliation_method: T.nilable(ModernTreasury::Models::ExpectedPayment::ReconciliationMethod::TaggedSymbol),
              reconciliation_rule_variables: T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]),
              remittance_information: T.nilable(String),
              statement_descriptor: T.nilable(String),
              status: ModernTreasury::Models::ExpectedPayment::Status::TaggedSymbol,
              transaction_id: T.nilable(String),
              transaction_line_item_id: T.nilable(String),
              type: T.nilable(ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol),
              updated_at: Time
            }
          )
      end
      def to_hash
      end

      # One of credit or debit. When you are receiving money, use credit. When you are
      #   being charged, use debit.
      module Direction
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::ExpectedPayment::Direction) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::ExpectedPayment::Direction::TaggedSymbol) }

        CREDIT = T.let(:credit, ModernTreasury::Models::ExpectedPayment::Direction::TaggedSymbol)
        DEBIT = T.let(:debit, ModernTreasury::Models::ExpectedPayment::Direction::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::ExpectedPayment::Direction::TaggedSymbol]) }
        def self.values
        end
      end

      # One of manual if this expected payment was manually reconciled in the dashboard,
      #   automatic if it was automatically reconciled by Modern Treasury, or null if it
      #   is unreconciled.
      module ReconciliationMethod
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::ExpectedPayment::ReconciliationMethod) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::ExpectedPayment::ReconciliationMethod::TaggedSymbol) }

        AUTOMATIC =
          T.let(:automatic, ModernTreasury::Models::ExpectedPayment::ReconciliationMethod::TaggedSymbol)
        MANUAL = T.let(:manual, ModernTreasury::Models::ExpectedPayment::ReconciliationMethod::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::ExpectedPayment::ReconciliationMethod::TaggedSymbol]) }
        def self.values
        end
      end

      # One of unreconciled, partially_reconciled, reconciled, or archived.
      module Status
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::ExpectedPayment::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::ExpectedPayment::Status::TaggedSymbol) }

        ARCHIVED = T.let(:archived, ModernTreasury::Models::ExpectedPayment::Status::TaggedSymbol)
        PARTIALLY_RECONCILED =
          T.let(:partially_reconciled, ModernTreasury::Models::ExpectedPayment::Status::TaggedSymbol)
        RECONCILED = T.let(:reconciled, ModernTreasury::Models::ExpectedPayment::Status::TaggedSymbol)
        UNRECONCILED = T.let(:unreconciled, ModernTreasury::Models::ExpectedPayment::Status::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::ExpectedPayment::Status::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
