# typed: strong

module ModernTreasury
  module Models
    class ExpectedPayment < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::ExpectedPayment,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # The lowest amount this expected payment may be equal to. Value in specified
      # currency's smallest unit. e.g. $10 would be represented as 1000.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount_lower_bound

      # The amount reconciled for this expected payment. Value in specified currency's
      # smallest unit. e.g. $10 would be represented as 1000.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount_reconciled

      # One of credit or debit. Indicates whether amount_reconciled is a credit or debit
      # amount.
      sig do
        returns(
          T.nilable(
            ModernTreasury::ExpectedPayment::AmountReconciledDirection::TaggedSymbol
          )
        )
      end
      attr_accessor :amount_reconciled_direction

      # The amount that remains unreconciled for this expected payment. Value in
      # specified currency's smallest unit. e.g. $10 would be represented as 1000.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount_unreconciled

      # One of credit or debit. Indicates whether amount_unreconciled is a credit or
      # debit amount.
      sig do
        returns(
          T.nilable(
            ModernTreasury::ExpectedPayment::AmountUnreconciledDirection::TaggedSymbol
          )
        )
      end
      attr_accessor :amount_unreconciled_direction

      # The highest amount this expected payment may be equal to. Value in specified
      # currency's smallest unit. e.g. $10 would be represented as 1000.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount_upper_bound

      # The ID of the counterparty you expect for this payment.
      sig { returns(T.nilable(String)) }
      attr_accessor :counterparty_id

      sig { returns(Time) }
      attr_accessor :created_at

      sig do
        returns(
          T.nilable(ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        )
      end
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

      # An optional user-defined 180 character unique identifier.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

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
      sig { returns(T::Array[ModernTreasury::ReconciliationRule]) }
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

      # One of: ach, au_becs, bacs, book, check, eft, rtp, sepa, wire.
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
          amount_reconciled: T.nilable(Integer),
          amount_reconciled_direction:
            T.nilable(
              ModernTreasury::ExpectedPayment::AmountReconciledDirection::OrSymbol
            ),
          amount_unreconciled: T.nilable(Integer),
          amount_unreconciled_direction:
            T.nilable(
              ModernTreasury::ExpectedPayment::AmountUnreconciledDirection::OrSymbol
            ),
          amount_upper_bound: T.nilable(Integer),
          counterparty_id: T.nilable(String),
          created_at: Time,
          currency:
            T.nilable(ModernTreasury::ExpectedPayment::Currency::OrSymbol),
          date_lower_bound: T.nilable(Date),
          date_upper_bound: T.nilable(Date),
          description: T.nilable(String),
          direction:
            T.nilable(ModernTreasury::ExpectedPayment::Direction::OrSymbol),
          external_id: T.nilable(String),
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
            T::Array[ModernTreasury::ReconciliationRule::OrHash],
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
        # The amount reconciled for this expected payment. Value in specified currency's
        # smallest unit. e.g. $10 would be represented as 1000.
        amount_reconciled:,
        # One of credit or debit. Indicates whether amount_reconciled is a credit or debit
        # amount.
        amount_reconciled_direction:,
        # The amount that remains unreconciled for this expected payment. Value in
        # specified currency's smallest unit. e.g. $10 would be represented as 1000.
        amount_unreconciled:,
        # One of credit or debit. Indicates whether amount_unreconciled is a credit or
        # debit amount.
        amount_unreconciled_direction:,
        # The highest amount this expected payment may be equal to. Value in specified
        # currency's smallest unit. e.g. $10 would be represented as 1000.
        amount_upper_bound:,
        # The ID of the counterparty you expect for this payment.
        counterparty_id:,
        created_at:,
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
        # An optional user-defined 180 character unique identifier.
        external_id:,
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
        # One of: ach, au_becs, bacs, book, check, eft, rtp, sepa, wire.
        type:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount_lower_bound: T.nilable(Integer),
            amount_reconciled: T.nilable(Integer),
            amount_reconciled_direction:
              T.nilable(
                ModernTreasury::ExpectedPayment::AmountReconciledDirection::TaggedSymbol
              ),
            amount_unreconciled: T.nilable(Integer),
            amount_unreconciled_direction:
              T.nilable(
                ModernTreasury::ExpectedPayment::AmountUnreconciledDirection::TaggedSymbol
              ),
            amount_upper_bound: T.nilable(Integer),
            counterparty_id: T.nilable(String),
            created_at: Time,
            currency:
              T.nilable(
                ModernTreasury::ExpectedPayment::Currency::TaggedSymbol
              ),
            date_lower_bound: T.nilable(Date),
            date_upper_bound: T.nilable(Date),
            description: T.nilable(String),
            direction:
              T.nilable(
                ModernTreasury::ExpectedPayment::Direction::TaggedSymbol
              ),
            external_id: T.nilable(String),
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
              T::Array[ModernTreasury::ReconciliationRule],
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

      # One of credit or debit. Indicates whether amount_reconciled is a credit or debit
      # amount.
      module AmountReconciledDirection
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::ExpectedPayment::AmountReconciledDirection
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT =
          T.let(
            :credit,
            ModernTreasury::ExpectedPayment::AmountReconciledDirection::TaggedSymbol
          )
        DEBIT =
          T.let(
            :debit,
            ModernTreasury::ExpectedPayment::AmountReconciledDirection::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ExpectedPayment::AmountReconciledDirection::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # One of credit or debit. Indicates whether amount_unreconciled is a credit or
      # debit amount.
      module AmountUnreconciledDirection
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::ExpectedPayment::AmountUnreconciledDirection
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT =
          T.let(
            :credit,
            ModernTreasury::ExpectedPayment::AmountUnreconciledDirection::TaggedSymbol
          )
        DEBIT =
          T.let(
            :debit,
            ModernTreasury::ExpectedPayment::AmountUnreconciledDirection::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ExpectedPayment::AmountUnreconciledDirection::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Currency
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::ExpectedPayment::Currency)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AED =
          T.let(:AED, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        AFN =
          T.let(:AFN, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        ALL =
          T.let(:ALL, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        AMD =
          T.let(:AMD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        ANG =
          T.let(:ANG, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        AOA =
          T.let(:AOA, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        ARS =
          T.let(:ARS, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        AUD =
          T.let(:AUD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        AWG =
          T.let(:AWG, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        AZN =
          T.let(:AZN, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        BAM =
          T.let(:BAM, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        BBD =
          T.let(:BBD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        BCH =
          T.let(:BCH, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        BDT =
          T.let(:BDT, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        BGN =
          T.let(:BGN, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        BHD =
          T.let(:BHD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        BIF =
          T.let(:BIF, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        BMD =
          T.let(:BMD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        BND =
          T.let(:BND, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        BOB =
          T.let(:BOB, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        BRL =
          T.let(:BRL, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        BSD =
          T.let(:BSD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        BTC =
          T.let(:BTC, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        BTN =
          T.let(:BTN, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        BWP =
          T.let(:BWP, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        BYN =
          T.let(:BYN, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        BYR =
          T.let(:BYR, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        BZD =
          T.let(:BZD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        CAD =
          T.let(:CAD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        CDF =
          T.let(:CDF, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        CHF =
          T.let(:CHF, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        CLF =
          T.let(:CLF, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        CLP =
          T.let(:CLP, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        CNH =
          T.let(:CNH, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        CNY =
          T.let(:CNY, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        COP =
          T.let(:COP, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        CRC =
          T.let(:CRC, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        CUC =
          T.let(:CUC, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        CUP =
          T.let(:CUP, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        CVE =
          T.let(:CVE, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        CZK =
          T.let(:CZK, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        DJF =
          T.let(:DJF, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        DKK =
          T.let(:DKK, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        DOP =
          T.let(:DOP, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        DZD =
          T.let(:DZD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        EEK =
          T.let(:EEK, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        EGP =
          T.let(:EGP, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        ERN =
          T.let(:ERN, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        ETB =
          T.let(:ETB, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        ETH =
          T.let(:ETH, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        EUR =
          T.let(:EUR, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        EURC =
          T.let(:EURC, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        FJD =
          T.let(:FJD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        FKP =
          T.let(:FKP, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        GBP =
          T.let(:GBP, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        GBX =
          T.let(:GBX, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        GEL =
          T.let(:GEL, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        GGP =
          T.let(:GGP, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        GHS =
          T.let(:GHS, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        GIP =
          T.let(:GIP, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        GMD =
          T.let(:GMD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        GNF =
          T.let(:GNF, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        GTQ =
          T.let(:GTQ, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        GYD =
          T.let(:GYD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        HKD =
          T.let(:HKD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        HNL =
          T.let(:HNL, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        HRK =
          T.let(:HRK, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        HTG =
          T.let(:HTG, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        HUF =
          T.let(:HUF, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        IDR =
          T.let(:IDR, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        ILS =
          T.let(:ILS, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        IMP =
          T.let(:IMP, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        INR =
          T.let(:INR, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        IQD =
          T.let(:IQD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        IRR =
          T.let(:IRR, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        ISK =
          T.let(:ISK, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        JEP =
          T.let(:JEP, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        JMD =
          T.let(:JMD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        JOD =
          T.let(:JOD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        JPY =
          T.let(:JPY, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        KES =
          T.let(:KES, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        KGS =
          T.let(:KGS, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        KHR =
          T.let(:KHR, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        KMF =
          T.let(:KMF, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        KPW =
          T.let(:KPW, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        KRW =
          T.let(:KRW, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        KWD =
          T.let(:KWD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        KYD =
          T.let(:KYD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        KZT =
          T.let(:KZT, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        LAK =
          T.let(:LAK, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        LBP =
          T.let(:LBP, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        LKR =
          T.let(:LKR, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        LRD =
          T.let(:LRD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        LSL =
          T.let(:LSL, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        LTL =
          T.let(:LTL, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        LVL =
          T.let(:LVL, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        LYD =
          T.let(:LYD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        MAD =
          T.let(:MAD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        MDL =
          T.let(:MDL, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        MGA =
          T.let(:MGA, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        MKD =
          T.let(:MKD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        MMK =
          T.let(:MMK, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        MNT =
          T.let(:MNT, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        MOP =
          T.let(:MOP, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        MRO =
          T.let(:MRO, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        MRU =
          T.let(:MRU, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        MTL =
          T.let(:MTL, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        MUR =
          T.let(:MUR, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        MVR =
          T.let(:MVR, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        MWK =
          T.let(:MWK, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        MXN =
          T.let(:MXN, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        MYR =
          T.let(:MYR, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        MZN =
          T.let(:MZN, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        NAD =
          T.let(:NAD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        NGN =
          T.let(:NGN, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        NIO =
          T.let(:NIO, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        NOK =
          T.let(:NOK, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        NPR =
          T.let(:NPR, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        NZD =
          T.let(:NZD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        OMR =
          T.let(:OMR, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        OP = T.let(:OP, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        PAB =
          T.let(:PAB, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        PEN =
          T.let(:PEN, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        PGK =
          T.let(:PGK, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        PHP =
          T.let(:PHP, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        PKR =
          T.let(:PKR, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        PLN =
          T.let(:PLN, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        PYG =
          T.let(:PYG, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        PYUSD =
          T.let(:PYUSD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        QAR =
          T.let(:QAR, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        RON =
          T.let(:RON, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        RSD =
          T.let(:RSD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        RUB =
          T.let(:RUB, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        RWF =
          T.let(:RWF, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        SAR =
          T.let(:SAR, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        SBD =
          T.let(:SBD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        SCR =
          T.let(:SCR, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        SDG =
          T.let(:SDG, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        SEK =
          T.let(:SEK, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        SGD =
          T.let(:SGD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        SHP =
          T.let(:SHP, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        SKK =
          T.let(:SKK, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        SLE =
          T.let(:SLE, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        SLL =
          T.let(:SLL, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        SOS =
          T.let(:SOS, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        SRD =
          T.let(:SRD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        SSP =
          T.let(:SSP, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        STD =
          T.let(:STD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        STN =
          T.let(:STN, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        SVC =
          T.let(:SVC, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        SYP =
          T.let(:SYP, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        SZL =
          T.let(:SZL, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        THB =
          T.let(:THB, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        TJS =
          T.let(:TJS, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        TMM =
          T.let(:TMM, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        TMT =
          T.let(:TMT, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        TND =
          T.let(:TND, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        TOP =
          T.let(:TOP, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        TRY =
          T.let(:TRY, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        TTD =
          T.let(:TTD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        TWD =
          T.let(:TWD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        TZS =
          T.let(:TZS, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        UAH =
          T.let(:UAH, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        UGX =
          T.let(:UGX, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        USD =
          T.let(:USD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        USDC =
          T.let(:USDC, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        USDG =
          T.let(:USDG, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        USDT =
          T.let(:USDT, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        UYU =
          T.let(:UYU, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        UZS =
          T.let(:UZS, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        VEF =
          T.let(:VEF, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        VES =
          T.let(:VES, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        VND =
          T.let(:VND, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        VUV =
          T.let(:VUV, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        WST =
          T.let(:WST, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        XAF =
          T.let(:XAF, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        XAG =
          T.let(:XAG, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        XAU =
          T.let(:XAU, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        XBA =
          T.let(:XBA, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        XBB =
          T.let(:XBB, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        XBC =
          T.let(:XBC, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        XBD =
          T.let(:XBD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        XCD =
          T.let(:XCD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        XCG =
          T.let(:XCG, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        XDR =
          T.let(:XDR, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        XFU =
          T.let(:XFU, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        XOF =
          T.let(:XOF, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        XPD =
          T.let(:XPD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        XPF =
          T.let(:XPF, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        XPT =
          T.let(:XPT, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        XTS =
          T.let(:XTS, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        YER =
          T.let(:YER, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        ZAR =
          T.let(:ZAR, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        ZMK =
          T.let(:ZMK, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        ZMW =
          T.let(:ZMW, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        ZWD =
          T.let(:ZWD, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        ZWG =
          T.let(:ZWG, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        ZWL =
          T.let(:ZWL, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        ZWN =
          T.let(:ZWN, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)
        ZWR =
          T.let(:ZWR, ModernTreasury::ExpectedPayment::Currency::TaggedSymbol)

        sig do
          override.returns(
            T::Array[ModernTreasury::ExpectedPayment::Currency::TaggedSymbol]
          )
        end
        def self.values
        end
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
