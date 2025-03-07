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

      sig { returns(String) }
      def ledger_account_currency
      end

      sig { params(_: String).returns(String) }
      def ledger_account_currency=(_)
      end

      sig { returns(Integer) }
      def ledger_account_currency_exponent
      end

      sig { params(_: Integer).returns(Integer) }
      def ledger_account_currency_exponent=(_)
      end

      sig { returns(String) }
      def ledger_account_id
      end

      sig { params(_: String).returns(String) }
      def ledger_account_id=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def ledger_account_lock_version
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def ledger_account_lock_version=(_)
      end

      sig { returns(String) }
      def ledger_transaction_id
      end

      sig { params(_: String).returns(String) }
      def ledger_transaction_id=(_)
      end

      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

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

      sig { returns(T.nilable(ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances)) }
      def resulting_ledger_account_balances
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances))
          .returns(T.nilable(ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances))
      end
      def resulting_ledger_account_balances=(_)
      end

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
        sig { returns(ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance) }
        def available_balance
        end

        sig do
          params(_: ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance)
            .returns(ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance)
        end
        def available_balance=(_)
        end

        sig { returns(ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance) }
        def pending_balance
        end

        sig do
          params(_: ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance)
            .returns(ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance)
        end
        def pending_balance=(_)
        end

        sig { returns(ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance) }
        def posted_balance
        end

        sig do
          params(_: ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance)
            .returns(ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance)
        end
        def posted_balance=(_)
        end

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

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

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

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

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

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

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
