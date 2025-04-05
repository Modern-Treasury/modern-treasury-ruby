# typed: strong

module ModernTreasury
  module Models
    class ExpectedPaymentUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

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

      # Must conform to ISO 4217. Defaults to the currency of the internal account.
      sig { returns(T.nilable(ModernTreasury::Models::Currency::OrSymbol)) }
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
      sig { returns(T.nilable(ModernTreasury::Models::ExpectedPaymentUpdateParams::Direction::OrSymbol)) }
      attr_accessor :direction

      # The ID of the Internal Account for the expected payment.
      sig { returns(T.nilable(String)) }
      attr_accessor :internal_account_id

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
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

      # The Expected Payment's status can be updated from partially_reconciled to
      #   reconciled.
      sig { returns(T.nilable(ModernTreasury::Models::ExpectedPaymentUpdateParams::Status::OrSymbol)) }
      attr_accessor :status

      # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
      #   sepa, signet, wire.
      sig { returns(T.nilable(ModernTreasury::Models::ExpectedPaymentType::OrSymbol)) }
      attr_accessor :type

      sig do
        params(
          amount_lower_bound: T.nilable(Integer),
          amount_upper_bound: T.nilable(Integer),
          counterparty_id: T.nilable(String),
          currency: T.nilable(ModernTreasury::Models::Currency::OrSymbol),
          date_lower_bound: T.nilable(Date),
          date_upper_bound: T.nilable(Date),
          description: T.nilable(String),
          direction: T.nilable(ModernTreasury::Models::ExpectedPaymentUpdateParams::Direction::OrSymbol),
          internal_account_id: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          reconciliation_filters: T.nilable(T.anything),
          reconciliation_groups: T.nilable(T.anything),
          reconciliation_rule_variables: T.nilable(T::Array[T.any(ModernTreasury::Models::ReconciliationRule, ModernTreasury::Internal::AnyHash)]),
          remittance_information: T.nilable(String),
          statement_descriptor: T.nilable(String),
          status: T.nilable(ModernTreasury::Models::ExpectedPaymentUpdateParams::Status::OrSymbol),
          type: T.nilable(ModernTreasury::Models::ExpectedPaymentType::OrSymbol),
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        amount_lower_bound: nil,
        amount_upper_bound: nil,
        counterparty_id: nil,
        currency: nil,
        date_lower_bound: nil,
        date_upper_bound: nil,
        description: nil,
        direction: nil,
        internal_account_id: nil,
        metadata: nil,
        reconciliation_filters: nil,
        reconciliation_groups: nil,
        reconciliation_rule_variables: nil,
        remittance_information: nil,
        statement_descriptor: nil,
        status: nil,
        type: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              amount_lower_bound: T.nilable(Integer),
              amount_upper_bound: T.nilable(Integer),
              counterparty_id: T.nilable(String),
              currency: T.nilable(ModernTreasury::Models::Currency::OrSymbol),
              date_lower_bound: T.nilable(Date),
              date_upper_bound: T.nilable(Date),
              description: T.nilable(String),
              direction: T.nilable(ModernTreasury::Models::ExpectedPaymentUpdateParams::Direction::OrSymbol),
              internal_account_id: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              reconciliation_filters: T.nilable(T.anything),
              reconciliation_groups: T.nilable(T.anything),
              reconciliation_rule_variables: T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]),
              remittance_information: T.nilable(String),
              statement_descriptor: T.nilable(String),
              status: T.nilable(ModernTreasury::Models::ExpectedPaymentUpdateParams::Status::OrSymbol),
              type: T.nilable(ModernTreasury::Models::ExpectedPaymentType::OrSymbol),
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash; end

      # One of credit or debit. When you are receiving money, use credit. When you are
      #   being charged, use debit.
      module Direction
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::ExpectedPaymentUpdateParams::Direction) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::ExpectedPaymentUpdateParams::Direction::TaggedSymbol) }

        CREDIT = T.let(:credit, ModernTreasury::Models::ExpectedPaymentUpdateParams::Direction::TaggedSymbol)
        DEBIT = T.let(:debit, ModernTreasury::Models::ExpectedPaymentUpdateParams::Direction::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::ExpectedPaymentUpdateParams::Direction::TaggedSymbol]) }
        def self.values; end
      end

      # The Expected Payment's status can be updated from partially_reconciled to
      #   reconciled.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::ExpectedPaymentUpdateParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::ExpectedPaymentUpdateParams::Status::TaggedSymbol) }

        RECONCILED =
          T.let(:reconciled, ModernTreasury::Models::ExpectedPaymentUpdateParams::Status::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::ExpectedPaymentUpdateParams::Status::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
