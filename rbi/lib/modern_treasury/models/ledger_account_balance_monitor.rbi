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

      # Describes the condition that must be satisfied for the monitor to be triggered.
      sig { returns(ModernTreasury::Models::LedgerAccountBalanceMonitor::AlertCondition) }
      def alert_condition
      end

      sig do
        params(
          _: T.any(ModernTreasury::Models::LedgerAccountBalanceMonitor::AlertCondition, ModernTreasury::Util::AnyHash)
        )
          .returns(
            T.any(ModernTreasury::Models::LedgerAccountBalanceMonitor::AlertCondition, ModernTreasury::Util::AnyHash)
          )
      end
      def alert_condition=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The ledger account's balances and the monitor state as of the current ledger
      #   account lock version.
      sig { returns(ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState) }
      def current_ledger_account_balance_state
      end

      sig do
        params(
          _: T.any(
            ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState,
            ModernTreasury::Util::AnyHash
          )
        )
          .returns(
            T.any(
              ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState,
              ModernTreasury::Util::AnyHash
            )
          )
      end
      def current_ledger_account_balance_state=(_)
      end

      # An optional, free-form description for internal use.
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

      # The ledger account associated with this balance monitor.
      sig { returns(String) }
      def ledger_account_id
      end

      sig { params(_: String).returns(String) }
      def ledger_account_id=(_)
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
        # One of `available_balance_amount`, `pending_balance_amount`,
        #   `posted_balance_amount`, `ledger_account_lock_version`.
        sig { returns(String) }
        def field
        end

        sig { params(_: String).returns(String) }
        def field=(_)
        end

        # A logical operator to compare the `field` against the `value`. One of
        #   `less_than`, `less_than_or_equals`, `equals`, `greater_than_or_equals`,
        #   `greater_than`.
        sig { returns(String) }
        def operator
        end

        sig { params(_: String).returns(String) }
        def operator=(_)
        end

        # The monitor's `current_ledger_account_balance_state.triggered` will be `true`
        #   when comparing the `field` to this integer value using the `operator` is
        #   logically true.
        sig { returns(Integer) }
        def value
        end

        sig { params(_: Integer).returns(Integer) }
        def value=(_)
        end

        # Describes the condition that must be satisfied for the monitor to be triggered.
        sig { params(field: String, operator: String, value: Integer).returns(T.attached_class) }
        def self.new(field:, operator:, value:)
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
          params(
            _: T.any(
              ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances,
              ModernTreasury::Util::AnyHash
            )
          )
            .returns(
              T.any(
                ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances,
                ModernTreasury::Util::AnyHash
              )
            )
        end
        def balances=(_)
        end

        # The current lock version of the ledger account.
        sig { returns(Integer) }
        def ledger_account_lock_version
        end

        sig { params(_: Integer).returns(Integer) }
        def ledger_account_lock_version=(_)
        end

        # If `true`, the ledger account's balances satisfy the `alert_condition` at this
        #   lock version.
        sig { returns(T::Boolean) }
        def triggered
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def triggered=(_)
        end

        # The ledger account's balances and the monitor state as of the current ledger
        #   account lock version.
        sig do
          params(
            balances: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances,
            ledger_account_lock_version: Integer,
            triggered: T::Boolean
          )
            .returns(T.attached_class)
        end
        def self.new(balances:, ledger_account_lock_version:, triggered:)
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
          # The available_balance is the sum of all posted inbound entries and pending
          #   outbound entries. For credit normal, available_amount = posted_credits -
          #   pending_debits; for debit normal, available_amount = posted_debits -
          #   pending_credits.
          sig do
            returns(
              ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::AvailableBalance
            )
          end
          def available_balance
          end

          sig do
            params(
              _: T.any(
                ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::AvailableBalance,
                ModernTreasury::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::AvailableBalance,
                  ModernTreasury::Util::AnyHash
                )
              )
          end
          def available_balance=(_)
          end

          # The pending_balance is the sum of all pending and posted entries.
          sig do
            returns(
              ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PendingBalance
            )
          end
          def pending_balance
          end

          sig do
            params(
              _: T.any(
                ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PendingBalance,
                ModernTreasury::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PendingBalance,
                  ModernTreasury::Util::AnyHash
                )
              )
          end
          def pending_balance=(_)
          end

          # The posted_balance is the sum of all posted entries.
          sig do
            returns(
              ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PostedBalance
            )
          end
          def posted_balance
          end

          sig do
            params(
              _: T.any(
                ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PostedBalance,
                ModernTreasury::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PostedBalance,
                  ModernTreasury::Util::AnyHash
                )
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
              .returns(T.attached_class)
          end
          def self.new(available_balance:, pending_balance:, posted_balance:)
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
      end
    end
  end
end
