# typed: strong

module ModernTreasury
  module Models
    class ExpectedPaymentUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::ExpectedPaymentUpdateParams,
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
            ModernTreasury::ExpectedPaymentUpdateParams::AmountReconciledDirection::OrSymbol
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
            ModernTreasury::ExpectedPaymentUpdateParams::AmountUnreconciledDirection::OrSymbol
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
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::OrSymbol
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
            ModernTreasury::ExpectedPaymentUpdateParams::Direction::OrSymbol
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

      # The Expected Payment's status can be updated from partially_reconciled to
      # reconciled.
      sig do
        returns(
          T.nilable(
            ModernTreasury::ExpectedPaymentUpdateParams::Status::OrSymbol
          )
        )
      end
      attr_accessor :status

      # One of: ach, au_becs, bacs, book, check, eft, rtp, sepa, wire.
      sig { returns(T.nilable(ModernTreasury::ExpectedPaymentType::OrSymbol)) }
      attr_accessor :type

      sig do
        params(
          id: String,
          amount_lower_bound: T.nilable(Integer),
          amount_reconciled: T.nilable(Integer),
          amount_reconciled_direction:
            T.nilable(
              ModernTreasury::ExpectedPaymentUpdateParams::AmountReconciledDirection::OrSymbol
            ),
          amount_unreconciled: T.nilable(Integer),
          amount_unreconciled_direction:
            T.nilable(
              ModernTreasury::ExpectedPaymentUpdateParams::AmountUnreconciledDirection::OrSymbol
            ),
          amount_upper_bound: T.nilable(Integer),
          counterparty_id: T.nilable(String),
          currency:
            T.nilable(
              ModernTreasury::ExpectedPaymentUpdateParams::Currency::OrSymbol
            ),
          date_lower_bound: T.nilable(Date),
          date_upper_bound: T.nilable(Date),
          description: T.nilable(String),
          direction:
            T.nilable(
              ModernTreasury::ExpectedPaymentUpdateParams::Direction::OrSymbol
            ),
          external_id: T.nilable(String),
          internal_account_id: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          reconciliation_filters: T.nilable(T.anything),
          reconciliation_groups: T.nilable(T.anything),
          reconciliation_rule_variables:
            T::Array[ModernTreasury::ReconciliationRule::OrHash],
          remittance_information: T.nilable(String),
          statement_descriptor: T.nilable(String),
          status:
            T.nilable(
              ModernTreasury::ExpectedPaymentUpdateParams::Status::OrSymbol
            ),
          type: T.nilable(ModernTreasury::ExpectedPaymentType::OrSymbol),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
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
        # The Expected Payment's status can be updated from partially_reconciled to
        # reconciled.
        status: nil,
        # One of: ach, au_becs, bacs, book, check, eft, rtp, sepa, wire.
        type: nil,
        request_options: {}
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
                ModernTreasury::ExpectedPaymentUpdateParams::AmountReconciledDirection::OrSymbol
              ),
            amount_unreconciled: T.nilable(Integer),
            amount_unreconciled_direction:
              T.nilable(
                ModernTreasury::ExpectedPaymentUpdateParams::AmountUnreconciledDirection::OrSymbol
              ),
            amount_upper_bound: T.nilable(Integer),
            counterparty_id: T.nilable(String),
            currency:
              T.nilable(
                ModernTreasury::ExpectedPaymentUpdateParams::Currency::OrSymbol
              ),
            date_lower_bound: T.nilable(Date),
            date_upper_bound: T.nilable(Date),
            description: T.nilable(String),
            direction:
              T.nilable(
                ModernTreasury::ExpectedPaymentUpdateParams::Direction::OrSymbol
              ),
            external_id: T.nilable(String),
            internal_account_id: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            reconciliation_filters: T.nilable(T.anything),
            reconciliation_groups: T.nilable(T.anything),
            reconciliation_rule_variables:
              T::Array[ModernTreasury::ReconciliationRule],
            remittance_information: T.nilable(String),
            statement_descriptor: T.nilable(String),
            status:
              T.nilable(
                ModernTreasury::ExpectedPaymentUpdateParams::Status::OrSymbol
              ),
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
              ModernTreasury::ExpectedPaymentUpdateParams::AmountReconciledDirection
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT =
          T.let(
            :credit,
            ModernTreasury::ExpectedPaymentUpdateParams::AmountReconciledDirection::TaggedSymbol
          )
        DEBIT =
          T.let(
            :debit,
            ModernTreasury::ExpectedPaymentUpdateParams::AmountReconciledDirection::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ExpectedPaymentUpdateParams::AmountReconciledDirection::TaggedSymbol
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
              ModernTreasury::ExpectedPaymentUpdateParams::AmountUnreconciledDirection
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT =
          T.let(
            :credit,
            ModernTreasury::ExpectedPaymentUpdateParams::AmountUnreconciledDirection::TaggedSymbol
          )
        DEBIT =
          T.let(
            :debit,
            ModernTreasury::ExpectedPaymentUpdateParams::AmountUnreconciledDirection::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ExpectedPaymentUpdateParams::AmountUnreconciledDirection::TaggedSymbol
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
            T.all(Symbol, ModernTreasury::ExpectedPaymentUpdateParams::Currency)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AED =
          T.let(
            :AED,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        AFN =
          T.let(
            :AFN,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        ALL =
          T.let(
            :ALL,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        AMD =
          T.let(
            :AMD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        ANG =
          T.let(
            :ANG,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        AOA =
          T.let(
            :AOA,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        ARS =
          T.let(
            :ARS,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        AUD =
          T.let(
            :AUD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        AWG =
          T.let(
            :AWG,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        AZN =
          T.let(
            :AZN,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        BAM =
          T.let(
            :BAM,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        BBD =
          T.let(
            :BBD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        BCH =
          T.let(
            :BCH,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        BDT =
          T.let(
            :BDT,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        BGN =
          T.let(
            :BGN,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        BHD =
          T.let(
            :BHD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        BIF =
          T.let(
            :BIF,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        BMD =
          T.let(
            :BMD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        BND =
          T.let(
            :BND,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        BOB =
          T.let(
            :BOB,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        BRL =
          T.let(
            :BRL,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        BSD =
          T.let(
            :BSD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        BTC =
          T.let(
            :BTC,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        BTN =
          T.let(
            :BTN,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        BWP =
          T.let(
            :BWP,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        BYN =
          T.let(
            :BYN,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        BYR =
          T.let(
            :BYR,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        BZD =
          T.let(
            :BZD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        CAD =
          T.let(
            :CAD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        CDF =
          T.let(
            :CDF,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        CHF =
          T.let(
            :CHF,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        CLF =
          T.let(
            :CLF,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        CLP =
          T.let(
            :CLP,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        CNH =
          T.let(
            :CNH,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        CNY =
          T.let(
            :CNY,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        COP =
          T.let(
            :COP,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        CRC =
          T.let(
            :CRC,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        CUC =
          T.let(
            :CUC,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        CUP =
          T.let(
            :CUP,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        CVE =
          T.let(
            :CVE,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        CZK =
          T.let(
            :CZK,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        DJF =
          T.let(
            :DJF,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        DKK =
          T.let(
            :DKK,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        DOP =
          T.let(
            :DOP,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        DZD =
          T.let(
            :DZD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        EEK =
          T.let(
            :EEK,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        EGP =
          T.let(
            :EGP,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        ERN =
          T.let(
            :ERN,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        ETB =
          T.let(
            :ETB,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        ETH =
          T.let(
            :ETH,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        EUR =
          T.let(
            :EUR,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        EURC =
          T.let(
            :EURC,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        FJD =
          T.let(
            :FJD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        FKP =
          T.let(
            :FKP,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        GBP =
          T.let(
            :GBP,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        GBX =
          T.let(
            :GBX,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        GEL =
          T.let(
            :GEL,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        GGP =
          T.let(
            :GGP,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        GHS =
          T.let(
            :GHS,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        GIP =
          T.let(
            :GIP,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        GMD =
          T.let(
            :GMD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        GNF =
          T.let(
            :GNF,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        GTQ =
          T.let(
            :GTQ,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        GYD =
          T.let(
            :GYD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        HKD =
          T.let(
            :HKD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        HNL =
          T.let(
            :HNL,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        HRK =
          T.let(
            :HRK,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        HTG =
          T.let(
            :HTG,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        HUF =
          T.let(
            :HUF,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        IDR =
          T.let(
            :IDR,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        ILS =
          T.let(
            :ILS,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        IMP =
          T.let(
            :IMP,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        INR =
          T.let(
            :INR,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        IQD =
          T.let(
            :IQD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        IRR =
          T.let(
            :IRR,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        ISK =
          T.let(
            :ISK,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        JEP =
          T.let(
            :JEP,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        JMD =
          T.let(
            :JMD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        JOD =
          T.let(
            :JOD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        JPY =
          T.let(
            :JPY,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        KES =
          T.let(
            :KES,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        KGS =
          T.let(
            :KGS,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        KHR =
          T.let(
            :KHR,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        KMF =
          T.let(
            :KMF,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        KPW =
          T.let(
            :KPW,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        KRW =
          T.let(
            :KRW,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        KWD =
          T.let(
            :KWD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        KYD =
          T.let(
            :KYD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        KZT =
          T.let(
            :KZT,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        LAK =
          T.let(
            :LAK,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        LBP =
          T.let(
            :LBP,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        LKR =
          T.let(
            :LKR,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        LRD =
          T.let(
            :LRD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        LSL =
          T.let(
            :LSL,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        LTL =
          T.let(
            :LTL,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        LVL =
          T.let(
            :LVL,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        LYD =
          T.let(
            :LYD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        MAD =
          T.let(
            :MAD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        MDL =
          T.let(
            :MDL,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        MGA =
          T.let(
            :MGA,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        MKD =
          T.let(
            :MKD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        MMK =
          T.let(
            :MMK,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        MNT =
          T.let(
            :MNT,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        MOP =
          T.let(
            :MOP,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        MRO =
          T.let(
            :MRO,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        MRU =
          T.let(
            :MRU,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        MTL =
          T.let(
            :MTL,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        MUR =
          T.let(
            :MUR,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        MVR =
          T.let(
            :MVR,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        MWK =
          T.let(
            :MWK,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        MXN =
          T.let(
            :MXN,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        MYR =
          T.let(
            :MYR,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        MZN =
          T.let(
            :MZN,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        NAD =
          T.let(
            :NAD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        NGN =
          T.let(
            :NGN,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        NIO =
          T.let(
            :NIO,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        NOK =
          T.let(
            :NOK,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        NPR =
          T.let(
            :NPR,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        NZD =
          T.let(
            :NZD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        OMR =
          T.let(
            :OMR,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        OP =
          T.let(
            :OP,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        PAB =
          T.let(
            :PAB,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        PEN =
          T.let(
            :PEN,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        PGK =
          T.let(
            :PGK,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        PHP =
          T.let(
            :PHP,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        PKR =
          T.let(
            :PKR,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        PLN =
          T.let(
            :PLN,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        PYG =
          T.let(
            :PYG,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        PYUSD =
          T.let(
            :PYUSD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        QAR =
          T.let(
            :QAR,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        RON =
          T.let(
            :RON,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        RSD =
          T.let(
            :RSD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        RUB =
          T.let(
            :RUB,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        RWF =
          T.let(
            :RWF,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        SAR =
          T.let(
            :SAR,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        SBD =
          T.let(
            :SBD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        SCR =
          T.let(
            :SCR,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        SDG =
          T.let(
            :SDG,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        SEK =
          T.let(
            :SEK,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        SGD =
          T.let(
            :SGD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        SHP =
          T.let(
            :SHP,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        SKK =
          T.let(
            :SKK,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        SLE =
          T.let(
            :SLE,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        SLL =
          T.let(
            :SLL,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        SOS =
          T.let(
            :SOS,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        SRD =
          T.let(
            :SRD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        SSP =
          T.let(
            :SSP,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        STD =
          T.let(
            :STD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        STN =
          T.let(
            :STN,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        SVC =
          T.let(
            :SVC,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        SYP =
          T.let(
            :SYP,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        SZL =
          T.let(
            :SZL,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        THB =
          T.let(
            :THB,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        TJS =
          T.let(
            :TJS,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        TMM =
          T.let(
            :TMM,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        TMT =
          T.let(
            :TMT,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        TND =
          T.let(
            :TND,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        TOP =
          T.let(
            :TOP,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        TRY =
          T.let(
            :TRY,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        TTD =
          T.let(
            :TTD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        TWD =
          T.let(
            :TWD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        TZS =
          T.let(
            :TZS,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        UAH =
          T.let(
            :UAH,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        UGX =
          T.let(
            :UGX,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        USD =
          T.let(
            :USD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        USDC =
          T.let(
            :USDC,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        USDG =
          T.let(
            :USDG,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        USDT =
          T.let(
            :USDT,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        UYU =
          T.let(
            :UYU,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        UZS =
          T.let(
            :UZS,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        VEF =
          T.let(
            :VEF,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        VES =
          T.let(
            :VES,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        VND =
          T.let(
            :VND,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        VUV =
          T.let(
            :VUV,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        WST =
          T.let(
            :WST,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        XAF =
          T.let(
            :XAF,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        XAG =
          T.let(
            :XAG,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        XAU =
          T.let(
            :XAU,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        XBA =
          T.let(
            :XBA,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        XBB =
          T.let(
            :XBB,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        XBC =
          T.let(
            :XBC,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        XBD =
          T.let(
            :XBD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        XCD =
          T.let(
            :XCD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        XCG =
          T.let(
            :XCG,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        XDR =
          T.let(
            :XDR,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        XFU =
          T.let(
            :XFU,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        XOF =
          T.let(
            :XOF,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        XPD =
          T.let(
            :XPD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        XPF =
          T.let(
            :XPF,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        XPT =
          T.let(
            :XPT,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        XTS =
          T.let(
            :XTS,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        YER =
          T.let(
            :YER,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        ZAR =
          T.let(
            :ZAR,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        ZMK =
          T.let(
            :ZMK,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        ZMW =
          T.let(
            :ZMW,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        ZWD =
          T.let(
            :ZWD,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        ZWG =
          T.let(
            :ZWG,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        ZWL =
          T.let(
            :ZWL,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        ZWN =
          T.let(
            :ZWN,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )
        ZWR =
          T.let(
            :ZWR,
            ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ExpectedPaymentUpdateParams::Currency::TaggedSymbol
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
              ModernTreasury::ExpectedPaymentUpdateParams::Direction
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT =
          T.let(
            :credit,
            ModernTreasury::ExpectedPaymentUpdateParams::Direction::TaggedSymbol
          )
        DEBIT =
          T.let(
            :debit,
            ModernTreasury::ExpectedPaymentUpdateParams::Direction::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ExpectedPaymentUpdateParams::Direction::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The Expected Payment's status can be updated from partially_reconciled to
      # reconciled.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::ExpectedPaymentUpdateParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RECONCILED =
          T.let(
            :reconciled,
            ModernTreasury::ExpectedPaymentUpdateParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ExpectedPaymentUpdateParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
