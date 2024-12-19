# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountBalanceMonitorCreateParams < ModernTreasury::BaseModel
      # @!attribute alert_condition
      #   Describes the condition that must be satisfied for the monitor to be triggered.
      #
      #   @return [ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams::AlertCondition]
      required :alert_condition,
               -> { ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams::AlertCondition }

      # @!attribute ledger_account_id
      #   The ledger account associated with this balance monitor.
      #
      #   @return [String]
      required :ledger_account_id, String

      # @!attribute description
      #   An optional, free-form description for internal use.
      #
      #   @return [String]
      optional :description, String

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash{Symbol => String}]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @param alert_condition [ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams::AlertCondition] Describes the condition that must be satisfied for the monitor to be triggered.
      #   #
      #   # @param ledger_account_id [String] The ledger account associated with this balance monitor.
      #   #
      #   # @param description [String, nil] An optional, free-form description for internal use.
      #   #
      #   # @param metadata [Hash{Symbol => String}, nil] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   def initialize(alert_condition:, ledger_account_id:, description: nil, metadata: nil) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      class AlertCondition < ModernTreasury::BaseModel
        # @!attribute field
        #   One of `available_balance_amount`, `pending_balance_amount`, `posted_balance_amount`, `ledger_account_lock_version`.
        #
        #   @return [String]
        required :field, String

        # @!attribute operator
        #   A logical operator to compare the `field` against the `value`. One of `less_than`, `less_than_or_equals`, `equals`, `greater_than_or_equals`, `greater_than`.
        #
        #   @return [String]
        required :operator, String

        # @!attribute value
        #   The monitor's `current_ledger_account_balance_state.triggered` will be `true` when comparing the `field` to this integer value using the `operator` is logically true.
        #
        #   @return [Integer]
        required :value, Integer

        # @!parse
        #   # Describes the condition that must be satisfied for the monitor to be triggered.
        #   #
        #   # @param field [String] One of `available_balance_amount`, `pending_balance_amount`,
        #   #   `posted_balance_amount`, `ledger_account_lock_version`.
        #   #
        #   # @param operator [String] A logical operator to compare the `field` against the `value`. One of
        #   #   `less_than`, `less_than_or_equals`, `equals`, `greater_than_or_equals`,
        #   #   `greater_than`.
        #   #
        #   # @param value [Integer] The monitor's `current_ledger_account_balance_state.triggered` will be `true`
        #   #   when comparing the `field` to this integer value using the `operator` is
        #   #   logically true.
        #   #
        #   def initialize(field:, operator:, value:) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end
    end
  end
end
