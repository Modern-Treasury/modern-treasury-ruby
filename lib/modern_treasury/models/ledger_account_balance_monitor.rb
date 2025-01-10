# frozen_string_literal: true

module ModernTreasury
  module Models
    # @example
    #
    # ```ruby
    # ledger_account_balance_monitor => {
    #   id: String,
    #   alert_condition: ModernTreasury::Models::LedgerAccountBalanceMonitor::AlertCondition,
    #   created_at: Time,
    #   current_ledger_account_balance_state: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState,
    #   description: String,
    #   **_
    # }
    # ```
    class LedgerAccountBalanceMonitor < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute alert_condition
      #   Describes the condition that must be satisfied for the monitor to be triggered.
      #
      #   @return [ModernTreasury::Models::LedgerAccountBalanceMonitor::AlertCondition]
      required :alert_condition, -> { ModernTreasury::Models::LedgerAccountBalanceMonitor::AlertCondition }

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute current_ledger_account_balance_state
      #   The ledger account's balances and the monitor state as of the current ledger account lock version.
      #
      #   @return [ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState]
      required :current_ledger_account_balance_state,
               -> { ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState }

      # @!attribute description
      #   An optional, free-form description for internal use.
      #
      #   @return [String, nil]
      required :description, String

      # @!attribute discarded_at
      #
      #   @return [Time, nil]
      required :discarded_at, Time

      # @!attribute ledger_account_id
      #   The ledger account associated with this balance monitor.
      #
      #   @return [String]
      required :ledger_account_id, String

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash{Symbol => String}]
      required :metadata, ModernTreasury::HashOf[String]

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param alert_condition [ModernTreasury::Models::LedgerAccountBalanceMonitor::AlertCondition] Describes the condition that must be satisfied for the monitor to be triggered.
      #   #
      #   # @param created_at [String]
      #   #
      #   # @param current_ledger_account_balance_state [ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState] The ledger account's balances and the monitor state as of the current ledger
      #   #   account lock version.
      #   #
      #   # @param description [String, nil] An optional, free-form description for internal use.
      #   #
      #   # @param discarded_at [String, nil]
      #   #
      #   # @param ledger_account_id [String] The ledger account associated with this balance monitor.
      #   #
      #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
      #   #   if it exists in the test environment.
      #   #
      #   # @param metadata [Hash{Symbol => String}] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   # @param object [String]
      #   #
      #   # @param updated_at [String]
      #   #
      #   def initialize(
      #     id:,
      #     alert_condition:,
      #     created_at:,
      #     current_ledger_account_balance_state:,
      #     description:,
      #     discarded_at:,
      #     ledger_account_id:,
      #     live_mode:,
      #     metadata:,
      #     object:,
      #     updated_at:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @example
      #
      # ```ruby
      # alert_condition => {
      #   field: String,
      #   operator: String,
      #   value: Integer
      # }
      # ```
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
        #   def initialize(field:, operator:, value:, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end

      # @example
      #
      # ```ruby
      # current_ledger_account_balance_state => {
      #   balances: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances,
      #   ledger_account_lock_version: Integer,
      #   triggered: ModernTreasury::BooleanModel
      # }
      # ```
      class CurrentLedgerAccountBalanceState < ModernTreasury::BaseModel
        # @!attribute balances
        #
        #   @return [ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances]
        required :balances,
                 -> { ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances }

        # @!attribute ledger_account_lock_version
        #   The current lock version of the ledger account.
        #
        #   @return [Integer]
        required :ledger_account_lock_version, Integer

        # @!attribute triggered
        #   If `true`, the ledger account's balances satisfy the `alert_condition` at this lock version.
        #
        #   @return [Boolean]
        required :triggered, ModernTreasury::BooleanModel

        # @!parse
        #   # The ledger account's balances and the monitor state as of the current ledger
        #   #   account lock version.
        #   #
        #   # @param balances [ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances]
        #   #
        #   # @param ledger_account_lock_version [Integer] The current lock version of the ledger account.
        #   #
        #   # @param triggered [Boolean] If `true`, the ledger account's balances satisfy the `alert_condition` at this
        #   #   lock version.
        #   #
        #   def initialize(balances:, ledger_account_lock_version:, triggered:, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # @example
        #
        # ```ruby
        # balances => {
        #   available_balance: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::AvailableBalance,
        #   pending_balance: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PendingBalance,
        #   posted_balance: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PostedBalance
        # }
        # ```
        class Balances < ModernTreasury::BaseModel
          # @!attribute available_balance
          #   The available_balance is the sum of all posted inbound entries and pending outbound entries. For credit normal, available_amount = posted_credits - pending_debits; for debit normal, available_amount = posted_debits - pending_credits.
          #
          #   @return [ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::AvailableBalance]
          required :available_balance,
                   -> { ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::AvailableBalance }

          # @!attribute pending_balance
          #   The pending_balance is the sum of all pending and posted entries.
          #
          #   @return [ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PendingBalance]
          required :pending_balance,
                   -> { ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PendingBalance }

          # @!attribute posted_balance
          #   The posted_balance is the sum of all posted entries.
          #
          #   @return [ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PostedBalance]
          required :posted_balance,
                   -> { ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PostedBalance }

          # @!parse
          #   # @param available_balance [ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::AvailableBalance] The available_balance is the sum of all posted inbound entries and pending
          #   #   outbound entries. For credit normal, available_amount = posted_credits -
          #   #   pending_debits; for debit normal, available_amount = posted_debits -
          #   #   pending_credits.
          #   #
          #   # @param pending_balance [ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PendingBalance] The pending_balance is the sum of all pending and posted entries.
          #   #
          #   # @param posted_balance [ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PostedBalance] The posted_balance is the sum of all posted entries.
          #   #
          #   def initialize(available_balance:, pending_balance:, posted_balance:, **) = super

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void

          # @example
          #
          # ```ruby
          # available_balance => {
          #   amount: Integer,
          #   credits: Integer,
          #   currency: String,
          #   currency_exponent: Integer,
          #   debits: Integer
          # }
          # ```
          class AvailableBalance < ModernTreasury::BaseModel
            # @!attribute amount
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute credits
            #
            #   @return [Integer]
            required :credits, Integer

            # @!attribute currency
            #   The currency of the ledger account.
            #
            #   @return [String]
            required :currency, String

            # @!attribute currency_exponent
            #   The currency exponent of the ledger account.
            #
            #   @return [Integer]
            required :currency_exponent, Integer

            # @!attribute debits
            #
            #   @return [Integer]
            required :debits, Integer

            # @!parse
            #   # The available_balance is the sum of all posted inbound entries and pending
            #   #   outbound entries. For credit normal, available_amount = posted_credits -
            #   #   pending_debits; for debit normal, available_amount = posted_debits -
            #   #   pending_credits.
            #   #
            #   # @param amount [Integer]
            #   #
            #   # @param credits [Integer]
            #   #
            #   # @param currency [String] The currency of the ledger account.
            #   #
            #   # @param currency_exponent [Integer] The currency exponent of the ledger account.
            #   #
            #   # @param debits [Integer]
            #   #
            #   def initialize(amount:, credits:, currency:, currency_exponent:, debits:, **) = super

            # def initialize: (Hash | ModernTreasury::BaseModel) -> void
          end

          # @example
          #
          # ```ruby
          # pending_balance => {
          #   amount: Integer,
          #   credits: Integer,
          #   currency: String,
          #   currency_exponent: Integer,
          #   debits: Integer
          # }
          # ```
          class PendingBalance < ModernTreasury::BaseModel
            # @!attribute amount
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute credits
            #
            #   @return [Integer]
            required :credits, Integer

            # @!attribute currency
            #   The currency of the ledger account.
            #
            #   @return [String]
            required :currency, String

            # @!attribute currency_exponent
            #   The currency exponent of the ledger account.
            #
            #   @return [Integer]
            required :currency_exponent, Integer

            # @!attribute debits
            #
            #   @return [Integer]
            required :debits, Integer

            # @!parse
            #   # The pending_balance is the sum of all pending and posted entries.
            #   #
            #   # @param amount [Integer]
            #   #
            #   # @param credits [Integer]
            #   #
            #   # @param currency [String] The currency of the ledger account.
            #   #
            #   # @param currency_exponent [Integer] The currency exponent of the ledger account.
            #   #
            #   # @param debits [Integer]
            #   #
            #   def initialize(amount:, credits:, currency:, currency_exponent:, debits:, **) = super

            # def initialize: (Hash | ModernTreasury::BaseModel) -> void
          end

          # @example
          #
          # ```ruby
          # posted_balance => {
          #   amount: Integer,
          #   credits: Integer,
          #   currency: String,
          #   currency_exponent: Integer,
          #   debits: Integer
          # }
          # ```
          class PostedBalance < ModernTreasury::BaseModel
            # @!attribute amount
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute credits
            #
            #   @return [Integer]
            required :credits, Integer

            # @!attribute currency
            #   The currency of the ledger account.
            #
            #   @return [String]
            required :currency, String

            # @!attribute currency_exponent
            #   The currency exponent of the ledger account.
            #
            #   @return [Integer]
            required :currency_exponent, Integer

            # @!attribute debits
            #
            #   @return [Integer]
            required :debits, Integer

            # @!parse
            #   # The posted_balance is the sum of all posted entries.
            #   #
            #   # @param amount [Integer]
            #   #
            #   # @param credits [Integer]
            #   #
            #   # @param currency [String] The currency of the ledger account.
            #   #
            #   # @param currency_exponent [Integer] The currency exponent of the ledger account.
            #   #
            #   # @param debits [Integer]
            #   #
            #   def initialize(amount:, credits:, currency:, currency_exponent:, debits:, **) = super

            # def initialize: (Hash | ModernTreasury::BaseModel) -> void
          end
        end
      end
    end
  end
end
