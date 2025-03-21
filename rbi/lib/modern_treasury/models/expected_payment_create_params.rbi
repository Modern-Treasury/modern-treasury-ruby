# typed: strong

module ModernTreasury
  module Models
    class ExpectedPaymentCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

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
      sig { returns(T.nilable(ModernTreasury::Models::ExpectedPaymentCreateParams::Direction::OrSymbol)) }
      attr_accessor :direction

      # The ID of the Internal Account for the expected payment.
      sig { returns(T.nilable(String)) }
      attr_accessor :internal_account_id

      # Specifies a ledger transaction object that will be created with the expected
      #   payment. If the ledger transaction cannot be created, then the expected payment
      #   creation will fail. The resulting ledger transaction will mirror the status of
      #   the expected payment.
      sig { returns(T.nilable(ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction)) }
      attr_reader :ledger_transaction

      sig do
        params(
          ledger_transaction: T.any(
            ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction,
            ModernTreasury::Util::AnyHash
          )
        )
          .void
      end
      attr_writer :ledger_transaction

      # Either ledger_transaction or ledger_transaction_id can be provided. Only a
      #   pending ledger transaction can be attached upon expected payment creation. Once
      #   the expected payment is created, the status of the ledger transaction tracks the
      #   expected payment automatically.
      sig { returns(T.nilable(String)) }
      attr_reader :ledger_transaction_id

      sig { params(ledger_transaction_id: String).void }
      attr_writer :ledger_transaction_id

      sig { returns(T.nilable(T::Array[ModernTreasury::Models::ExpectedPaymentCreateParams::LineItem])) }
      attr_reader :line_items

      sig do
        params(
          line_items: T::Array[T.any(ModernTreasury::Models::ExpectedPaymentCreateParams::LineItem, ModernTreasury::Util::AnyHash)]
        )
          .void
      end
      attr_writer :line_items

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
          direction: T.nilable(ModernTreasury::Models::ExpectedPaymentCreateParams::Direction::OrSymbol),
          internal_account_id: T.nilable(String),
          ledger_transaction: T.any(
            ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction,
            ModernTreasury::Util::AnyHash
          ),
          ledger_transaction_id: String,
          line_items: T::Array[T.any(ModernTreasury::Models::ExpectedPaymentCreateParams::LineItem, ModernTreasury::Util::AnyHash)],
          metadata: T::Hash[Symbol, String],
          reconciliation_filters: T.nilable(T.anything),
          reconciliation_groups: T.nilable(T.anything),
          reconciliation_rule_variables: T.nilable(T::Array[T.any(ModernTreasury::Models::ReconciliationRule, ModernTreasury::Util::AnyHash)]),
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

        sig { override.returns(T::Array[ModernTreasury::Models::ExpectedPaymentCreateParams::Direction::TaggedSymbol]) }
        def self.values
        end
      end

      class LedgerTransaction < ModernTreasury::BaseModel
        # An array of ledger entry objects.
        sig { returns(T::Array[ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerEntry]) }
        attr_accessor :ledger_entries

        # An optional description for internal use.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The timestamp (ISO8601 format) at which the ledger transaction happened for
        #   reporting purposes.
        sig { returns(T.nilable(Time)) }
        attr_reader :effective_at

        sig { params(effective_at: Time).void }
        attr_writer :effective_at

        # The date (YYYY-MM-DD) on which the ledger transaction happened for reporting
        #   purposes.
        sig { returns(T.nilable(Date)) }
        attr_reader :effective_date

        sig { params(effective_date: Date).void }
        attr_writer :effective_date

        # A unique string to represent the ledger transaction. Only one pending or posted
        #   ledger transaction may have this ID in the ledger.
        sig { returns(T.nilable(String)) }
        attr_reader :external_id

        sig { params(external_id: String).void }
        attr_writer :external_id

        # If the ledger transaction can be reconciled to another object in Modern
        #   Treasury, the id will be populated here, otherwise null.
        sig { returns(T.nilable(String)) }
        attr_reader :ledgerable_id

        sig { params(ledgerable_id: String).void }
        attr_writer :ledgerable_id

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
        attr_reader :ledgerable_type

        sig do
          params(
            ledgerable_type: ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerableType::OrSymbol
          )
            .void
        end
        attr_writer :ledgerable_type

        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        # To post a ledger transaction at creation, use `posted`.
        sig do
          returns(
            T.nilable(ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::Status::OrSymbol)
          )
        end
        attr_reader :status

        sig do
          params(status: ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::Status::OrSymbol)
            .void
        end
        attr_writer :status

        # Specifies a ledger transaction object that will be created with the expected
        #   payment. If the ledger transaction cannot be created, then the expected payment
        #   creation will fail. The resulting ledger transaction will mirror the status of
        #   the expected payment.
        sig do
          params(
            ledger_entries: T::Array[
            T.any(
              ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerEntry,
              ModernTreasury::Util::AnyHash
            )
            ],
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
          attr_accessor :amount

          # One of `credit`, `debit`. Describes the direction money is flowing in the
          #   transaction. A `credit` moves money from your account to someone else's. A
          #   `debit` pulls money from someone else's account to your own. Note that wire,
          #   rtp, and check payments will always be `credit`.
          sig { returns(ModernTreasury::Models::TransactionDirection::OrSymbol) }
          attr_accessor :direction

          # The ledger account that this ledger entry is associated with.
          sig { returns(String) }
          attr_accessor :ledger_account_id

          # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
          #   account’s available balance. If any of these conditions would be false after the
          #   transaction is created, the entire call will fail with error code 422.
          sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
          attr_accessor :available_balance_amount

          # Lock version of the ledger account. This can be passed when creating a ledger
          #   transaction to only succeed if no ledger transactions have posted since the
          #   given version. See our post about Designing the Ledgers API with Optimistic
          #   Locking for more details.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :lock_version

          # Additional data represented as key-value pairs. Both the key and value must be
          #   strings.
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, String]).void }
          attr_writer :metadata

          # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
          #   account’s pending balance. If any of these conditions would be false after the
          #   transaction is created, the entire call will fail with error code 422.
          sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
          attr_accessor :pending_balance_amount

          # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
          #   account’s posted balance. If any of these conditions would be false after the
          #   transaction is created, the entire call will fail with error code 422.
          sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
          attr_accessor :posted_balance_amount

          # If true, response will include the balance of the associated ledger account for
          #   the entry.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :show_resulting_ledger_account_balances

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

          sig do
            override
              .returns(
                T::Array[ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::LedgerableType::TaggedSymbol]
              )
          end
          def self.values
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

          sig do
            override
              .returns(
                T::Array[ModernTreasury::Models::ExpectedPaymentCreateParams::LedgerTransaction::Status::TaggedSymbol]
              )
          end
          def self.values
          end
        end
      end

      class LineItem < ModernTreasury::BaseModel
        # Value in specified currency's smallest unit. e.g. $10 would be represented
        #   as 1000.
        sig { returns(Integer) }
        attr_accessor :amount

        # The ID of one of your accounting categories. Note that these will only be
        #   accessible if your accounting system has been connected.
        sig { returns(T.nilable(String)) }
        attr_accessor :accounting_category_id

        # A free-form description of the line item.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
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
