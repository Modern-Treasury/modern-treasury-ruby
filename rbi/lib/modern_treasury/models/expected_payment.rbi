# typed: strong

module ModernTreasury
  module Models
    class ExpectedPayment < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The lowest amount this expected payment may be equal to. Value in specified
      #   currency's smallest unit. e.g. $10 would be represented as 1000.
      sig { returns(T.nilable(Integer)) }
      def amount_lower_bound
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount_lower_bound=(_)
      end

      # The highest amount this expected payment may be equal to. Value in specified
      #   currency's smallest unit. e.g. $10 would be represented as 1000.
      sig { returns(T.nilable(Integer)) }
      def amount_upper_bound
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount_upper_bound=(_)
      end

      # The ID of the counterparty you expect for this payment.
      sig { returns(T.nilable(String)) }
      def counterparty_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def counterparty_id=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # Must conform to ISO 4217. Defaults to the currency of the internal account.
      sig { returns(T.nilable(ModernTreasury::Models::Currency::TaggedSymbol)) }
      def currency
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::Currency::TaggedSymbol))
          .returns(T.nilable(ModernTreasury::Models::Currency::TaggedSymbol))
      end
      def currency=(_)
      end

      # The earliest date the payment may come in. Format: yyyy-mm-dd
      sig { returns(T.nilable(Date)) }
      def date_lower_bound
      end

      sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
      def date_lower_bound=(_)
      end

      # The latest date the payment may come in. Format: yyyy-mm-dd
      sig { returns(T.nilable(Date)) }
      def date_upper_bound
      end

      sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
      def date_upper_bound=(_)
      end

      # An optional description for internal use.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      # One of credit or debit. When you are receiving money, use credit. When you are
      #   being charged, use debit.
      sig { returns(T.nilable(ModernTreasury::Models::ExpectedPayment::Direction::TaggedSymbol)) }
      def direction
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::ExpectedPayment::Direction::TaggedSymbol))
          .returns(T.nilable(ModernTreasury::Models::ExpectedPayment::Direction::TaggedSymbol))
      end
      def direction=(_)
      end

      # The ID of the Internal Account for the expected payment.
      sig { returns(T.nilable(String)) }
      def internal_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def internal_account_id=(_)
      end

      # The ID of the ledger transaction linked to the expected payment.
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

      # The reconciliation filters you have for this payment.
      sig { returns(T.nilable(T.anything)) }
      def reconciliation_filters
      end

      sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
      def reconciliation_filters=(_)
      end

      # The reconciliation groups you have for this payment.
      sig { returns(T.nilable(T.anything)) }
      def reconciliation_groups
      end

      sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
      def reconciliation_groups=(_)
      end

      # One of manual if this expected payment was manually reconciled in the dashboard,
      #   automatic if it was automatically reconciled by Modern Treasury, or null if it
      #   is unreconciled.
      sig { returns(T.nilable(ModernTreasury::Models::ExpectedPayment::ReconciliationMethod::TaggedSymbol)) }
      def reconciliation_method
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::ExpectedPayment::ReconciliationMethod::TaggedSymbol))
          .returns(T.nilable(ModernTreasury::Models::ExpectedPayment::ReconciliationMethod::TaggedSymbol))
      end
      def reconciliation_method=(_)
      end

      # An array of reconciliation rule variables for this payment.
      sig { returns(T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule])) }
      def reconciliation_rule_variables
      end

      sig do
        params(_: T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]))
          .returns(T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]))
      end
      def reconciliation_rule_variables=(_)
      end

      # For `ach`, this field will be passed through on an addenda record. For `wire`
      #   payments the field will be passed through as the "Originator to Beneficiary
      #   Information", also known as OBI or Fedwire tag 6000.
      sig { returns(T.nilable(String)) }
      def remittance_information
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def remittance_information=(_)
      end

      # The statement description you expect to see on the transaction. For ACH
      #   payments, this will be the full line item passed from the bank. For wire
      #   payments, this will be the OBI field on the wire. For check payments, this will
      #   be the memo field.
      sig { returns(T.nilable(String)) }
      def statement_descriptor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def statement_descriptor=(_)
      end

      # One of unreconciled, partially_reconciled, reconciled, or archived.
      sig { returns(ModernTreasury::Models::ExpectedPayment::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: ModernTreasury::Models::ExpectedPayment::Status::TaggedSymbol)
          .returns(ModernTreasury::Models::ExpectedPayment::Status::TaggedSymbol)
      end
      def status=(_)
      end

      # The ID of the Transaction this expected payment object has been matched to.
      sig { returns(T.nilable(String)) }
      def transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def transaction_id=(_)
      end

      # The ID of the Transaction Line Item this expected payment has been matched to.
      sig { returns(T.nilable(String)) }
      def transaction_line_item_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def transaction_line_item_id=(_)
      end

      # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
      #   sepa, signet, wire.
      sig { returns(T.nilable(ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)) }
      def type
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol))
          .returns(T.nilable(ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol))
      end
      def type=(_)
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
          T.type_alias { T.any(Symbol, ModernTreasury::Models::ExpectedPayment::Direction::TaggedSymbol) }

        CREDIT = T.let(:credit, ModernTreasury::Models::ExpectedPayment::Direction::TaggedSymbol)
        DEBIT = T.let(:debit, ModernTreasury::Models::ExpectedPayment::Direction::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::ExpectedPayment::Direction::TaggedSymbol]) }
          def values
          end
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
          T.type_alias { T.any(Symbol, ModernTreasury::Models::ExpectedPayment::ReconciliationMethod::TaggedSymbol) }

        AUTOMATIC =
          T.let(:automatic, ModernTreasury::Models::ExpectedPayment::ReconciliationMethod::TaggedSymbol)
        MANUAL = T.let(:manual, ModernTreasury::Models::ExpectedPayment::ReconciliationMethod::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::ExpectedPayment::ReconciliationMethod::TaggedSymbol]) }
          def values
          end
        end
      end

      # One of unreconciled, partially_reconciled, reconciled, or archived.
      module Status
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::ExpectedPayment::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, ModernTreasury::Models::ExpectedPayment::Status::TaggedSymbol) }

        ARCHIVED = T.let(:archived, ModernTreasury::Models::ExpectedPayment::Status::TaggedSymbol)
        PARTIALLY_RECONCILED =
          T.let(:partially_reconciled, ModernTreasury::Models::ExpectedPayment::Status::TaggedSymbol)
        RECONCILED = T.let(:reconciled, ModernTreasury::Models::ExpectedPayment::Status::TaggedSymbol)
        UNRECONCILED = T.let(:unreconciled, ModernTreasury::Models::ExpectedPayment::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::ExpectedPayment::Status::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
