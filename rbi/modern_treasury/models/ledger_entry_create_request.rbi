# typed: strong

module ModernTreasury
  module Models
    class LedgerEntryCreateRequest < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LedgerEntryCreateRequest,
            ModernTreasury::Internal::AnyHash
          )
        end

      # Value in specified currency's smallest unit. e.g. $10 would be represented
      # as 1000. Can be any integer up to 36 digits.
      sig { returns(Integer) }
      attr_accessor :amount

      # One of `credit`, `debit`. Describes the direction money is flowing in the
      # transaction. A `credit` moves money from your account to someone else's. A
      # `debit` pulls money from someone else's account to your own. Note that wire,
      # rtp, and check payments will always be `credit`.
      sig { returns(ModernTreasury::TransactionDirection::OrSymbol) }
      attr_accessor :direction

      # The ledger account that this ledger entry is associated with.
      sig { returns(String) }
      attr_accessor :ledger_account_id

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
      # account’s available balance. If any of these conditions would be false after the
      # transaction is created, the entire call will fail with error code 422.
      sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
      attr_accessor :available_balance_amount

      # Lock version of the ledger account. This can be passed when creating a ledger
      # transaction to only succeed if no ledger transactions have posted since the
      # given version. See our post about Designing the Ledgers API with Optimistic
      # Locking for more details.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :lock_version

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
      # account’s pending balance. If any of these conditions would be false after the
      # transaction is created, the entire call will fail with error code 422.
      sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
      attr_accessor :pending_balance_amount

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
      # account’s posted balance. If any of these conditions would be false after the
      # transaction is created, the entire call will fail with error code 422.
      sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
      attr_accessor :posted_balance_amount

      # If true, response will include the balance of the associated ledger account for
      # the entry.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :show_resulting_ledger_account_balances

      sig do
        params(
          amount: Integer,
          direction: ModernTreasury::TransactionDirection::OrSymbol,
          ledger_account_id: String,
          available_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
          lock_version: T.nilable(Integer),
          metadata: T::Hash[Symbol, String],
          pending_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
          posted_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
          show_resulting_ledger_account_balances: T.nilable(T::Boolean)
        ).returns(T.attached_class)
      end
      def self.new(
        # Value in specified currency's smallest unit. e.g. $10 would be represented
        # as 1000. Can be any integer up to 36 digits.
        amount:,
        # One of `credit`, `debit`. Describes the direction money is flowing in the
        # transaction. A `credit` moves money from your account to someone else's. A
        # `debit` pulls money from someone else's account to your own. Note that wire,
        # rtp, and check payments will always be `credit`.
        direction:,
        # The ledger account that this ledger entry is associated with.
        ledger_account_id:,
        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
        # account’s available balance. If any of these conditions would be false after the
        # transaction is created, the entire call will fail with error code 422.
        available_balance_amount: nil,
        # Lock version of the ledger account. This can be passed when creating a ledger
        # transaction to only succeed if no ledger transactions have posted since the
        # given version. See our post about Designing the Ledgers API with Optimistic
        # Locking for more details.
        lock_version: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
        # account’s pending balance. If any of these conditions would be false after the
        # transaction is created, the entire call will fail with error code 422.
        pending_balance_amount: nil,
        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
        # account’s posted balance. If any of these conditions would be false after the
        # transaction is created, the entire call will fail with error code 422.
        posted_balance_amount: nil,
        # If true, response will include the balance of the associated ledger account for
        # the entry.
        show_resulting_ledger_account_balances: nil
      )
      end

      sig do
        override.returns(
          {
            amount: Integer,
            direction: ModernTreasury::TransactionDirection::OrSymbol,
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
  end
end
