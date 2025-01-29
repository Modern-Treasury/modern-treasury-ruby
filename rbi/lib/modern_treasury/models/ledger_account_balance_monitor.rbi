# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountBalanceMonitor < ModernTreasury::BaseModel
      Shape = T.type_alias do
        {
          id: String,
          alert_condition: ModernTreasury::Models::LedgerAccountBalanceMonitor::AlertCondition,
          created_at: Time,
          current_ledger_account_balance_state: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState,
          description: T.nilable(String),
          discarded_at: T.nilable(Time),
          ledger_account_id: String,
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          updated_at: Time
        }
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(ModernTreasury::Models::LedgerAccountBalanceMonitor::AlertCondition) }
      attr_accessor :alert_condition

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState) }
      attr_accessor :current_ledger_account_balance_state

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      sig { returns(String) }
      attr_accessor :ledger_account_id

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :object

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          alert_condition: ModernTreasury::Models::LedgerAccountBalanceMonitor::AlertCondition,
          created_at: Time,
          current_ledger_account_balance_state: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState,
          description: T.nilable(String),
          discarded_at: T.nilable(Time),
          ledger_account_id: String,
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          updated_at: Time
        ).void
      end
      def initialize(
        id:,
        alert_condition:,
        created_at:,
        current_ledger_account_balance_state:,
        description:,
        discarded_at:,
        ledger_account_id:,
        live_mode:,
        metadata:,
        object:,
        updated_at:
      ); end

      sig { returns(ModernTreasury::Models::LedgerAccountBalanceMonitor::Shape) }
      def to_h; end

      class AlertCondition < ModernTreasury::BaseModel
        Shape = T.type_alias { {field: String, operator: String, value: Integer} }

        sig { returns(String) }
        attr_accessor :field

        sig { returns(String) }
        attr_accessor :operator

        sig { returns(Integer) }
        attr_accessor :value

        sig { params(field: String, operator: String, value: Integer).void }
        def initialize(field:, operator:, value:); end

        sig { returns(ModernTreasury::Models::LedgerAccountBalanceMonitor::AlertCondition::Shape) }
        def to_h; end
      end

      class CurrentLedgerAccountBalanceState < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {
            balances: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances,
            ledger_account_lock_version: Integer,
            triggered: T::Boolean
          }
        end

        sig do
          returns(ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances)
        end
        attr_accessor :balances

        sig { returns(Integer) }
        attr_accessor :ledger_account_lock_version

        sig { returns(T::Boolean) }
        attr_accessor :triggered

        sig do
          params(
            balances: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances,
            ledger_account_lock_version: Integer,
            triggered: T::Boolean
          ).void
        end
        def initialize(balances:, ledger_account_lock_version:, triggered:); end

        sig do
          returns(ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Shape)
        end
        def to_h; end

        class Balances < ModernTreasury::BaseModel
          Shape = T.type_alias do
            {
              available_balance: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::AvailableBalance, pending_balance: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PendingBalance, posted_balance: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PostedBalance
            }
          end

          sig do
            returns(ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::AvailableBalance)
          end
          attr_accessor :available_balance

          sig do
            returns(ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PendingBalance)
          end
          attr_accessor :pending_balance

          sig do
            returns(ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PostedBalance)
          end
          attr_accessor :posted_balance

          sig do
            params(
              available_balance: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::AvailableBalance,
              pending_balance: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PendingBalance,
              posted_balance: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PostedBalance
            ).void
          end
          def initialize(available_balance:, pending_balance:, posted_balance:); end

          sig do
            returns(ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::Shape)
          end
          def to_h; end

          class AvailableBalance < ModernTreasury::BaseModel
            Shape = T.type_alias do
              {
                amount: Integer,
                credits: Integer,
                currency: String,
                currency_exponent: Integer,
                debits: Integer
              }
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
              returns(ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::AvailableBalance::Shape)
            end
            def to_h; end
          end

          class PendingBalance < ModernTreasury::BaseModel
            Shape = T.type_alias do
              {
                amount: Integer,
                credits: Integer,
                currency: String,
                currency_exponent: Integer,
                debits: Integer
              }
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
              returns(ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PendingBalance::Shape)
            end
            def to_h; end
          end

          class PostedBalance < ModernTreasury::BaseModel
            Shape = T.type_alias do
              {
                amount: Integer,
                credits: Integer,
                currency: String,
                currency_exponent: Integer,
                debits: Integer
              }
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
              returns(ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PostedBalance::Shape)
            end
            def to_h; end
          end
        end
      end
    end
  end
end
