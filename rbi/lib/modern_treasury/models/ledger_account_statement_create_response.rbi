# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountStatementCreateResponse < ModernTreasury::BaseModel
      Shape = T.type_alias do
        {
          id: String,
          created_at: Time,
          description: T.nilable(String),
          effective_at_lower_bound: Time,
          effective_at_upper_bound: Time,
          ending_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance,
          ledger_account_id: String,
          ledger_account_lock_version: Integer,
          ledger_account_normal_balance: Symbol,
          ledger_id: String,
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          starting_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance,
          updated_at: Time
        }
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(Time) }
      attr_accessor :effective_at_lower_bound

      sig { returns(Time) }
      attr_accessor :effective_at_upper_bound

      sig { returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance) }
      attr_accessor :ending_balance

      sig { returns(String) }
      attr_accessor :ledger_account_id

      sig { returns(Integer) }
      attr_accessor :ledger_account_lock_version

      sig { returns(Symbol) }
      attr_accessor :ledger_account_normal_balance

      sig { returns(String) }
      attr_accessor :ledger_id

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :object

      sig { returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance) }
      attr_accessor :starting_balance

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          created_at: Time,
          description: T.nilable(String),
          effective_at_lower_bound: Time,
          effective_at_upper_bound: Time,
          ending_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance,
          ledger_account_id: String,
          ledger_account_lock_version: Integer,
          ledger_account_normal_balance: Symbol,
          ledger_id: String,
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          starting_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance,
          updated_at: Time
        ).void
      end
      def initialize(
        id:,
        created_at:,
        description:,
        effective_at_lower_bound:,
        effective_at_upper_bound:,
        ending_balance:,
        ledger_account_id:,
        ledger_account_lock_version:,
        ledger_account_normal_balance:,
        ledger_id:,
        live_mode:,
        metadata:,
        object:,
        starting_balance:,
        updated_at:
      ); end

      sig { returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::Shape) }
      def to_h; end

      class EndingBalance < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {
            available_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::AvailableBalance, pending_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PendingBalance, posted_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PostedBalance
          }
        end

        sig do
          returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::AvailableBalance)
        end
        attr_accessor :available_balance

        sig do
          returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PendingBalance)
        end
        attr_accessor :pending_balance

        sig do
          returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PostedBalance)
        end
        attr_accessor :posted_balance

        sig do
          params(
            available_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::AvailableBalance,
            pending_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PendingBalance,
            posted_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PostedBalance
          ).void
        end
        def initialize(available_balance:, pending_balance:, posted_balance:); end

        sig { returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::Shape) }
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
            returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::AvailableBalance::Shape)
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
            returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PendingBalance::Shape)
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
            returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::EndingBalance::PostedBalance::Shape)
          end
          def to_h; end
        end
      end

      class StartingBalance < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {
            available_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::AvailableBalance, pending_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PendingBalance, posted_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PostedBalance
          }
        end

        sig do
          returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::AvailableBalance)
        end
        attr_accessor :available_balance

        sig do
          returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PendingBalance)
        end
        attr_accessor :pending_balance

        sig do
          returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PostedBalance)
        end
        attr_accessor :posted_balance

        sig do
          params(
            available_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::AvailableBalance,
            pending_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PendingBalance,
            posted_balance: ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PostedBalance
          ).void
        end
        def initialize(available_balance:, pending_balance:, posted_balance:); end

        sig { returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::Shape) }
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
            returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::AvailableBalance::Shape)
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
            returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PendingBalance::Shape)
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
            returns(ModernTreasury::Models::LedgerAccountStatementCreateResponse::StartingBalance::PostedBalance::Shape)
          end
          def to_h; end
        end
      end
    end
  end
end
