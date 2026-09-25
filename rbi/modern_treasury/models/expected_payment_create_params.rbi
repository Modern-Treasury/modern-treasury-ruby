# typed: strong

module ModernTreasury
  module Models
    class ExpectedPaymentCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::ExpectedPaymentCreateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

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
            ModernTreasury::ExpectedPaymentCreateParams::AmountReconciledDirection::OrSymbol
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
            ModernTreasury::ExpectedPaymentCreateParams::AmountUnreconciledDirection::OrSymbol
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

      sig do
        returns(
          T.nilable(
            ModernTreasury::ExpectedPaymentCreateParams::Currency::OrSymbol
          )
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
          T.nilable(
            ModernTreasury::ExpectedPaymentCreateParams::Direction::OrSymbol
          )
        )
      end
      attr_accessor :direction

      # An optional user-defined 180 character unique identifier.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # The ID of the Internal Account for the expected payment.
      sig { returns(T.nilable(String)) }
      attr_accessor :internal_account_id

      # Specifies a ledger transaction object that will be created with the expected
      # payment. If the ledger transaction cannot be created, then the expected payment
      # creation will fail. The resulting ledger transaction will mirror the status of
      # the expected payment.
      sig { returns(T.nilable(ModernTreasury::LedgerTransactionCreateRequest)) }
      attr_reader :ledger_transaction

      sig do
        params(
          ledger_transaction:
            ModernTreasury::LedgerTransactionCreateRequest::OrHash
        ).void
      end
      attr_writer :ledger_transaction

      # Either ledger_transaction or ledger_transaction_id can be provided. Only a
      # pending ledger transaction can be attached upon expected payment creation. Once
      # the expected payment is created, the status of the ledger transaction tracks the
      # expected payment automatically.
      sig { returns(T.nilable(String)) }
      attr_reader :ledger_transaction_id

      sig { params(ledger_transaction_id: String).void }
      attr_writer :ledger_transaction_id

      sig do
        returns(
          T.nilable(
            T::Array[ModernTreasury::ExpectedPaymentCreateParams::LineItem]
          )
        )
      end
      attr_reader :line_items

      sig do
        params(
          line_items:
            T::Array[
              ModernTreasury::ExpectedPaymentCreateParams::LineItem::OrHash
            ]
        ).void
      end
      attr_writer :line_items

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # The reconciliation filters you have for this payment.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :reconciliation_filters

      # The reconciliation groups you have for this payment.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :reconciliation_groups

      # An array of reconciliation rule variables for this payment.
      sig { returns(T.nilable(T::Array[ModernTreasury::ReconciliationRule])) }
      attr_reader :reconciliation_rule_variables

      sig do
        params(
          reconciliation_rule_variables:
            T::Array[ModernTreasury::ReconciliationRule::OrHash]
        ).void
      end
      attr_writer :reconciliation_rule_variables

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

      # One of: ach, au_becs, bacs, book, check, eft, rtp, sepa, wire.
      sig { returns(T.nilable(ModernTreasury::ExpectedPaymentType::OrSymbol)) }
      attr_accessor :type

      sig do
        params(
          amount_lower_bound: T.nilable(Integer),
          amount_reconciled: T.nilable(Integer),
          amount_reconciled_direction:
            T.nilable(
              ModernTreasury::ExpectedPaymentCreateParams::AmountReconciledDirection::OrSymbol
            ),
          amount_unreconciled: T.nilable(Integer),
          amount_unreconciled_direction:
            T.nilable(
              ModernTreasury::ExpectedPaymentCreateParams::AmountUnreconciledDirection::OrSymbol
            ),
          amount_upper_bound: T.nilable(Integer),
          counterparty_id: T.nilable(String),
          currency:
            T.nilable(
              ModernTreasury::ExpectedPaymentCreateParams::Currency::OrSymbol
            ),
          date_lower_bound: T.nilable(Date),
          date_upper_bound: T.nilable(Date),
          description: T.nilable(String),
          direction:
            T.nilable(
              ModernTreasury::ExpectedPaymentCreateParams::Direction::OrSymbol
            ),
          external_id: T.nilable(String),
          internal_account_id: T.nilable(String),
          ledger_transaction:
            ModernTreasury::LedgerTransactionCreateRequest::OrHash,
          ledger_transaction_id: String,
          line_items:
            T::Array[
              ModernTreasury::ExpectedPaymentCreateParams::LineItem::OrHash
            ],
          metadata: T::Hash[Symbol, String],
          reconciliation_filters: T.nilable(T.anything),
          reconciliation_groups: T.nilable(T.anything),
          reconciliation_rule_variables:
            T::Array[ModernTreasury::ReconciliationRule::OrHash],
          remittance_information: T.nilable(String),
          statement_descriptor: T.nilable(String),
          type: T.nilable(ModernTreasury::ExpectedPaymentType::OrSymbol),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The lowest amount this expected payment may be equal to. Value in specified
        # currency's smallest unit. e.g. $10 would be represented as 1000.
        amount_lower_bound: nil,
        # The amount reconciled for this expected payment. Value in specified currency's
        # smallest unit. e.g. $10 would be represented as 1000.
        amount_reconciled: nil,
        # One of credit or debit. Indicates whether amount_reconciled is a credit or debit
        # amount.
        amount_reconciled_direction: nil,
        # The amount that remains unreconciled for this expected payment. Value in
        # specified currency's smallest unit. e.g. $10 would be represented as 1000.
        amount_unreconciled: nil,
        # One of credit or debit. Indicates whether amount_unreconciled is a credit or
        # debit amount.
        amount_unreconciled_direction: nil,
        # The highest amount this expected payment may be equal to. Value in specified
        # currency's smallest unit. e.g. $10 would be represented as 1000.
        amount_upper_bound: nil,
        # The ID of the counterparty you expect for this payment.
        counterparty_id: nil,
        currency: nil,
        # The earliest date the payment may come in. Format: yyyy-mm-dd
        date_lower_bound: nil,
        # The latest date the payment may come in. Format: yyyy-mm-dd
        date_upper_bound: nil,
        # An optional description for internal use.
        description: nil,
        # One of credit or debit. When you are receiving money, use credit. When you are
        # being charged, use debit.
        direction: nil,
        # An optional user-defined 180 character unique identifier.
        external_id: nil,
        # The ID of the Internal Account for the expected payment.
        internal_account_id: nil,
        # Specifies a ledger transaction object that will be created with the expected
        # payment. If the ledger transaction cannot be created, then the expected payment
        # creation will fail. The resulting ledger transaction will mirror the status of
        # the expected payment.
        ledger_transaction: nil,
        # Either ledger_transaction or ledger_transaction_id can be provided. Only a
        # pending ledger transaction can be attached upon expected payment creation. Once
        # the expected payment is created, the status of the ledger transaction tracks the
        # expected payment automatically.
        ledger_transaction_id: nil,
        line_items: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        # The reconciliation filters you have for this payment.
        reconciliation_filters: nil,
        # The reconciliation groups you have for this payment.
        reconciliation_groups: nil,
        # An array of reconciliation rule variables for this payment.
        reconciliation_rule_variables: nil,
        # For `ach`, this field will be passed through on an addenda record. For `wire`
        # payments the field will be passed through as the "Originator to Beneficiary
        # Information", also known as OBI or Fedwire tag 6000.
        remittance_information: nil,
        # The statement description you expect to see on the transaction. For ACH
        # payments, this will be the full line item passed from the bank. For wire
        # payments, this will be the OBI field on the wire. For check payments, this will
        # be the memo field.
        statement_descriptor: nil,
        # One of: ach, au_becs, bacs, book, check, eft, rtp, sepa, wire.
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            amount_lower_bound: T.nilable(Integer),
            amount_reconciled: T.nilable(Integer),
            amount_reconciled_direction:
              T.nilable(
                ModernTreasury::ExpectedPaymentCreateParams::AmountReconciledDirection::OrSymbol
              ),
            amount_unreconciled: T.nilable(Integer),
            amount_unreconciled_direction:
              T.nilable(
                ModernTreasury::ExpectedPaymentCreateParams::AmountUnreconciledDirection::OrSymbol
              ),
            amount_upper_bound: T.nilable(Integer),
            counterparty_id: T.nilable(String),
            currency:
              T.nilable(
                ModernTreasury::ExpectedPaymentCreateParams::Currency::OrSymbol
              ),
            date_lower_bound: T.nilable(Date),
            date_upper_bound: T.nilable(Date),
            description: T.nilable(String),
            direction:
              T.nilable(
                ModernTreasury::ExpectedPaymentCreateParams::Direction::OrSymbol
              ),
            external_id: T.nilable(String),
            internal_account_id: T.nilable(String),
            ledger_transaction: ModernTreasury::LedgerTransactionCreateRequest,
            ledger_transaction_id: String,
            line_items:
              T::Array[ModernTreasury::ExpectedPaymentCreateParams::LineItem],
            metadata: T::Hash[Symbol, String],
            reconciliation_filters: T.nilable(T.anything),
            reconciliation_groups: T.nilable(T.anything),
            reconciliation_rule_variables:
              T::Array[ModernTreasury::ReconciliationRule],
            remittance_information: T.nilable(String),
            statement_descriptor: T.nilable(String),
            type: T.nilable(ModernTreasury::ExpectedPaymentType::OrSymbol),
            request_options: ModernTreasury::RequestOptions
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
              ModernTreasury::ExpectedPaymentCreateParams::AmountReconciledDirection
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT =
          T.let(
            :credit,
            ModernTreasury::ExpectedPaymentCreateParams::AmountReconciledDirection::TaggedSymbol
          )
        DEBIT =
          T.let(
            :debit,
            ModernTreasury::ExpectedPaymentCreateParams::AmountReconciledDirection::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ExpectedPaymentCreateParams::AmountReconciledDirection::TaggedSymbol
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
              ModernTreasury::ExpectedPaymentCreateParams::AmountUnreconciledDirection
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT =
          T.let(
            :credit,
            ModernTreasury::ExpectedPaymentCreateParams::AmountUnreconciledDirection::TaggedSymbol
          )
        DEBIT =
          T.let(
            :debit,
            ModernTreasury::ExpectedPaymentCreateParams::AmountUnreconciledDirection::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ExpectedPaymentCreateParams::AmountUnreconciledDirection::TaggedSymbol
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
            T.all(Symbol, ModernTreasury::ExpectedPaymentCreateParams::Currency)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AED =
          T.let(
            :AED,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        AFN =
          T.let(
            :AFN,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        ALL =
          T.let(
            :ALL,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        AMD =
          T.let(
            :AMD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        ANG =
          T.let(
            :ANG,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        AOA =
          T.let(
            :AOA,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        ARS =
          T.let(
            :ARS,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        AUD =
          T.let(
            :AUD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        AWG =
          T.let(
            :AWG,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        AZN =
          T.let(
            :AZN,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        BAM =
          T.let(
            :BAM,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        BBD =
          T.let(
            :BBD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        BCH =
          T.let(
            :BCH,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        BDT =
          T.let(
            :BDT,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        BGN =
          T.let(
            :BGN,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        BHD =
          T.let(
            :BHD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        BIF =
          T.let(
            :BIF,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        BMD =
          T.let(
            :BMD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        BND =
          T.let(
            :BND,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        BOB =
          T.let(
            :BOB,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        BRL =
          T.let(
            :BRL,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        BSD =
          T.let(
            :BSD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        BTC =
          T.let(
            :BTC,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        BTN =
          T.let(
            :BTN,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        BWP =
          T.let(
            :BWP,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        BYN =
          T.let(
            :BYN,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        BYR =
          T.let(
            :BYR,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        BZD =
          T.let(
            :BZD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        CAD =
          T.let(
            :CAD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        CDF =
          T.let(
            :CDF,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        CHF =
          T.let(
            :CHF,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        CLF =
          T.let(
            :CLF,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        CLP =
          T.let(
            :CLP,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        CNH =
          T.let(
            :CNH,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        CNY =
          T.let(
            :CNY,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        COP =
          T.let(
            :COP,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        CRC =
          T.let(
            :CRC,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        CUC =
          T.let(
            :CUC,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        CUP =
          T.let(
            :CUP,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        CVE =
          T.let(
            :CVE,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        CZK =
          T.let(
            :CZK,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        DJF =
          T.let(
            :DJF,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        DKK =
          T.let(
            :DKK,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        DOP =
          T.let(
            :DOP,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        DZD =
          T.let(
            :DZD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        EEK =
          T.let(
            :EEK,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        EGP =
          T.let(
            :EGP,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        ERN =
          T.let(
            :ERN,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        ETB =
          T.let(
            :ETB,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        ETH =
          T.let(
            :ETH,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        EUR =
          T.let(
            :EUR,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        EURC =
          T.let(
            :EURC,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        FJD =
          T.let(
            :FJD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        FKP =
          T.let(
            :FKP,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        GBP =
          T.let(
            :GBP,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        GBX =
          T.let(
            :GBX,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        GEL =
          T.let(
            :GEL,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        GGP =
          T.let(
            :GGP,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        GHS =
          T.let(
            :GHS,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        GIP =
          T.let(
            :GIP,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        GMD =
          T.let(
            :GMD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        GNF =
          T.let(
            :GNF,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        GTQ =
          T.let(
            :GTQ,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        GYD =
          T.let(
            :GYD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        HKD =
          T.let(
            :HKD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        HNL =
          T.let(
            :HNL,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        HRK =
          T.let(
            :HRK,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        HTG =
          T.let(
            :HTG,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        HUF =
          T.let(
            :HUF,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        IDR =
          T.let(
            :IDR,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        ILS =
          T.let(
            :ILS,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        IMP =
          T.let(
            :IMP,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        INR =
          T.let(
            :INR,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        IQD =
          T.let(
            :IQD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        IRR =
          T.let(
            :IRR,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        ISK =
          T.let(
            :ISK,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        JEP =
          T.let(
            :JEP,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        JMD =
          T.let(
            :JMD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        JOD =
          T.let(
            :JOD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        JPY =
          T.let(
            :JPY,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        KES =
          T.let(
            :KES,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        KGS =
          T.let(
            :KGS,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        KHR =
          T.let(
            :KHR,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        KMF =
          T.let(
            :KMF,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        KPW =
          T.let(
            :KPW,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        KRW =
          T.let(
            :KRW,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        KWD =
          T.let(
            :KWD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        KYD =
          T.let(
            :KYD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        KZT =
          T.let(
            :KZT,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        LAK =
          T.let(
            :LAK,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        LBP =
          T.let(
            :LBP,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        LKR =
          T.let(
            :LKR,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        LRD =
          T.let(
            :LRD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        LSL =
          T.let(
            :LSL,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        LTL =
          T.let(
            :LTL,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        LVL =
          T.let(
            :LVL,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        LYD =
          T.let(
            :LYD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        MAD =
          T.let(
            :MAD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        MDL =
          T.let(
            :MDL,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        MGA =
          T.let(
            :MGA,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        MKD =
          T.let(
            :MKD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        MMK =
          T.let(
            :MMK,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        MNT =
          T.let(
            :MNT,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        MOP =
          T.let(
            :MOP,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        MRO =
          T.let(
            :MRO,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        MRU =
          T.let(
            :MRU,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        MTL =
          T.let(
            :MTL,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        MUR =
          T.let(
            :MUR,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        MVR =
          T.let(
            :MVR,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        MWK =
          T.let(
            :MWK,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        MXN =
          T.let(
            :MXN,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        MYR =
          T.let(
            :MYR,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        MZN =
          T.let(
            :MZN,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        NAD =
          T.let(
            :NAD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        NGN =
          T.let(
            :NGN,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        NIO =
          T.let(
            :NIO,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        NOK =
          T.let(
            :NOK,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        NPR =
          T.let(
            :NPR,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        NZD =
          T.let(
            :NZD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        OMR =
          T.let(
            :OMR,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        OP =
          T.let(
            :OP,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        PAB =
          T.let(
            :PAB,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        PEN =
          T.let(
            :PEN,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        PGK =
          T.let(
            :PGK,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        PHP =
          T.let(
            :PHP,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        PKR =
          T.let(
            :PKR,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        PLN =
          T.let(
            :PLN,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        PYG =
          T.let(
            :PYG,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        PYUSD =
          T.let(
            :PYUSD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        QAR =
          T.let(
            :QAR,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        RON =
          T.let(
            :RON,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        RSD =
          T.let(
            :RSD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        RUB =
          T.let(
            :RUB,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        RWF =
          T.let(
            :RWF,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        SAR =
          T.let(
            :SAR,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        SBD =
          T.let(
            :SBD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        SCR =
          T.let(
            :SCR,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        SDG =
          T.let(
            :SDG,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        SEK =
          T.let(
            :SEK,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        SGD =
          T.let(
            :SGD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        SHP =
          T.let(
            :SHP,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        SKK =
          T.let(
            :SKK,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        SLE =
          T.let(
            :SLE,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        SLL =
          T.let(
            :SLL,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        SOS =
          T.let(
            :SOS,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        SRD =
          T.let(
            :SRD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        SSP =
          T.let(
            :SSP,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        STD =
          T.let(
            :STD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        STN =
          T.let(
            :STN,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        SVC =
          T.let(
            :SVC,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        SYP =
          T.let(
            :SYP,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        SZL =
          T.let(
            :SZL,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        THB =
          T.let(
            :THB,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        TJS =
          T.let(
            :TJS,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        TMM =
          T.let(
            :TMM,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        TMT =
          T.let(
            :TMT,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        TND =
          T.let(
            :TND,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        TOP =
          T.let(
            :TOP,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        TRY =
          T.let(
            :TRY,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        TTD =
          T.let(
            :TTD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        TWD =
          T.let(
            :TWD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        TZS =
          T.let(
            :TZS,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        UAH =
          T.let(
            :UAH,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        UGX =
          T.let(
            :UGX,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        USD =
          T.let(
            :USD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        USDC =
          T.let(
            :USDC,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        USDG =
          T.let(
            :USDG,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        USDT =
          T.let(
            :USDT,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        UYU =
          T.let(
            :UYU,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        UZS =
          T.let(
            :UZS,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        VEF =
          T.let(
            :VEF,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        VES =
          T.let(
            :VES,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        VND =
          T.let(
            :VND,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        VUV =
          T.let(
            :VUV,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        WST =
          T.let(
            :WST,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        XAF =
          T.let(
            :XAF,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        XAG =
          T.let(
            :XAG,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        XAU =
          T.let(
            :XAU,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        XBA =
          T.let(
            :XBA,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        XBB =
          T.let(
            :XBB,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        XBC =
          T.let(
            :XBC,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        XBD =
          T.let(
            :XBD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        XCD =
          T.let(
            :XCD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        XCG =
          T.let(
            :XCG,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        XDR =
          T.let(
            :XDR,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        XFU =
          T.let(
            :XFU,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        XOF =
          T.let(
            :XOF,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        XPD =
          T.let(
            :XPD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        XPF =
          T.let(
            :XPF,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        XPT =
          T.let(
            :XPT,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        XTS =
          T.let(
            :XTS,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        YER =
          T.let(
            :YER,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        ZAR =
          T.let(
            :ZAR,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        ZMK =
          T.let(
            :ZMK,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        ZMW =
          T.let(
            :ZMW,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        ZWD =
          T.let(
            :ZWD,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        ZWG =
          T.let(
            :ZWG,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        ZWL =
          T.let(
            :ZWL,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        ZWN =
          T.let(
            :ZWN,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )
        ZWR =
          T.let(
            :ZWR,
            ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ExpectedPaymentCreateParams::Currency::TaggedSymbol
            ]
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
            T.all(
              Symbol,
              ModernTreasury::ExpectedPaymentCreateParams::Direction
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT =
          T.let(
            :credit,
            ModernTreasury::ExpectedPaymentCreateParams::Direction::TaggedSymbol
          )
        DEBIT =
          T.let(
            :debit,
            ModernTreasury::ExpectedPaymentCreateParams::Direction::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ExpectedPaymentCreateParams::Direction::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class LineItem < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::ExpectedPaymentCreateParams::LineItem,
              ModernTreasury::Internal::AnyHash
            )
          end

        # Value in specified currency's smallest unit. e.g. $10 would be represented
        # as 1000.
        sig { returns(Integer) }
        attr_accessor :amount

        # The ID of one of your accounting categories. Note that these will only be
        # accessible if your accounting system has been connected.
        sig { returns(T.nilable(String)) }
        attr_accessor :accounting_category_id

        # A free-form description of the line item.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        sig do
          params(
            amount: Integer,
            accounting_category_id: T.nilable(String),
            description: T.nilable(String),
            metadata: T::Hash[Symbol, String]
          ).returns(T.attached_class)
        end
        def self.new(
          # Value in specified currency's smallest unit. e.g. $10 would be represented
          # as 1000.
          amount:,
          # The ID of one of your accounting categories. Note that these will only be
          # accessible if your accounting system has been connected.
          accounting_category_id: nil,
          # A free-form description of the line item.
          description: nil,
          # Additional data represented as key-value pairs. Both the key and value must be
          # strings.
          metadata: nil
        )
        end

        sig do
          override.returns(
            {
              amount: Integer,
              accounting_category_id: T.nilable(String),
              description: T.nilable(String),
              metadata: T::Hash[Symbol, String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
