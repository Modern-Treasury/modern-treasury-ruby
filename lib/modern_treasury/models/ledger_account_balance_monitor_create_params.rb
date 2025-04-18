# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerAccountBalanceMonitors#create
    class LedgerAccountBalanceMonitorCreateParams < ModernTreasury::Internal::Type::BaseModel
      # @!parse
      #   extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

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

      # @!attribute [r] description
      #   An optional, free-form description for internal use.
      #
      #   @return [String, nil]
      optional :description, String

      # @!parse
      #   # @return [String]
      #   attr_writer :description

      # @!attribute [r] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!method initialize(alert_condition:, ledger_account_id:, description: nil, metadata: nil, request_options: {})
      #   @param alert_condition [ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams::AlertCondition]
      #   @param ledger_account_id [String]
      #   @param description [String]
      #   @param metadata [Hash{Symbol=>String}]
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

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
        #   Describes the condition that must be satisfied for the monitor to be triggered.
        #
        #   @param field [String]
        #   @param operator [String]
        #   @param value [Integer]
      end
    end
  end
end
