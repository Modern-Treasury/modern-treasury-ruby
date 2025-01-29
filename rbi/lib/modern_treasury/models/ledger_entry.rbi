# typed: strong

module ModernTreasury
  module Models
    class LedgerEntry < ModernTreasury::BaseModel
      Shape = T.type_alias do
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
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Symbol) }
      attr_accessor :direction

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      sig { returns(String) }
      attr_accessor :ledger_account_currency

      sig { returns(Integer) }
      attr_accessor :ledger_account_currency_exponent

      sig { returns(String) }
      attr_accessor :ledger_account_id

      sig { returns(T.nilable(Integer)) }
      attr_accessor :ledger_account_lock_version

      sig { returns(String) }
      attr_accessor :ledger_transaction_id

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :object

      sig { returns(T.nilable(ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances)) }
      attr_accessor :resulting_ledger_account_balances

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(Time) }
      attr_accessor :updated_at

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
        ).void
      end
      def initialize(
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
      ); end

      sig { returns(ModernTreasury::Models::LedgerEntry::Shape) }
      def to_h; end

      class ResultingLedgerAccountBalances < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {
            available_balance: ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance,
            pending_balance: ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance,
            posted_balance: ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance
          }
        end

        sig { returns(ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance) }
        attr_accessor :available_balance

        sig { returns(ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance) }
        attr_accessor :pending_balance

        sig { returns(ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance) }
        attr_accessor :posted_balance

        sig do
          params(
            available_balance: ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance,
            pending_balance: ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance,
            posted_balance: ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance
          ).void
        end
        def initialize(available_balance:, pending_balance:, posted_balance:); end

        sig { returns(ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::Shape) }
        def to_h; end

        class AvailableBalance < ModernTreasury::BaseModel
          Shape = T.type_alias do
            {amount: Integer, credits: Integer, currency: String, currency_exponent: Integer, debits: Integer}
          end

          sig { returns(Integer) }
          attr_accessor :amount

          sig { returns(Integer) }
          attr_accessor :credits

          sig { returns(String) }
          attr_accessor :currency

          sig { returns(Integer) }
          attr_accessor :currency_exponent

          sig { returns(Integer) }
          attr_accessor :debits

          sig do
            params(
              amount: Integer,
              credits: Integer,
              currency: String,
              currency_exponent: Integer,
              debits: Integer
            ).void
          end
          def initialize(amount:, credits:, currency:, currency_exponent:, debits:); end

          sig do
            returns(ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::AvailableBalance::Shape)
          end
          def to_h; end
        end

        class PendingBalance < ModernTreasury::BaseModel
          Shape = T.type_alias do
            {amount: Integer, credits: Integer, currency: String, currency_exponent: Integer, debits: Integer}
          end

          sig { returns(Integer) }
          attr_accessor :amount

          sig { returns(Integer) }
          attr_accessor :credits

          sig { returns(String) }
          attr_accessor :currency

          sig { returns(Integer) }
          attr_accessor :currency_exponent

          sig { returns(Integer) }
          attr_accessor :debits

          sig do
            params(
              amount: Integer,
              credits: Integer,
              currency: String,
              currency_exponent: Integer,
              debits: Integer
            ).void
          end
          def initialize(amount:, credits:, currency:, currency_exponent:, debits:); end

          sig do
            returns(ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PendingBalance::Shape)
          end
          def to_h; end
        end

        class PostedBalance < ModernTreasury::BaseModel
          Shape = T.type_alias do
            {amount: Integer, credits: Integer, currency: String, currency_exponent: Integer, debits: Integer}
          end

          sig { returns(Integer) }
          attr_accessor :amount

          sig { returns(Integer) }
          attr_accessor :credits

          sig { returns(String) }
          attr_accessor :currency

          sig { returns(Integer) }
          attr_accessor :currency_exponent

          sig { returns(Integer) }
          attr_accessor :debits

          sig do
            params(
              amount: Integer,
              credits: Integer,
              currency: String,
              currency_exponent: Integer,
              debits: Integer
            ).void
          end
          def initialize(amount:, credits:, currency:, currency_exponent:, debits:); end

          sig do
            returns(ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances::PostedBalance::Shape)
          end
          def to_h; end
        end
      end

      class Status < ModernTreasury::Enum
        abstract!

        ARCHIVED = :archived
        PENDING = :pending
        POSTED = :posted

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
