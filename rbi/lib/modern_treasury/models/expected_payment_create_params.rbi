# typed: strong

module ModernTreasury
  module Models
    class ExpectedPaymentCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

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

      # Must conform to ISO 4217. Defaults to the currency of the internal account.
      sig { returns(T.nilable(ModernTreasury::Models::Currency::OrSymbol)) }
      def currency
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::Currency::OrSymbol))
          .returns(T.nilable(ModernTreasury::Models::Currency::OrSymbol))
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
      sig { returns(T.nilable(ModernTreasury::Models::ExpectedPaymentCreateParams::Direction::OrSymbol)) }
      def direction
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::ExpectedPaymentCreateParams::Direction::OrSymbol))
          .returns(T.nilable(ModernTreasury::Models::ExpectedPaymentCreateParams::Direction::OrSymbol))
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

      # Specifies a ledger transaction object that will be created with the expected
      #   payment. If the ledger transaction cannot be created, then the expected payment
      #   creation will fail. The resulting ledger transaction will mirror the status of
      #   the expected payment.
      sig { returns(T.nilable(ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction)) }
      def ledger_transaction
      end

      sig do
        params(
          _: T.any(
            ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction,
            ModernTreasury::Util::AnyHash
          )
        )
          .returns(
            T.any(
              ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction,
              ModernTreasury::Util::AnyHash
            )
          )
      end
      def ledger_transaction=(_)
      end

      # Either ledger_transaction or ledger_transaction_id can be provided. Only a
      #   pending ledger transaction can be attached upon expected payment creation. Once
      #   the expected payment is created, the status of the ledger transaction tracks the
      #   expected payment automatically.
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

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
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

      # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
      #   sepa, signet, wire.
      sig { returns(T.nilable(ModernTreasury::Models::ExpectedPaymentType::OrSymbol)) }
      def type
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::ExpectedPaymentType::OrSymbol))
          .returns(T.nilable(ModernTreasury::Models::ExpectedPaymentType::OrSymbol))
      end
      def type=(_)
      end

      sig do
        params(
          amount_lower_bound: T.nilable(Integer),
          amount_upper_bound: T.nilable(Integer),
          counterparty_id: T.nilable(String),
          currency: T.nilable(ModernTreasury::Models::Currency::OrSymbol),
          date_lower_bound: T.nilable(Date),
          date_upper_bound: T.nilable(Date),
          description: T.nilable(String),
          direction: T.nilable(ModernTreasury::Models::ExpectedPaymentCreateParams::Direction::OrSymbol),
          internal_account_id: T.nilable(String),
          ledger_transaction: T.any(
            ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction,
            ModernTreasury::Util::AnyHash
          ),
          ledger_transaction_id: String,
          line_items: T::Array[ModernTreasury::Models::ExpectedPaymentCreateParams::LineItem],
          metadata: T::Hash[Symbol, String],
          reconciliation_filters: T.nilable(T.anything),
          reconciliation_groups: T.nilable(T.anything),
          reconciliation_rule_variables: T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]),
          remittance_information: T.nilable(String),
          statement_descriptor: T.nilable(String),
          type: T.nilable(ModernTreasury::Models::ExpectedPaymentType::OrSymbol),
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
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
              currency: T.nilable(ModernTreasury::Models::Currency::OrSymbol),
              date_lower_bound: T.nilable(Date),
              date_upper_bound: T.nilable(Date),
              description: T.nilable(String),
              direction: T.nilable(ModernTreasury::Models::ExpectedPaymentCreateParams::Direction::OrSymbol),
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
              type: T.nilable(ModernTreasury::Models::ExpectedPaymentType::OrSymbol),
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      # One of credit or debit. When you are receiving money, use credit. When you are
      #   being charged, use debit.
      module Direction
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::ExpectedPaymentCreateParams::Direction) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::ExpectedPaymentCreateParams::Direction::TaggedSymbol) }

        CREDIT = T.let(:credit, ModernTreasury::Models::ExpectedPaymentCreateParams::Direction::TaggedSymbol)
        DEBIT = T.let(:debit, ModernTreasury::Models::ExpectedPaymentCreateParams::Direction::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::ExpectedPaymentCreateParams::Direction::TaggedSymbol]) }
          def values
          end
        end
      end

      class LedgerTransaction < ModernTreasury::BaseModel
        # An array of ledger entry objects.
        sig { returns(T::Array[ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerEntry]) }
        def ledger_entries
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerEntry])
            .returns(T::Array[ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerEntry])
        end
        def ledger_entries=(_)
        end

        # An optional description for internal use.
        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_)
        end

        # The timestamp (ISO8601 format) at which the ledger transaction happened for
        #   reporting purposes.
        sig { returns(T.nilable(Time)) }
        def effective_at
        end

        sig { params(_: Time).returns(Time) }
        def effective_at=(_)
        end

        # The date (YYYY-MM-DD) on which the ledger transaction happened for reporting
        #   purposes.
        sig { returns(T.nilable(Date)) }
        def effective_date
        end

        sig { params(_: Date).returns(Date) }
        def effective_date=(_)
        end

        # A unique string to represent the ledger transaction. Only one pending or posted
        #   ledger transaction may have this ID in the ledger.
        sig { returns(T.nilable(String)) }
        def external_id
        end

        sig { params(_: String).returns(String) }
        def external_id=(_)
        end

        # If the ledger transaction can be reconciled to another object in Modern
        #   Treasury, the id will be populated here, otherwise null.
        sig { returns(T.nilable(String)) }
        def ledgerable_id
        end

        sig { params(_: String).returns(String) }
        def ledgerable_id=(_)
        end

        # If the ledger transaction can be reconciled to another object in Modern
        #   Treasury, the type will be populated here, otherwise null. This can be one of
        #   payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
        #   reversal.
        sig do
          returns(
            T.nilable(
              ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerableType::OrSymbol
            )
          )
        end
        def ledgerable_type
        end

        sig do
          params(
            _: ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerableType::OrSymbol
          )
            .returns(ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerableType::OrSymbol)
        end
        def ledgerable_type=(_)
        end

        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        # To post a ledger transaction at creation, use `posted`.
        sig do
          returns(
            T.nilable(ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::Status::OrSymbol)
          )
        end
        def status
        end

        sig do
          params(_: ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::Status::OrSymbol)
            .returns(ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::Status::OrSymbol)
        end
        def status=(_)
        end

        # Specifies a ledger transaction object that will be created with the expected
        #   payment. If the ledger transaction cannot be created, then the expected payment
        #   creation will fail. The resulting ledger transaction will mirror the status of
        #   the expected payment.
        sig do
          params(
            ledger_entries: T::Array[ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerEntry],
            description: T.nilable(String),
            effective_at: Time,
            effective_date: Date,
            external_id: String,
            ledgerable_id: String,
            ledgerable_type: ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerableType::OrSymbol,
            metadata: T::Hash[Symbol, String],
            status: ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::Status::OrSymbol
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
                ledgerable_type: ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerableType::OrSymbol,
                metadata: T::Hash[Symbol, String],
                status: ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::Status::OrSymbol
              }
            )
        end
        def to_hash
        end

        class LedgerEntry < ModernTreasury::BaseModel
          # Value in specified currency's smallest unit. e.g. $10 would be represented
          #   as 1000. Can be any integer up to 36 digits.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # One of `credit`, `debit`. Describes the direction money is flowing in the
          #   transaction. A `credit` moves money from your account to someone else's. A
          #   `debit` pulls money from someone else's account to your own. Note that wire,
          #   rtp, and check payments will always be `credit`.
          sig { returns(ModernTreasury::Models::TransactionDirection::OrSymbol) }
          def direction
          end

          sig do
            params(_: ModernTreasury::Models::TransactionDirection::OrSymbol)
              .returns(ModernTreasury::Models::TransactionDirection::OrSymbol)
          end
          def direction=(_)
          end

          # The ledger account that this ledger entry is associated with.
          sig { returns(String) }
          def ledger_account_id
          end

          sig { params(_: String).returns(String) }
          def ledger_account_id=(_)
          end

          # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
          #   account’s available balance. If any of these conditions would be false after the
          #   transaction is created, the entire call will fail with error code 422.
          sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
          def available_balance_amount
          end

          sig { params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer])) }
          def available_balance_amount=(_)
          end

          # Lock version of the ledger account. This can be passed when creating a ledger
          #   transaction to only succeed if no ledger transactions have posted since the
          #   given version. See our post about Designing the Ledgers API with Optimistic
          #   Locking for more details.
          sig { returns(T.nilable(Integer)) }
          def lock_version
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def lock_version=(_)
          end

          # Additional data represented as key-value pairs. Both the key and value must be
          #   strings.
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def metadata
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def metadata=(_)
          end

          # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
          #   account’s pending balance. If any of these conditions would be false after the
          #   transaction is created, the entire call will fail with error code 422.
          sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
          def pending_balance_amount
          end

          sig { params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer])) }
          def pending_balance_amount=(_)
          end

          # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
          #   account’s posted balance. If any of these conditions would be false after the
          #   transaction is created, the entire call will fail with error code 422.
          sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
          def posted_balance_amount
          end

          sig { params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer])) }
          def posted_balance_amount=(_)
          end

          # If true, response will include the balance of the associated ledger account for
          #   the entry.
          sig { returns(T.nilable(T::Boolean)) }
          def show_resulting_ledger_account_balances
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def show_resulting_ledger_account_balances=(_)
          end

          sig do
            params(
              amount: Integer,
              direction: ModernTreasury::Models::TransactionDirection::OrSymbol,
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
                  direction: ModernTreasury::Models::TransactionDirection::OrSymbol,
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

        # If the ledger transaction can be reconciled to another object in Modern
        #   Treasury, the type will be populated here, otherwise null. This can be one of
        #   payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
        #   reversal.
        module LedgerableType
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerableType) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerableType::TaggedSymbol
              )
            end

          EXPECTED_PAYMENT =
            T.let(
              :expected_payment,
              ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerableType::TaggedSymbol
            )
          INCOMING_PAYMENT_DETAIL =
            T.let(
              :incoming_payment_detail,
              ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerableType::TaggedSymbol
            )
          PAPER_ITEM =
            T.let(
              :paper_item,
              ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerableType::TaggedSymbol
            )
          PAYMENT_ORDER =
            T.let(
              :payment_order,
              ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerableType::TaggedSymbol
            )
          RETURN =
            T.let(
              :return,
              ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerableType::TaggedSymbol
            )
          REVERSAL =
            T.let(
              :reversal,
              ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerableType::TaggedSymbol
            )

          class << self
            sig do
              override
                .returns(
                  T::Array[ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerableType::TaggedSymbol]
                )
            end
            def values
            end
          end
        end

        # To post a ledger transaction at creation, use `posted`.
        module Status
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::Status) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::Status::TaggedSymbol
              )
            end

          ARCHIVED =
            T.let(
              :archived,
              ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::Status::TaggedSymbol
            )
          POSTED =
            T.let(
              :posted,
              ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::Status::TaggedSymbol
            )

          class << self
            sig do
              override
                .returns(
                  T::Array[ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::Status::TaggedSymbol]
                )
            end
            def values
            end
          end
        end
      end

      class LineItem < ModernTreasury::BaseModel
        # Value in specified currency's smallest unit. e.g. $10 would be represented
        #   as 1000.
        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        # The ID of one of your accounting categories. Note that these will only be
        #   accessible if your accounting system has been connected.
        sig { returns(T.nilable(String)) }
        def accounting_category_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def accounting_category_id=(_)
        end

        # A free-form description of the line item.
        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_)
        end

        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
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
