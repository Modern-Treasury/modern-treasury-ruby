# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerAccountBalanceMonitors#create
    class LedgerAccountBalanceMonitor < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute alert_condition
      #   Describes the condition that must be satisfied for the monitor to be triggered.
      #
      #   @return [ModernTreasury::Models::LedgerAccountBalanceMonitor::AlertCondition]
      required :alert_condition, -> { ModernTreasury::LedgerAccountBalanceMonitor::AlertCondition }

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute current_ledger_account_balance_state
      #   The ledger account's balances and the monitor state as of the current ledger
      #   account lock version.
      #
      #   @return [ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState]
      required :current_ledger_account_balance_state,
               -> { ModernTreasury::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState }

      # @!attribute description
      #   An optional, free-form description for internal use.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute discarded_at
      #
      #   @return [Time, nil]
      required :discarded_at, Time, nil?: true

      # @!attribute ledger_account_id
      #   The ledger account associated with this balance monitor.
      #
      #   @return [String]
      required :ledger_account_id, String

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, alert_condition:, created_at:, current_ledger_account_balance_state:, description:, discarded_at:, ledger_account_id:, live_mode:, metadata:, object:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LedgerAccountBalanceMonitor} for more details.
      #
      #   @param id [String]
      #
      #   @param alert_condition [ModernTreasury::Models::LedgerAccountBalanceMonitor::AlertCondition] Describes the condition that must be satisfied for the monitor to be triggered.
      #
      #   @param created_at [Time]
      #
      #   @param current_ledger_account_balance_state [ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState] The ledger account's balances and the monitor state as of the current ledger acc
      #
      #   @param description [String, nil] An optional, free-form description for internal use.
      #
      #   @param discarded_at [Time, nil]
      #
      #   @param ledger_account_id [String] The ledger account associated with this balance monitor.
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param object [String]
      #
      #   @param updated_at [Time]

      # @see ModernTreasury::Models::LedgerAccountBalanceMonitor#alert_condition
      class AlertCondition < ModernTreasury::Internal::Type::BaseModel
        # @!attribute field
        #   One of `available_balance_amount`, `pending_balance_amount`,
        #   `posted_balance_amount`, `ledger_account_lock_version`.
        #
        #   @return [String]
        required :field, String

        # @!attribute operator
        #   A logical operator to compare the `field` against the `value`. One of
        #   `less_than`, `less_than_or_equals`, `equals`, `greater_than_or_equals`,
        #   `greater_than`.
        #
        #   @return [String]
        required :operator, String

        # @!attribute value
        #   The monitor's `current_ledger_account_balance_state.triggered` will be `true`
        #   when comparing the `field` to this integer value using the `operator` is
        #   logically true.
        #
        #   @return [Integer]
        required :value, Integer

        # @!method initialize(field:, operator:, value:)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::LedgerAccountBalanceMonitor::AlertCondition} for more
        #   details.
        #
        #   Describes the condition that must be satisfied for the monitor to be triggered.
        #
        #   @param field [String] One of `available_balance_amount`, `pending_balance_amount`, `posted_balance_amo
        #
        #   @param operator [String] A logical operator to compare the `field` against the `value`. One of `less_than
        #
        #   @param value [Integer] The monitor's `current_ledger_account_balance_state.triggered` will be `true` wh
      end

      # @see ModernTreasury::Models::LedgerAccountBalanceMonitor#current_ledger_account_balance_state
      class CurrentLedgerAccountBalanceState < ModernTreasury::Internal::Type::BaseModel
        # @!attribute balances
        #
        #   @return [ModernTreasury::Models::LedgerBalances]
        required :balances, -> { ModernTreasury::LedgerBalances }

        # @!attribute ledger_account_lock_version
        #   The current lock version of the ledger account.
        #
        #   @return [Integer]
        required :ledger_account_lock_version, Integer

        # @!attribute triggered
        #   If `true`, the ledger account's balances satisfy the `alert_condition` at this
        #   lock version.
        #
        #   @return [Boolean]
        required :triggered, ModernTreasury::Internal::Type::Boolean

        # @!method initialize(balances:, ledger_account_lock_version:, triggered:)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState}
        #   for more details.
        #
        #   The ledger account's balances and the monitor state as of the current ledger
        #   account lock version.
        #
        #   @param balances [ModernTreasury::Models::LedgerBalances]
        #
        #   @param ledger_account_lock_version [Integer] The current lock version of the ledger account.
        #
        #   @param triggered [Boolean] If `true`, the ledger account's balances satisfy the `alert_condition` at this l
      end
    end
  end
end
