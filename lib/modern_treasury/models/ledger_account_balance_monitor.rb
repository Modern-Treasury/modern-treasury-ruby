# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountBalanceMonitor < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] alert_condition
      #   Describes the condition that must be satisfied for the monitor to be triggered.
      #   @return [ModernTreasury::Models::LedgerAccountBalanceMonitor::AlertCondition]
      required :alert_condition, -> { ModernTreasury::Models::LedgerAccountBalanceMonitor::AlertCondition }

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] current_ledger_account_balance_state
      #   The ledger account's balances and the monitor state as of the current ledger account lock version.
      #   @return [ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState]
      required :current_ledger_account_balance_state,
               -> { ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState }

      # @!attribute [rw] description
      #   An optional, free-form description for internal use.
      #   @return [String]
      required :description, String

      # @!attribute [rw] discarded_at
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute [rw] ledger_account_id
      #   The ledger account associated with this balance monitor.
      #   @return [String]
      required :ledger_account_id, String

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      required :metadata, Hash

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      class AlertCondition < BaseModel
        # @!attribute [rw] field
        #   One of `available_balance_amount`, `pending_balance_amount`, `posted_balance_amount`, `ledger_account_lock_version`.
        #   @return [String]
        required :field, String

        # @!attribute [rw] operator
        #   A logical operator to compare the `field` against the `value`. One of `less_than`, `less_than_or_equals`, `equals`, `greater_than_or_equals`, `greater_than`.
        #   @return [String]
        required :operator, String

        # @!attribute [rw] value
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

      class CurrentLedgerAccountBalanceState < BaseModel
        # @!attribute [rw] balances
        #   @return [ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances]
        required :balances,
                 -> { ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances }

        # @!attribute [rw] ledger_account_lock_version
        #   The current lock version of the ledger account.
        #   @return [Integer]
        required :ledger_account_lock_version, Integer

        # @!attribute [rw] triggered
        #   If `true`, the ledger account's balances satisfy the `alert_condition` at this lock version.
        #   @return [Boolean]
        required :triggered, ModernTreasury::BooleanModel

        class Balances < BaseModel
          # @!attribute [rw] available_balance
          #   The available_balance is the sum of all posted inbound entries and pending outbound entries. For credit normal, available_amount = posted_credits - pending_debits; for debit normal, available_amount = posted_debits - pending_credits.
          #   @return [ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::AvailableBalance]
          required :available_balance,
                   -> { ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::AvailableBalance }

          # @!attribute [rw] pending_balance
          #   The pending_balance is the sum of all pending and posted entries.
          #   @return [ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PendingBalance]
          required :pending_balance,
                   -> { ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PendingBalance }

          # @!attribute [rw] posted_balance
          #   The posted_balance is the sum of all posted entries.
          #   @return [ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PostedBalance]
          required :posted_balance,
                   -> { ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PostedBalance }

          class AvailableBalance < BaseModel
            # @!attribute [rw] amount
            #   @return [Integer]
            required :amount, Integer

            # @!attribute [rw] credits
            #   @return [Integer]
            required :credits, Integer

            # @!attribute [rw] currency
            #   The currency of the ledger account.
            #   @return [String]
            required :currency, String

            # @!attribute [rw] currency_exponent
            #   The currency exponent of the ledger account.
            #   @return [Integer]
            required :currency_exponent, Integer

            # @!attribute [rw] debits
            #   @return [Integer]
            required :debits, Integer

            # @!parse
            #   # Create a new instance of AvailableBalance from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [Integer] :amount
            #   #   @option data [Integer] :credits
            #   #   @option data [String] :currency The currency of the ledger account.
            #   #   @option data [Integer] :currency_exponent The currency exponent of the ledger account.
            #   #   @option data [Integer] :debits
            #   def initialize(data = {}) = super
          end

          class PendingBalance < BaseModel
            # @!attribute [rw] amount
            #   @return [Integer]
            required :amount, Integer

            # @!attribute [rw] credits
            #   @return [Integer]
            required :credits, Integer

            # @!attribute [rw] currency
            #   The currency of the ledger account.
            #   @return [String]
            required :currency, String

            # @!attribute [rw] currency_exponent
            #   The currency exponent of the ledger account.
            #   @return [Integer]
            required :currency_exponent, Integer

            # @!attribute [rw] debits
            #   @return [Integer]
            required :debits, Integer

            # @!parse
            #   # Create a new instance of PendingBalance from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [Integer] :amount
            #   #   @option data [Integer] :credits
            #   #   @option data [String] :currency The currency of the ledger account.
            #   #   @option data [Integer] :currency_exponent The currency exponent of the ledger account.
            #   #   @option data [Integer] :debits
            #   def initialize(data = {}) = super
          end

          class PostedBalance < BaseModel
            # @!attribute [rw] amount
            #   @return [Integer]
            required :amount, Integer

            # @!attribute [rw] credits
            #   @return [Integer]
            required :credits, Integer

            # @!attribute [rw] currency
            #   The currency of the ledger account.
            #   @return [String]
            required :currency, String

            # @!attribute [rw] currency_exponent
            #   The currency exponent of the ledger account.
            #   @return [Integer]
            required :currency_exponent, Integer

            # @!attribute [rw] debits
            #   @return [Integer]
            required :debits, Integer

            # @!parse
            #   # Create a new instance of PostedBalance from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [Integer] :amount
            #   #   @option data [Integer] :credits
            #   #   @option data [String] :currency The currency of the ledger account.
            #   #   @option data [Integer] :currency_exponent The currency exponent of the ledger account.
            #   #   @option data [Integer] :debits
            #   def initialize(data = {}) = super
          end

          # @!parse
          #   # Create a new instance of Balances from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [Object] :available_balance The available_balance is the sum of all posted inbound entries and pending
          #   #     outbound entries. For credit normal, available_amount = posted_credits -
          #   #     pending_debits; for debit normal, available_amount = posted_debits -
          #   #     pending_credits.
          #   #   @option data [Object] :pending_balance The pending_balance is the sum of all pending and posted entries.
          #   #   @option data [Object] :posted_balance The posted_balance is the sum of all posted entries.
          #   def initialize(data = {}) = super
        end

        # @!parse
        #   # Create a new instance of CurrentLedgerAccountBalanceState from a Hash of raw
        #   #   data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Object] :balances
        #   #   @option data [Integer] :ledger_account_lock_version The current lock version of the ledger account.
        #   #   @option data [Hash] :triggered If `true`, the ledger account's balances satisfy the `alert_condition` at this
        #   #     lock version.
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of LedgerAccountBalanceMonitor from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [Object] :alert_condition Describes the condition that must be satisfied for the monitor to be triggered.
      #   #   @option data [String] :created_at
      #   #   @option data [Object] :current_ledger_account_balance_state The ledger account's balances and the monitor state as of the current ledger
      #   #     account lock version.
      #   #   @option data [String] :description An optional, free-form description for internal use.
      #   #   @option data [String] :discarded_at
      #   #   @option data [String] :ledger_account_id The ledger account associated with this balance monitor.
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   #     strings.
      #   #   @option data [String] :object
      #   #   @option data [String] :updated_at
      #   def initialize(data = {}) = super
    end
  end
end
