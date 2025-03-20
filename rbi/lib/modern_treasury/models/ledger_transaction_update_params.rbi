# typed: strong

module ModernTreasury
  module Models
    class LedgerTransactionUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

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

      # An array of ledger entry objects.
      sig { returns(T.nilable(T::Array[ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerEntry])) }
      def ledger_entries
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerEntry])
          .returns(T::Array[ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerEntry])
      end
      def ledger_entries=(_)
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
      sig { returns(T.nilable(ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerableType::OrSymbol)) }
      def ledgerable_type
      end

      sig do
        params(_: ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerableType::OrSymbol)
          .returns(ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerableType::OrSymbol)
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
      sig { returns(T.nilable(ModernTreasury::Models::LedgerTransactionUpdateParams::Status::OrSymbol)) }
      def status
      end

      sig do
        params(_: ModernTreasury::Models::LedgerTransactionUpdateParams::Status::OrSymbol)
          .returns(ModernTreasury::Models::LedgerTransactionUpdateParams::Status::OrSymbol)
      end
      def status=(_)
      end

      sig do
        params(
          description: T.nilable(String),
          effective_at: Time,
          ledger_entries: T::Array[ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerEntry],
          ledgerable_id: String,
          ledgerable_type: ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerableType::OrSymbol,
          metadata: T::Hash[Symbol, String],
          status: ModernTreasury::Models::LedgerTransactionUpdateParams::Status::OrSymbol,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        description: nil,
        effective_at: nil,
        ledger_entries: nil,
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
              description: T.nilable(String),
              effective_at: Time,
              ledger_entries: T::Array[ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerEntry],
              ledgerable_id: String,
              ledgerable_type: ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerableType::OrSymbol,
              metadata: T::Hash[Symbol, String],
              status: ModernTreasury::Models::LedgerTransactionUpdateParams::Status::OrSymbol,
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
          T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerableType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerableType::TaggedSymbol) }

        EXPECTED_PAYMENT =
          T.let(
            :expected_payment,
            ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerableType::TaggedSymbol
          )
        INCOMING_PAYMENT_DETAIL =
          T.let(
            :incoming_payment_detail,
            ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerableType::TaggedSymbol
          )
        PAPER_ITEM =
          T.let(:paper_item, ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerableType::TaggedSymbol)
        PAYMENT_ORDER =
          T.let(:payment_order, ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerableType::TaggedSymbol)
        RETURN =
          T.let(:return, ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerableType::TaggedSymbol)
        REVERSAL =
          T.let(:reversal, ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerableType::TaggedSymbol)

        class << self
          sig do
            override
              .returns(T::Array[ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerableType::TaggedSymbol])
          end
          def values
          end
        end
      end

      # To post a ledger transaction at creation, use `posted`.
      module Status
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerTransactionUpdateParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::LedgerTransactionUpdateParams::Status::TaggedSymbol) }

        ARCHIVED = T.let(:archived, ModernTreasury::Models::LedgerTransactionUpdateParams::Status::TaggedSymbol)
        PENDING = T.let(:pending, ModernTreasury::Models::LedgerTransactionUpdateParams::Status::TaggedSymbol)
        POSTED = T.let(:posted, ModernTreasury::Models::LedgerTransactionUpdateParams::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::LedgerTransactionUpdateParams::Status::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
