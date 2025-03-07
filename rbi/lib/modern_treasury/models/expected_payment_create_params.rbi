# typed: strong

module ModernTreasury
  module Models
    class ExpectedPaymentCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(Integer)) }
      def amount_lower_bound
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount_lower_bound=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def amount_upper_bound
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount_upper_bound=(_)
      end

      sig { returns(T.nilable(String)) }
      def counterparty_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def counterparty_id=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def currency
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def currency=(_)
      end

      sig { returns(T.nilable(Date)) }
      def date_lower_bound
      end

      sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
      def date_lower_bound=(_)
      end

      sig { returns(T.nilable(Date)) }
      def date_upper_bound
      end

      sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
      def date_upper_bound=(_)
      end

      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def direction
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def direction=(_)
      end

      sig { returns(T.nilable(String)) }
      def internal_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def internal_account_id=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction)) }
      def ledger_transaction
      end

      sig do
        params(_: ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction)
          .returns(ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction)
      end
      def ledger_transaction=(_)
      end

      sig { returns(T.nilable(String)) }
      def ledger_transaction_id
      end

      sig { params(_: String).returns(String) }
      def ledger_transaction_id=(_)
      end

      sig { returns(T.nilable(T::Array[ModernTreasury::Models::ExpectedPaymentCreateParams::LineItem])) }
      def line_items
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::ExpectedPaymentCreateParams::LineItem])
          .returns(T::Array[ModernTreasury::Models::ExpectedPaymentCreateParams::LineItem])
      end
      def line_items=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(T.nilable(T.anything)) }
      def reconciliation_filters
      end

      sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
      def reconciliation_filters=(_)
      end

      sig { returns(T.nilable(T.anything)) }
      def reconciliation_groups
      end

      sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
      def reconciliation_groups=(_)
      end

      sig { returns(T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule])) }
      def reconciliation_rule_variables
      end

      sig do
        params(_: T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]))
          .returns(T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]))
      end
      def reconciliation_rule_variables=(_)
      end

      sig { returns(T.nilable(String)) }
      def remittance_information
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def remittance_information=(_)
      end

      sig { returns(T.nilable(String)) }
      def statement_descriptor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def statement_descriptor=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def type
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def type=(_)
      end

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
      )
      end

      sig do
        override
          .returns(
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
      def to_hash
      end

      class Direction < ModernTreasury::Enum
        abstract!

        CREDIT = T.let(:credit, T.nilable(Symbol))
        DEBIT = T.let(:debit, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class LedgerTransaction < ModernTreasury::BaseModel
        sig { returns(T::Array[ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerEntry]) }
        def ledger_entries
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerEntry])
            .returns(T::Array[ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerEntry])
        end
        def ledger_entries=(_)
        end

        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_)
        end

        sig { returns(T.nilable(Time)) }
        def effective_at
        end

        sig { params(_: Time).returns(Time) }
        def effective_at=(_)
        end

        sig { returns(T.nilable(Date)) }
        def effective_date
        end

        sig { params(_: Date).returns(Date) }
        def effective_date=(_)
        end

        sig { returns(T.nilable(String)) }
        def external_id
        end

        sig { params(_: String).returns(String) }
        def external_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def ledgerable_id
        end

        sig { params(_: String).returns(String) }
        def ledgerable_id=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def ledgerable_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def ledgerable_type=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def status=(_)
        end

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
          )
            .returns(T.attached_class)
        end
        def self.new(
          ledger_entries:,
          description: nil,
          effective_at: nil,
          effective_date: nil,
          external_id: nil,
          ledgerable_id: nil,
          ledgerable_type: nil,
          metadata: nil,
          status: nil
        )
        end

        sig do
          override
            .returns(
              {
                ledger_entries: T::Array[ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerEntry],
                description: T.nilable(String),
                effective_at: Time,
                effective_date: Date,
                external_id: String,
                ledgerable_id: String,
                ledgerable_type: Symbol,
                metadata: T::Hash[Symbol, String],
                status: Symbol
              }
            )
        end
        def to_hash
        end

        class LedgerEntry < ModernTreasury::BaseModel
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(Symbol) }
          def direction
          end

          sig { params(_: Symbol).returns(Symbol) }
          def direction=(_)
          end

          sig { returns(String) }
          def ledger_account_id
          end

          sig { params(_: String).returns(String) }
          def ledger_account_id=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
          def available_balance_amount
          end

          sig { params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer])) }
          def available_balance_amount=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def lock_version
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def lock_version=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def metadata
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def metadata=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
          def pending_balance_amount
          end

          sig { params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer])) }
          def pending_balance_amount=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
          def posted_balance_amount
          end

          sig { params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer])) }
          def posted_balance_amount=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def show_resulting_ledger_account_balances
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def show_resulting_ledger_account_balances=(_)
          end

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
            )
              .returns(T.attached_class)
          end
          def self.new(
            amount:,
            direction:,
            ledger_account_id:,
            available_balance_amount: nil,
            lock_version: nil,
            metadata: nil,
            pending_balance_amount: nil,
            posted_balance_amount: nil,
            show_resulting_ledger_account_balances: nil
          )
          end

          sig do
            override
              .returns(
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
          def to_hash
          end
        end

        class LedgerableType < ModernTreasury::Enum
          abstract!

          EXPECTED_PAYMENT = :expected_payment
          INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
          PAPER_ITEM = :paper_item
          PAYMENT_ORDER = :payment_order
          RETURN = :return
          REVERSAL = :reversal

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class Status < ModernTreasury::Enum
          abstract!

          ARCHIVED = :archived
          PENDING = :pending
          POSTED = :posted

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end

      class LineItem < ModernTreasury::BaseModel
        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        sig { returns(T.nilable(String)) }
        def accounting_category_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def accounting_category_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig do
          params(
            amount: Integer,
            accounting_category_id: T.nilable(String),
            description: T.nilable(String),
            metadata: T::Hash[Symbol, String]
          )
            .returns(T.attached_class)
        end
        def self.new(amount:, accounting_category_id: nil, description: nil, metadata: nil)
        end

        sig do
          override
            .returns(
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
