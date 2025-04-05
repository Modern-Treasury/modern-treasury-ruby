# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountBalanceMonitor < ModernTreasury::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :id

      # Describes the condition that must be satisfied for the monitor to be triggered.
      sig { returns(ModernTreasury::Models::LedgerAccountBalanceMonitor::AlertCondition) }
      attr_reader :alert_condition

      sig do
        params(
          alert_condition: T.any(
            ModernTreasury::Models::LedgerAccountBalanceMonitor::AlertCondition,
            ModernTreasury::Internal::AnyHash
          )
        )
          .void
      end
      attr_writer :alert_condition

      sig { returns(Time) }
      attr_accessor :created_at

      # The ledger account's balances and the monitor state as of the current ledger
      # account lock version.
      sig { returns(ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState) }
      attr_reader :current_ledger_account_balance_state

      sig do
        params(
          current_ledger_account_balance_state: T.any(
            ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState,
            ModernTreasury::Internal::AnyHash
          )
        )
          .void
      end
      attr_writer :current_ledger_account_balance_state

      # An optional, free-form description for internal use.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      # The ledger account associated with this balance monitor.
      sig { returns(String) }
      attr_accessor :ledger_account_id

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :object

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          alert_condition: T.any(
            ModernTreasury::Models::LedgerAccountBalanceMonitor::AlertCondition,
            ModernTreasury::Internal::AnyHash
          ),
          created_at: Time,
          current_ledger_account_balance_state: T.any(
            ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState,
            ModernTreasury::Internal::AnyHash
          ),
          description: T.nilable(String),
          discarded_at: T.nilable(Time),
          ledger_account_id: String,
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          updated_at: Time
        )
          .returns(T.attached_class)
      end
      def self.new(
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
      def to_hash; end

      class AlertCondition < ModernTreasury::Internal::Type::BaseModel
        # One of `available_balance_amount`, `pending_balance_amount`,
        # `posted_balance_amount`, `ledger_account_lock_version`.
        sig { returns(String) }
        attr_accessor :field

        # A logical operator to compare the `field` against the `value`. One of
        # `less_than`, `less_than_or_equals`, `equals`, `greater_than_or_equals`,
        # `greater_than`.
        sig { returns(String) }
        attr_accessor :operator

        # The monitor's `current_ledger_account_balance_state.triggered` will be `true`
        # when comparing the `field` to this integer value using the `operator` is
        # logically true.
        sig { returns(Integer) }
        attr_accessor :value

        # Describes the condition that must be satisfied for the monitor to be triggered.
        sig { params(field: String, operator: String, value: Integer).returns(T.attached_class) }
        def self.new(field:, operator:, value:); end

        sig { override.returns({field: String, operator: String, value: Integer}) }
        def to_hash; end
      end

      class CurrentLedgerAccountBalanceState < ModernTreasury::Internal::Type::BaseModel
        sig { returns(ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances) }
        attr_reader :balances

        sig do
          params(
            balances: T.any(
              ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances,
              ModernTreasury::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :balances

        # The current lock version of the ledger account.
        sig { returns(Integer) }
        attr_accessor :ledger_account_lock_version

        # If `true`, the ledger account's balances satisfy the `alert_condition` at this
        # lock version.
        sig { returns(T::Boolean) }
        attr_accessor :triggered

        # The ledger account's balances and the monitor state as of the current ledger
        # account lock version.
        sig do
          params(
            balances: T.any(
              ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances,
              ModernTreasury::Internal::AnyHash
            ),
            ledger_account_lock_version: Integer,
            triggered: T::Boolean
          )
            .returns(T.attached_class)
        end
        def self.new(balances:, ledger_account_lock_version:, triggered:); end

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
        def to_hash; end

        class Balances < ModernTreasury::Internal::Type::BaseModel
          # The available_balance is the sum of all posted inbound entries and pending
          # outbound entries. For credit normal, available_amount = posted_credits -
          # pending_debits; for debit normal, available_amount = posted_debits -
          # pending_credits.
          sig do
            returns(
              ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::AvailableBalance
            )
          end
          attr_reader :available_balance

          sig do
            params(
              available_balance: T.any(
                ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::AvailableBalance,
                ModernTreasury::Internal::AnyHash
              )
            )
              .void
          end
          attr_writer :available_balance

          # The pending_balance is the sum of all pending and posted entries.
          sig do
            returns(
              ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PendingBalance
            )
          end
          attr_reader :pending_balance

          sig do
            params(
              pending_balance: T.any(
                ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PendingBalance,
                ModernTreasury::Internal::AnyHash
              )
            )
              .void
          end
          attr_writer :pending_balance

          # The posted_balance is the sum of all posted entries.
          sig do
            returns(
              ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PostedBalance
            )
          end
          attr_reader :posted_balance

          sig do
            params(
              posted_balance: T.any(
                ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PostedBalance,
                ModernTreasury::Internal::AnyHash
              )
            )
              .void
          end
          attr_writer :posted_balance

          sig do
            params(
              available_balance: T.any(
                ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::AvailableBalance,
                ModernTreasury::Internal::AnyHash
              ),
              pending_balance: T.any(
                ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PendingBalance,
                ModernTreasury::Internal::AnyHash
              ),
              posted_balance: T.any(
                ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PostedBalance,
                ModernTreasury::Internal::AnyHash
              )
            )
              .returns(T.attached_class)
          end
          def self.new(available_balance:, pending_balance:, posted_balance:); end

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
          def to_hash; end

          class AvailableBalance < ModernTreasury::Internal::Type::BaseModel
            sig { returns(Integer) }
            attr_accessor :amount

            sig { returns(Integer) }
            attr_accessor :credits

            # The currency of the ledger account.
            sig { returns(String) }
            attr_accessor :currency

            # The currency exponent of the ledger account.
            sig { returns(Integer) }
            attr_accessor :currency_exponent

            sig { returns(Integer) }
            attr_accessor :debits

            # The available_balance is the sum of all posted inbound entries and pending
            # outbound entries. For credit normal, available_amount = posted_credits -
            # pending_debits; for debit normal, available_amount = posted_debits -
            # pending_credits.
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
            def self.new(amount:, credits:, currency:, currency_exponent:, debits:); end

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
            def to_hash; end
          end

          class PendingBalance < ModernTreasury::Internal::Type::BaseModel
            sig { returns(Integer) }
            attr_accessor :amount

            sig { returns(Integer) }
            attr_accessor :credits

            # The currency of the ledger account.
            sig { returns(String) }
            attr_accessor :currency

            # The currency exponent of the ledger account.
            sig { returns(Integer) }
            attr_accessor :currency_exponent

            sig { returns(Integer) }
            attr_accessor :debits

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
            def self.new(amount:, credits:, currency:, currency_exponent:, debits:); end

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
            def to_hash; end
          end

          class PostedBalance < ModernTreasury::Internal::Type::BaseModel
            sig { returns(Integer) }
            attr_accessor :amount

            sig { returns(Integer) }
            attr_accessor :credits

            # The currency of the ledger account.
            sig { returns(String) }
            attr_accessor :currency

            # The currency exponent of the ledger account.
            sig { returns(Integer) }
            attr_accessor :currency_exponent

            sig { returns(Integer) }
            attr_accessor :debits

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
            def self.new(amount:, credits:, currency:, currency_exponent:, debits:); end

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
            def to_hash; end
          end
        end
      end
    end
  end
end
