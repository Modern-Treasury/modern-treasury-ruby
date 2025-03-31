# typed: strong

module ModernTreasury
  module Models
    class LedgerTransactionCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # An array of ledger entry objects.
      sig { returns(T::Array[ModernTreasury::Models::LedgerTransactionCreateParams::LedgerEntry]) }
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
      sig { returns(T.nilable(ModernTreasury::Models::LedgerTransactionCreateParams::LedgerableType::OrSymbol)) }
      attr_reader :ledgerable_type

      sig do
        params(ledgerable_type: ModernTreasury::Models::LedgerTransactionCreateParams::LedgerableType::OrSymbol)
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
      sig { returns(T.nilable(ModernTreasury::Models::LedgerTransactionCreateParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: ModernTreasury::Models::LedgerTransactionCreateParams::Status::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          ledger_entries: T::Array[T.any(ModernTreasury::Models::LedgerTransactionCreateParams::LedgerEntry, ModernTreasury::Util::AnyHash)],
          description: T.nilable(String),
          effective_at: Time,
          effective_date: Date,
          external_id: String,
          ledgerable_id: String,
          ledgerable_type: ModernTreasury::Models::LedgerTransactionCreateParams::LedgerableType::OrSymbol,
          metadata: T::Hash[Symbol, String],
          status: ModernTreasury::Models::LedgerTransactionCreateParams::Status::OrSymbol,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
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
        status: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              ledger_entries: T::Array[ModernTreasury::Models::LedgerTransactionCreateParams::LedgerEntry],
              description: T.nilable(String),
              effective_at: Time,
              effective_date: Date,
              external_id: String,
              ledgerable_id: String,
              ledgerable_type: ModernTreasury::Models::LedgerTransactionCreateParams::LedgerableType::OrSymbol,
              metadata: T::Hash[Symbol, String],
              status: ModernTreasury::Models::LedgerTransactionCreateParams::Status::OrSymbol,
              request_options: ModernTreasury::RequestOptions
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
          T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerTransactionCreateParams::LedgerableType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::LedgerTransactionCreateParams::LedgerableType::TaggedSymbol) }

        EXPECTED_PAYMENT =
          T.let(
            :expected_payment,
            ModernTreasury::Models::LedgerTransactionCreateParams::LedgerableType::TaggedSymbol
          )
        INCOMING_PAYMENT_DETAIL =
          T.let(
            :incoming_payment_detail,
            ModernTreasury::Models::LedgerTransactionCreateParams::LedgerableType::TaggedSymbol
          )
        PAPER_ITEM =
          T.let(:paper_item, ModernTreasury::Models::LedgerTransactionCreateParams::LedgerableType::TaggedSymbol)
        PAYMENT_ORDER =
          T.let(:payment_order, ModernTreasury::Models::LedgerTransactionCreateParams::LedgerableType::TaggedSymbol)
        RETURN =
          T.let(:return, ModernTreasury::Models::LedgerTransactionCreateParams::LedgerableType::TaggedSymbol)
        REVERSAL =
          T.let(:reversal, ModernTreasury::Models::LedgerTransactionCreateParams::LedgerableType::TaggedSymbol)

        sig do
          override
            .returns(T::Array[ModernTreasury::Models::LedgerTransactionCreateParams::LedgerableType::TaggedSymbol])
        end
        def self.values
        end
      end

      # To post a ledger transaction at creation, use `posted`.
      module Status
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerTransactionCreateParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::LedgerTransactionCreateParams::Status::TaggedSymbol) }

        ARCHIVED = T.let(:archived, ModernTreasury::Models::LedgerTransactionCreateParams::Status::TaggedSymbol)
        PENDING = T.let(:pending, ModernTreasury::Models::LedgerTransactionCreateParams::Status::TaggedSymbol)
        POSTED = T.let(:posted, ModernTreasury::Models::LedgerTransactionCreateParams::Status::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::LedgerTransactionCreateParams::Status::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
