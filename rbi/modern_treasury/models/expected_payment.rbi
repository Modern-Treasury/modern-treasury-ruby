# typed: strong

module ModernTreasury
  module Models
    class ExpectedPayment < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      # The lowest amount this expected payment may be equal to. Value in specified
      # currency's smallest unit. e.g. $10 would be represented as 1000.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount_lower_bound

      # The highest amount this expected payment may be equal to. Value in specified
      # currency's smallest unit. e.g. $10 would be represented as 1000.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount_upper_bound

      # The ID of the counterparty you expect for this payment.
      sig { returns(T.nilable(String)) }
      attr_accessor :counterparty_id

      sig { returns(Time) }
      attr_accessor :created_at

      # Must conform to ISO 4217. Defaults to the currency of the internal account.
      sig { returns(T.nilable(ModernTreasury::Currency::TaggedSymbol)) }
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
      # being charged, use debit.
      sig do
        returns(
          T.nilable(ModernTreasury::ExpectedPayment::Direction::TaggedSymbol)
        )
      end
      attr_accessor :direction

      # The ID of the Internal Account for the expected payment.
      sig { returns(T.nilable(String)) }
      attr_accessor :internal_account_id

      # The ID of the ledger transaction linked to the expected payment.
      sig { returns(T.nilable(String)) }
      attr_accessor :ledger_transaction_id

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
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
      # automatic if it was automatically reconciled by Modern Treasury, or null if it
      # is unreconciled.
      sig do
        returns(
          T.nilable(
            ModernTreasury::ExpectedPayment::ReconciliationMethod::TaggedSymbol
          )
        )
      end
      attr_accessor :reconciliation_method

      # An array of reconciliation rule variables for this payment.
      sig { returns(T.nilable(T::Array[ModernTreasury::ReconciliationRule])) }
      attr_accessor :reconciliation_rule_variables

      # For `ach`, this field will be passed through on an addenda record. For `wire`
      # payments the field will be passed through as the "Originator to Beneficiary
      # Information", also known as OBI or Fedwire tag 6000.
      sig { returns(T.nilable(String)) }
      attr_accessor :remittance_information

      # The statement description you expect to see on the transaction. For ACH
      # payments, this will be the full line item passed from the bank. For wire
      # payments, this will be the OBI field on the wire. For check payments, this will
      # be the memo field.
      sig { returns(T.nilable(String)) }
      attr_accessor :statement_descriptor

      # One of unreconciled, partially_reconciled, reconciled, or archived.
      sig { returns(ModernTreasury::ExpectedPayment::Status::TaggedSymbol) }
      attr_accessor :status

      # The ID of the Transaction this expected payment object has been matched to.
      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_id

      # The ID of the Transaction Line Item this expected payment has been matched to.
      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_line_item_id

      # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
      # sepa, signet, wire.
      sig do
        returns(T.nilable(ModernTreasury::ExpectedPaymentType::TaggedSymbol))
      end
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
          currency: T.nilable(ModernTreasury::Currency::OrSymbol),
          date_lower_bound: T.nilable(Date),
          date_upper_bound: T.nilable(Date),
          description: T.nilable(String),
          direction:
            T.nilable(ModernTreasury::ExpectedPayment::Direction::OrSymbol),
          internal_account_id: T.nilable(String),
          ledger_transaction_id: T.nilable(String),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          reconciliation_filters: T.nilable(T.anything),
          reconciliation_groups: T.nilable(T.anything),
          reconciliation_method:
            T.nilable(
              ModernTreasury::ExpectedPayment::ReconciliationMethod::OrSymbol
            ),
          reconciliation_rule_variables:
            T.nilable(T::Array[ModernTreasury::ReconciliationRule::OrHash]),
          remittance_information: T.nilable(String),
          statement_descriptor: T.nilable(String),
          status: ModernTreasury::ExpectedPayment::Status::OrSymbol,
          transaction_id: T.nilable(String),
          transaction_line_item_id: T.nilable(String),
          type: T.nilable(ModernTreasury::ExpectedPaymentType::OrSymbol),
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The lowest amount this expected payment may be equal to. Value in specified
        # currency's smallest unit. e.g. $10 would be represented as 1000.
        amount_lower_bound:,
        # The highest amount this expected payment may be equal to. Value in specified
        # currency's smallest unit. e.g. $10 would be represented as 1000.
        amount_upper_bound:,
        # The ID of the counterparty you expect for this payment.
        counterparty_id:,
        created_at:,
        # Must conform to ISO 4217. Defaults to the currency of the internal account.
        currency:,
        # The earliest date the payment may come in. Format: yyyy-mm-dd
        date_lower_bound:,
        # The latest date the payment may come in. Format: yyyy-mm-dd
        date_upper_bound:,
        # An optional description for internal use.
        description:,
        # One of credit or debit. When you are receiving money, use credit. When you are
        # being charged, use debit.
        direction:,
        # The ID of the Internal Account for the expected payment.
        internal_account_id:,
        # The ID of the ledger transaction linked to the expected payment.
        ledger_transaction_id:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata:,
        object:,
        # The reconciliation filters you have for this payment.
        reconciliation_filters:,
        # The reconciliation groups you have for this payment.
        reconciliation_groups:,
        # One of manual if this expected payment was manually reconciled in the dashboard,
        # automatic if it was automatically reconciled by Modern Treasury, or null if it
        # is unreconciled.
        reconciliation_method:,
        # An array of reconciliation rule variables for this payment.
        reconciliation_rule_variables:,
        # For `ach`, this field will be passed through on an addenda record. For `wire`
        # payments the field will be passed through as the "Originator to Beneficiary
        # Information", also known as OBI or Fedwire tag 6000.
        remittance_information:,
        # The statement description you expect to see on the transaction. For ACH
        # payments, this will be the full line item passed from the bank. For wire
        # payments, this will be the OBI field on the wire. For check payments, this will
        # be the memo field.
        statement_descriptor:,
        # One of unreconciled, partially_reconciled, reconciled, or archived.
        status:,
        # The ID of the Transaction this expected payment object has been matched to.
        transaction_id:,
        # The ID of the Transaction Line Item this expected payment has been matched to.
        transaction_line_item_id:,
        # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
        # sepa, signet, wire.
        type:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount_lower_bound: T.nilable(Integer),
            amount_upper_bound: T.nilable(Integer),
            counterparty_id: T.nilable(String),
            created_at: Time,
            currency: T.nilable(ModernTreasury::Currency::TaggedSymbol),
            date_lower_bound: T.nilable(Date),
            date_upper_bound: T.nilable(Date),
            description: T.nilable(String),
            direction:
              T.nilable(
                ModernTreasury::ExpectedPayment::Direction::TaggedSymbol
              ),
            internal_account_id: T.nilable(String),
            ledger_transaction_id: T.nilable(String),
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            object: String,
            reconciliation_filters: T.nilable(T.anything),
            reconciliation_groups: T.nilable(T.anything),
            reconciliation_method:
              T.nilable(
                ModernTreasury::ExpectedPayment::ReconciliationMethod::TaggedSymbol
              ),
            reconciliation_rule_variables:
              T.nilable(T::Array[ModernTreasury::ReconciliationRule]),
            remittance_information: T.nilable(String),
            statement_descriptor: T.nilable(String),
            status: ModernTreasury::ExpectedPayment::Status::TaggedSymbol,
            transaction_id: T.nilable(String),
            transaction_line_item_id: T.nilable(String),
            type: T.nilable(ModernTreasury::ExpectedPaymentType::TaggedSymbol),
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      # One of credit or debit. When you are receiving money, use credit. When you are
      # being charged, use debit.
      module Direction
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::ExpectedPayment::Direction)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT =
          T.let(
            :credit,
            ModernTreasury::ExpectedPayment::Direction::TaggedSymbol
          )
        DEBIT =
          T.let(
            :debit,
            ModernTreasury::ExpectedPayment::Direction::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::ExpectedPayment::Direction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # One of manual if this expected payment was manually reconciled in the dashboard,
      # automatic if it was automatically reconciled by Modern Treasury, or null if it
      # is unreconciled.
      module ReconciliationMethod
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::ExpectedPayment::ReconciliationMethod)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTOMATIC =
          T.let(
            :automatic,
            ModernTreasury::ExpectedPayment::ReconciliationMethod::TaggedSymbol
          )
        MANUAL =
          T.let(
            :manual,
            ModernTreasury::ExpectedPayment::ReconciliationMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ExpectedPayment::ReconciliationMethod::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # One of unreconciled, partially_reconciled, reconciled, or archived.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::ExpectedPayment::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ARCHIVED =
          T.let(
            :archived,
            ModernTreasury::ExpectedPayment::Status::TaggedSymbol
          )
        PARTIALLY_RECONCILED =
          T.let(
            :partially_reconciled,
            ModernTreasury::ExpectedPayment::Status::TaggedSymbol
          )
        RECONCILED =
          T.let(
            :reconciled,
            ModernTreasury::ExpectedPayment::Status::TaggedSymbol
          )
        UNRECONCILED =
          T.let(
            :unreconciled,
            ModernTreasury::ExpectedPayment::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::ExpectedPayment::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
