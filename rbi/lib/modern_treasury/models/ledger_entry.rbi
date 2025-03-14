# typed: strong

module ModernTreasury
  module Models
    class LedgerEntry < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # Value in specified currency's smallest unit. e.g. $10 would be represented
      #   as 1000. Can be any integer up to 36 digits.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # One of `credit`, `debit`. Describes the direction money is flowing in the
      #   transaction. A `credit` moves money from your account to someone else's. A
      #   `debit` pulls money from someone else's account to your own. Note that wire,
      #   rtp, and check payments will always be `credit`.
      sig { returns(Symbol) }
      def direction
      end

      sig { params(_: Symbol).returns(Symbol) }
      def direction=(_)
      end

      sig { returns(T.nilable(Time)) }
      def discarded_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def discarded_at=(_)
      end

      # The currency of the ledger account.
      sig { returns(String) }
      def ledger_account_currency
      end

      sig { params(_: String).returns(String) }
      def ledger_account_currency=(_)
      end

      # The currency exponent of the ledger account.
      sig { returns(Integer) }
      def ledger_account_currency_exponent
      end

      sig { params(_: Integer).returns(Integer) }
      def ledger_account_currency_exponent=(_)
      end

      # The ledger account that this ledger entry is associated with.
      sig { returns(String) }
      def ledger_account_id
      end

      sig { params(_: String).returns(String) }
      def ledger_account_id=(_)
      end

      # Lock version of the ledger account. This can be passed when creating a ledger
      #   transaction to only succeed if no ledger transactions have posted since the
      #   given version. See our post about Designing the Ledgers API with Optimistic
      #   Locking for more details.
      sig { returns(T.nilable(Integer)) }
      def ledger_account_lock_version
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def ledger_account_lock_version=(_)
      end

      # The ledger transaction that this ledger entry is associated with.
      sig { returns(String) }
      def ledger_transaction_id
      end

      sig { params(_: String).returns(String) }
      def ledger_transaction_id=(_)
      end

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      # The pending, posted, and available balances for this ledger entry's ledger
      #   account. The posted balance is the sum of all posted entries on the account. The
      #   pending balance is the sum of all pending and posted entries on the account. The
      #   available balance is the posted incoming entries minus the sum of the pending
      #   and posted outgoing amounts. Please see
      #   https://docs.moderntreasury.com/docs/transaction-status-and-balances for more
      #   details.
      sig { returns(T.nilable(ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances)) }
      def resulting_ledger_account_balances
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances))
          .returns(T.nilable(ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances))
      end
      def resulting_ledger_account_balances=(_)
      end

      # Equal to the state of the ledger transaction when the ledger entry was created.
      #   One of `pending`, `posted`, or `archived`.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      sig do
        params(
          id: String,
          amount: Integer,
          created_at: Time,
          direction: Symbol,
          discarded_at: T.nilable(Time),
          ledger_account_currency: String,
          ledger_account_currency_exponent: Integer,
          ledger_account_id: String,
          ledger_account_lock_version: T.nilable(Integer),
          ledger_transaction_id: String,
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          resulting_ledger_account_balances: T.nilable(ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances),
          status: Symbol,
          updated_at: Time
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        amount:,
        created_at:,
        direction:,
        discarded_at:,
        ledger_account_currency:,
        ledger_account_currency_exponent:,
        ledger_account_id:,
        ledger_account_lock_version:,
        ledger_transaction_id:,
        live_mode:,
        metadata:,
        object:,
        resulting_ledger_account_balances:,
        status:,
        updated_at:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              amount: Integer,
              created_at: Time,
              direction: Symbol,
              discarded_at: T.nilable(Time),
              ledger_account_currency: String,
              ledger_account_currency_exponent: Integer,
              ledger_account_id: String,
              ledger_account_lock_version: T.nilable(Integer),
              ledger_transaction_id: String,
              live_mode: T::Boolean,
              metadata: T::Hash[Symbol, String],
              object: String,
              resulting_ledger_account_balances: T.nilable(ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances),
              status: Symbol,
              updated_at: Time
            }
          )
      end
      def to_hash
      end

      class ResultingLedgerAccountBalances < ModernTreasury::BaseModel
        # The available_balance is the sum of all posted inbound entries and pending
        #   outbound entries. For credit normal, available_amount = posted_credits -
        #   pending_debits; for debit normal, available_amount = posted_debits -
        #   pending_credits.
        sig { returns(ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance) }
        def available_balance
        end

        sig do
          params(_: ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance)
            .returns(ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance)
        end
        def available_balance=(_)
        end

        # The pending_balance is the sum of all pending and posted entries.
        sig { returns(ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance) }
        def pending_balance
        end

        sig do
          params(_: ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance)
            .returns(ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance)
        end
        def pending_balance=(_)
        end

        # The posted_balance is the sum of all posted entries.
        sig { returns(ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance) }
        def posted_balance
        end

        sig do
          params(_: ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance)
            .returns(ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance)
        end
        def posted_balance=(_)
        end

        # The pending, posted, and available balances for this ledger entry's ledger
        #   account. The posted balance is the sum of all posted entries on the account. The
        #   pending balance is the sum of all pending and posted entries on the account. The
        #   available balance is the posted incoming entries minus the sum of the pending
        #   and posted outgoing amounts. Please see
        #   https://docs.moderntreasury.com/docs/transaction-status-and-balances for more
        #   details.
        sig do
          params(
            available_balance: ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance,
            pending_balance: ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance,
            posted_balance: ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance
          )
            .returns(T.attached_class)
        end
        def self.new(available_balance:, pending_balance:, posted_balance:)
        end

        sig do
          override
            .returns(
              {
                available_balance: ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance,
                pending_balance: ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance,
                posted_balance: ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance
              }
            )
        end
        def to_hash
        end

        class AvailableBalance < ModernTreasury::BaseModel
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(Integer) }
          def credits
          end

          sig { params(_: Integer).returns(Integer) }
          def credits=(_)
          end

          # The currency of the ledger account.
          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          # The currency exponent of the ledger account.
          sig { returns(Integer) }
          def currency_exponent
          end

          sig { params(_: Integer).returns(Integer) }
          def currency_exponent=(_)
          end

          sig { returns(Integer) }
          def debits
          end

          sig { params(_: Integer).returns(Integer) }
          def debits=(_)
          end

          # The available_balance is the sum of all posted inbound entries and pending
          #   outbound entries. For credit normal, available_amount = posted_credits -
          #   pending_debits; for debit normal, available_amount = posted_debits -
          #   pending_credits.
          sig do
            params(
              amount: Integer,
              credits: Integer,
              currency: String,
              currency_exponent: Integer,
              debits: Integer
            )
              .returns(T.attached_class)
          end
          def self.new(amount:, credits:, currency:, currency_exponent:, debits:)
          end

          sig do
            override
              .returns(
                {
                  amount: Integer,
                  credits: Integer,
                  currency: String,
                  currency_exponent: Integer,
                  debits: Integer
                }
              )
          end
          def to_hash
          end
        end

        class PendingBalance < ModernTreasury::BaseModel
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(Integer) }
          def credits
          end

          sig { params(_: Integer).returns(Integer) }
          def credits=(_)
          end

          # The currency of the ledger account.
          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          # The currency exponent of the ledger account.
          sig { returns(Integer) }
          def currency_exponent
          end

          sig { params(_: Integer).returns(Integer) }
          def currency_exponent=(_)
          end

          sig { returns(Integer) }
          def debits
          end

          sig { params(_: Integer).returns(Integer) }
          def debits=(_)
          end

          # The pending_balance is the sum of all pending and posted entries.
          sig do
            params(
              amount: Integer,
              credits: Integer,
              currency: String,
              currency_exponent: Integer,
              debits: Integer
            )
              .returns(T.attached_class)
          end
          def self.new(amount:, credits:, currency:, currency_exponent:, debits:)
          end

          sig do
            override
              .returns(
                {
                  amount: Integer,
                  credits: Integer,
                  currency: String,
                  currency_exponent: Integer,
                  debits: Integer
                }
              )
          end
          def to_hash
          end
        end

        class PostedBalance < ModernTreasury::BaseModel
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(Integer) }
          def credits
          end

          sig { params(_: Integer).returns(Integer) }
          def credits=(_)
          end

          # The currency of the ledger account.
          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          # The currency exponent of the ledger account.
          sig { returns(Integer) }
          def currency_exponent
          end

          sig { params(_: Integer).returns(Integer) }
          def currency_exponent=(_)
          end

          sig { returns(Integer) }
          def debits
          end

          sig { params(_: Integer).returns(Integer) }
          def debits=(_)
          end

          # The posted_balance is the sum of all posted entries.
          sig do
            params(
              amount: Integer,
              credits: Integer,
              currency: String,
              currency_exponent: Integer,
              debits: Integer
            )
              .returns(T.attached_class)
          end
          def self.new(amount:, credits:, currency:, currency_exponent:, debits:)
          end

          sig do
            override
              .returns(
                {
                  amount: Integer,
                  credits: Integer,
                  currency: String,
                  currency_exponent: Integer,
                  debits: Integer
                }
              )
          end
          def to_hash
          end
        end
      end

      # Equal to the state of the ledger transaction when the ledger entry was created.
      #   One of `pending`, `posted`, or `archived`.
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
  end
end
