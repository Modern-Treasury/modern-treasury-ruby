# typed: strong

module ModernTreasury
  module Models
    class ExpectedPaymentUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount_lower_bound

      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount_upper_bound

      sig { returns(T.nilable(String)) }
      attr_accessor :counterparty_id

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

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :reconciliation_filters

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :reconciliation_groups

      sig { returns(T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule])) }
      attr_accessor :reconciliation_rule_variables

      sig { returns(T.nilable(String)) }
      attr_accessor :remittance_information

      sig { returns(T.nilable(String)) }
      attr_accessor :statement_descriptor

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :status

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :type

      sig do
        params(
          amount_lower_bound: T.nilable(Integer),
          amount_upper_bound: T.nilable(Integer),
          counterparty_id: T.nilable(String),
          currency: T.nilable(Symbol),
          date_lower_bound: T.nilable(Date),
          date_upper_bound: T.nilable(Date),
          description: T.nilable(String),
          direction: T.nilable(Symbol),
          internal_account_id: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          reconciliation_filters: T.nilable(T.anything),
          reconciliation_groups: T.nilable(T.anything),
          reconciliation_rule_variables: T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]),
          remittance_information: T.nilable(String),
          statement_descriptor: T.nilable(String),
          status: T.nilable(Symbol),
          type: T.nilable(Symbol),
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
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
      )
      end

      sig do
        override.returns(
          {
            amount_lower_bound: T.nilable(Integer),
            amount_upper_bound: T.nilable(Integer),
            counterparty_id: T.nilable(String),
            currency: T.nilable(Symbol),
            date_lower_bound: T.nilable(Date),
            date_upper_bound: T.nilable(Date),
            description: T.nilable(String),
            direction: T.nilable(Symbol),
            internal_account_id: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            reconciliation_filters: T.nilable(T.anything),
            reconciliation_groups: T.nilable(T.anything),
            reconciliation_rule_variables: T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]),
            remittance_information: T.nilable(String),
            statement_descriptor: T.nilable(String),
            status: T.nilable(Symbol),
            type: T.nilable(Symbol),
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Direction < ModernTreasury::Enum
        abstract!

        CREDIT = T.let(:credit, T.nilable(Symbol))
        DEBIT = T.let(:debit, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Status < ModernTreasury::Enum
        abstract!

        RECONCILED = T.let(:reconciled, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
