# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountBalanceMonitor < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(ModernTreasury::Models::LedgerAccountBalanceMonitor::AlertCondition) }
      def alert_condition
      end

      sig do
        params(_: ModernTreasury::Models::LedgerAccountBalanceMonitor::AlertCondition)
          .returns(ModernTreasury::Models::LedgerAccountBalanceMonitor::AlertCondition)
      end
      def alert_condition=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState) }
      def current_ledger_account_balance_state
      end

      sig do
        params(_: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState)
          .returns(ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState)
      end
      def current_ledger_account_balance_state=(_)
      end

      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      sig { returns(T.nilable(Time)) }
      def discarded_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def discarded_at=(_)
      end

      sig { returns(String) }
      def ledger_account_id
      end

      sig { params(_: String).returns(String) }
      def ledger_account_id=(_)
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

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

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
        )
          .void
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
      )
      end

      sig do
        override
          .returns(
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
          )
      end
      def to_hash
      end

      class AlertCondition < ModernTreasury::BaseModel
        sig { returns(String) }
        def field
        end

        sig { params(_: String).returns(String) }
        def field=(_)
        end

        sig { returns(String) }
        def operator
        end

        sig { params(_: String).returns(String) }
        def operator=(_)
        end

        sig { returns(Integer) }
        def value
        end

        sig { params(_: Integer).returns(Integer) }
        def value=(_)
        end

        sig { params(field: String, operator: String, value: Integer).void }
        def initialize(field:, operator:, value:)
        end

        sig { override.returns({field: String, operator: String, value: Integer}) }
        def to_hash
        end
      end

      class CurrentLedgerAccountBalanceState < ModernTreasury::BaseModel
        sig { returns(ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances) }
        def balances
        end

        sig do
          params(_: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances)
            .returns(ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances)
        end
        def balances=(_)
        end

        sig { returns(Integer) }
        def ledger_account_lock_version
        end

        sig { params(_: Integer).returns(Integer) }
        def ledger_account_lock_version=(_)
        end

        sig { returns(T::Boolean) }
        def triggered
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def triggered=(_)
        end

        sig do
          params(
            balances: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances,
            ledger_account_lock_version: Integer,
            triggered: T::Boolean
          )
            .void
        end
        def initialize(balances:, ledger_account_lock_version:, triggered:)
        end

        sig do
          override
            .returns(
              {
                balances: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances,
                ledger_account_lock_version: Integer,
                triggered: T::Boolean
              }
            )
        end
        def to_hash
        end

        class Balances < ModernTreasury::BaseModel
          sig do
            returns(
              ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::AvailableBalance
            )
          end
          def available_balance
          end

          sig do
            params(
              _: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::AvailableBalance
            )
              .returns(
                ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::AvailableBalance
              )
          end
          def available_balance=(_)
          end

          sig do
            returns(
              ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PendingBalance
            )
          end
          def pending_balance
          end

          sig do
            params(
              _: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PendingBalance
            )
              .returns(
                ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PendingBalance
              )
          end
          def pending_balance=(_)
          end

          sig do
            returns(
              ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PostedBalance
            )
          end
          def posted_balance
          end

          sig do
            params(
              _: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PostedBalance
            )
              .returns(
                ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PostedBalance
              )
          end
          def posted_balance=(_)
          end

          sig do
            params(
              available_balance: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::AvailableBalance,
              pending_balance: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PendingBalance,
              posted_balance: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PostedBalance
            )
              .void
          end
          def initialize(available_balance:, pending_balance:, posted_balance:)
          end

          sig do
            override
              .returns(
                {
                  available_balance: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::AvailableBalance,
                  pending_balance: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PendingBalance,
                  posted_balance: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PostedBalance
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
                .void
            end
            def initialize(amount:, credits:, currency:, currency_exponent:, debits:)
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
                .void
            end
            def initialize(amount:, credits:, currency:, currency_exponent:, debits:)
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
                .void
            end
            def initialize(amount:, credits:, currency:, currency_exponent:, debits:)
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
      end
    end
  end
end
