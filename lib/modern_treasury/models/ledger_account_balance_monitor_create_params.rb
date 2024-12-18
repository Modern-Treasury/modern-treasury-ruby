# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountBalanceMonitorCreateParams < ModernTreasury::BaseModel
      # @!attribute alert_condition
      #   Describes the condition that must be satisfied for the monitor to be triggered.
      #   @return [ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams::AlertCondition]
      required :alert_condition,
               -> { ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams::AlertCondition }

      # @!attribute ledger_account_id
      #   The ledger account associated with this balance monitor.
      #   @return [String]
      required :ledger_account_id, String

      # @!attribute description
      #   An optional, free-form description for internal use.
      #   @return [String]
      optional :description, String

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      optional :metadata, Hash

      class AlertCondition < ModernTreasury::BaseModel
        # @!attribute field
        #   One of `available_balance_amount`, `pending_balance_amount`, `posted_balance_amount`, `ledger_account_lock_version`.
        #   @return [String]
        required :field, String

        # @!attribute operator
        #   A logical operator to compare the `field` against the `value`. One of `less_than`, `less_than_or_equals`, `equals`, `greater_than_or_equals`, `greater_than`.
        #   @return [String]
        required :operator, String

        # @!attribute value
        #   The monitor's `current_ledger_account_balance_state.triggered` will be `true` when comparing the `field` to this integer value using the `operator` is logically true.
        #   @return [Integer]
        required :value, Integer

        # @!parse
        #   # Create a new instance of AlertCondition from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :field One of `available_balance_amount`, `pending_balance_amount`,
        #   #     `posted_balance_amount`, `ledger_account_lock_version`.
        #   #   @option data [String] :operator A logical operator to compare the `field` against the `value`. One of
        #   #     `less_than`, `less_than_or_equals`, `equals`, `greater_than_or_equals`,
        #   #     `greater_than`.
        #   #   @option data [Integer] :value The monitor's `current_ledger_account_balance_state.triggered` will be `true`
        #   #     when comparing the `field` to this integer value using the `operator` is
        #   #     logically true.
        #   def initialize(data = {}) = super
      end
    end
  end
end
