# typed: strong

module ModernTreasury
  module Models
    class ExpectedPaymentCreateParams < ModernTreasury::BaseModel
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

      sig { returns(T.nilable(ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction)) }
      attr_reader :ledger_transaction

      sig do
        params(ledger_transaction: ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction).void
      end
      attr_writer :ledger_transaction

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_transaction_id

      sig { params(ledger_transaction_id: String).void }
      attr_writer :ledger_transaction_id

      sig { returns(T.nilable(T::Array[ModernTreasury::Models::ExpectedPaymentCreateParams::LineItem])) }
      attr_reader :line_items

      sig { params(line_items: T::Array[ModernTreasury::Models::ExpectedPaymentCreateParams::LineItem]).void }
      attr_writer :line_items

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
          ledger_transaction: ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction,
          ledger_transaction_id: String,
          line_items: T::Array[ModernTreasury::Models::ExpectedPaymentCreateParams::LineItem],
          metadata: T::Hash[Symbol, String],
          reconciliation_filters: T.nilable(T.anything),
          reconciliation_groups: T.nilable(T.anything),
          reconciliation_rule_variables: T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]),
          remittance_information: T.nilable(String),
          statement_descriptor: T.nilable(String),
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
        ledger_transaction: nil,
        ledger_transaction_id: nil,
        line_items: nil,
        metadata: nil,
        reconciliation_filters: nil,
        reconciliation_groups: nil,
        reconciliation_rule_variables: nil,
        remittance_information: nil,
        statement_descriptor: nil,
        type: nil,
        request_options: {}
      ); end

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
            ledger_transaction: ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction,
            ledger_transaction_id: String,
            line_items: T::Array[ModernTreasury::Models::ExpectedPaymentCreateParams::LineItem],
            metadata: T::Hash[Symbol, String],
            reconciliation_filters: T.nilable(T.anything),
            reconciliation_groups: T.nilable(T.anything),
            reconciliation_rule_variables: T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]),
            remittance_information: T.nilable(String),
            statement_descriptor: T.nilable(String),
            type: T.nilable(Symbol),
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash; end

      class Direction < ModernTreasury::Enum
        abstract!

        CREDIT = T.let(:credit, T.nilable(Symbol))
        DEBIT = T.let(:debit, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class LedgerTransaction < ModernTreasury::BaseModel
        sig do
          returns(T::Array[ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerEntry])
        end
        attr_accessor :ledger_entries

        sig { returns(T.nilable(String)) }
        attr_accessor :description

        sig { returns(T.nilable(Time)) }
        attr_reader :effective_at

        sig { params(effective_at: Time).void }
        attr_writer :effective_at

        sig { returns(T.nilable(Date)) }
        attr_reader :effective_date

        sig { params(effective_date: Date).void }
        attr_writer :effective_date

        sig { returns(T.nilable(String)) }
        attr_reader :external_id

        sig { params(external_id: String).void }
        attr_writer :external_id

        sig { returns(T.nilable(String)) }
        attr_reader :ledgerable_id

        sig { params(ledgerable_id: String).void }
        attr_writer :ledgerable_id

        sig { returns(T.nilable(Symbol)) }
        attr_reader :ledgerable_type

        sig { params(ledgerable_type: Symbol).void }
        attr_writer :ledgerable_type

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        sig { returns(T.nilable(Symbol)) }
        attr_reader :status

        sig { params(status: Symbol).void }
        attr_writer :status

        sig do
          params(
            ledger_entries: T::Array[ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerEntry],
            description: T.nilable(String),
            effective_at: Time,
            effective_date: Date,
            external_id: String,
            ledgerable_id: String,
            ledgerable_type: Symbol,
            metadata: T::Hash[Symbol, String],
            status: Symbol
          ).void
        end
        def initialize(
          ledger_entries:,
          description: nil,
          effective_at: nil,
          effective_date: nil,
          external_id: nil,
          ledgerable_id: nil,
          ledgerable_type: nil,
          metadata: nil,
          status: nil
        ); end

        sig do
          override.returns(
            {
              ledger_entries: T::Array[ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerEntry],
              description: T.nilable(String),
              effective_at: Time,
              effective_date: Date,
              external_id: String,
              ledgerable_id: String,
              ledgerable_type: Symbol,
              metadata: T::Hash[Symbol,
                                String],
              status: Symbol
            }
          )
        end
        def to_hash; end

        class LedgerEntry < ModernTreasury::BaseModel
          sig { returns(Integer) }
          attr_accessor :amount

          sig { returns(Symbol) }
          attr_accessor :direction

          sig { returns(String) }
          attr_accessor :ledger_account_id

          sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
          attr_accessor :available_balance_amount

          sig { returns(T.nilable(Integer)) }
          attr_accessor :lock_version

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, String]).void }
          attr_writer :metadata

          sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
          attr_accessor :pending_balance_amount

          sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
          attr_accessor :posted_balance_amount

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :show_resulting_ledger_account_balances

          sig do
            params(
              amount: Integer,
              direction: Symbol,
              ledger_account_id: String,
              available_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
              lock_version: T.nilable(Integer),
              metadata: T::Hash[Symbol, String],
              pending_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
              posted_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
              show_resulting_ledger_account_balances: T.nilable(T::Boolean)
            ).void
          end
          def initialize(
            amount:,
            direction:,
            ledger_account_id:,
            available_balance_amount: nil,
            lock_version: nil,
            metadata: nil,
            pending_balance_amount: nil,
            posted_balance_amount: nil,
            show_resulting_ledger_account_balances: nil
          ); end

          sig do
            override.returns(
              {
                amount: Integer,
                direction: Symbol,
                ledger_account_id: String,
                available_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
                lock_version: T.nilable(Integer),
                metadata: T::Hash[Symbol, String],
                pending_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
                posted_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
                show_resulting_ledger_account_balances: T.nilable(T::Boolean)
              }
            )
          end
          def to_hash; end
        end

        class LedgerableType < ModernTreasury::Enum
          abstract!

          EXPECTED_PAYMENT = :expected_payment
          INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
          PAPER_ITEM = :paper_item
          PAYMENT_ORDER = :payment_order
          RETURN = :return
          REVERSAL = :reversal

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end

        class Status < ModernTreasury::Enum
          abstract!

          ARCHIVED = :archived
          PENDING = :pending
          POSTED = :posted

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end

      class LineItem < ModernTreasury::BaseModel
        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(T.nilable(String)) }
        attr_accessor :accounting_category_id

        sig { returns(T.nilable(String)) }
        attr_accessor :description

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
          ).void
        end
        def initialize(amount:, accounting_category_id: nil, description: nil, metadata: nil); end

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
        def to_hash; end
      end
    end
  end
end
