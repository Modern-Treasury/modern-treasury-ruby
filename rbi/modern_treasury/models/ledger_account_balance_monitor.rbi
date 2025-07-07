# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountBalanceMonitor < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LedgerAccountBalanceMonitor,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # Describes the condition that must be satisfied for the monitor to be triggered.
      sig do
        returns(ModernTreasury::LedgerAccountBalanceMonitor::AlertCondition)
      end
      attr_reader :alert_condition

      sig do
        params(
          alert_condition:
            ModernTreasury::LedgerAccountBalanceMonitor::AlertCondition::OrHash
        ).void
      end
      attr_writer :alert_condition

      sig { returns(Time) }
      attr_accessor :created_at

      # The ledger account's balances and the monitor state as of the current ledger
      # account lock version.
      sig do
        returns(
          ModernTreasury::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState
        )
      end
      attr_reader :current_ledger_account_balance_state

      sig do
        params(
          current_ledger_account_balance_state:
            ModernTreasury::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::OrHash
        ).void
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
          alert_condition:
            ModernTreasury::LedgerAccountBalanceMonitor::AlertCondition::OrHash,
          created_at: Time,
          current_ledger_account_balance_state:
            ModernTreasury::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::OrHash,
          description: T.nilable(String),
          discarded_at: T.nilable(Time),
          ledger_account_id: String,
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Describes the condition that must be satisfied for the monitor to be triggered.
        alert_condition:,
        created_at:,
        # The ledger account's balances and the monitor state as of the current ledger
        # account lock version.
        current_ledger_account_balance_state:,
        # An optional, free-form description for internal use.
        description:,
        discarded_at:,
        # The ledger account associated with this balance monitor.
        ledger_account_id:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata:,
        object:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            alert_condition:
              ModernTreasury::LedgerAccountBalanceMonitor::AlertCondition,
            created_at: Time,
            current_ledger_account_balance_state:
              ModernTreasury::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState,
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

      class AlertCondition < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::LedgerAccountBalanceMonitor::AlertCondition,
              ModernTreasury::Internal::AnyHash
            )
          end

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
        sig do
          params(field: String, operator: String, value: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # One of `available_balance_amount`, `pending_balance_amount`,
          # `posted_balance_amount`, `ledger_account_lock_version`.
          field:,
          # A logical operator to compare the `field` against the `value`. One of
          # `less_than`, `less_than_or_equals`, `equals`, `greater_than_or_equals`,
          # `greater_than`.
          operator:,
          # The monitor's `current_ledger_account_balance_state.triggered` will be `true`
          # when comparing the `field` to this integer value using the `operator` is
          # logically true.
          value:
        )
        end

        sig do
          override.returns({ field: String, operator: String, value: Integer })
        end
        def to_hash
        end
      end

      class CurrentLedgerAccountBalanceState < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState,
              ModernTreasury::Internal::AnyHash
            )
          end

        sig { returns(ModernTreasury::LedgerBalances) }
        attr_reader :balances

        sig { params(balances: ModernTreasury::LedgerBalances::OrHash).void }
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
            balances: ModernTreasury::LedgerBalances::OrHash,
            ledger_account_lock_version: Integer,
            triggered: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          balances:,
          # The current lock version of the ledger account.
          ledger_account_lock_version:,
          # If `true`, the ledger account's balances satisfy the `alert_condition` at this
          # lock version.
          triggered:
        )
        end

        sig do
          override.returns(
            {
              balances: ModernTreasury::LedgerBalances,
              ledger_account_lock_version: Integer,
              triggered: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
