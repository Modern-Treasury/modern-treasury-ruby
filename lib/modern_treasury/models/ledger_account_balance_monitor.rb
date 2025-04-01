# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerAccountBalanceMonitors#create
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
      #   The ledger account's balances and the monitor state as of the current ledger
      #     account lock version.
      #
      #   @return [ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState]
      required :current_ledger_account_balance_state,
               -> { ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState }

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
      #     if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @return [Hash{Symbol=>String}]
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
      #   # @param alert_condition [ModernTreasury::Models::LedgerAccountBalanceMonitor::AlertCondition]
      #   # @param created_at [Time]
      #   # @param current_ledger_account_balance_state [ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState]
      #   # @param description [String, nil]
      #   # @param discarded_at [Time, nil]
      #   # @param ledger_account_id [String]
      #   # @param live_mode [Boolean]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param object [String]
      #   # @param updated_at [Time]
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

      # @see ModernTreasury::Models::LedgerAccountBalanceMonitor#alert_condition
      class AlertCondition < ModernTreasury::BaseModel
        # @!attribute field
        #   One of `available_balance_amount`, `pending_balance_amount`,
        #     `posted_balance_amount`, `ledger_account_lock_version`.
        #
        #   @return [String]
        required :field, String

        # @!attribute operator
        #   A logical operator to compare the `field` against the `value`. One of
        #     `less_than`, `less_than_or_equals`, `equals`, `greater_than_or_equals`,
        #     `greater_than`.
        #
        #   @return [String]
        required :operator, String

        # @!attribute value
        #   The monitor's `current_ledger_account_balance_state.triggered` will be `true`
        #     when comparing the `field` to this integer value using the `operator` is
        #     logically true.
        #
        #   @return [Integer]
        required :value, Integer

        # @!parse
        #   # Describes the condition that must be satisfied for the monitor to be triggered.
        #   #
        #   # @param field [String]
        #   # @param operator [String]
        #   # @param value [Integer]
        #   #
        #   def initialize(field:, operator:, value:, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end

      # @see ModernTreasury::Models::LedgerAccountBalanceMonitor#current_ledger_account_balance_state
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
        #   If `true`, the ledger account's balances satisfy the `alert_condition` at this
        #     lock version.
        #
        #   @return [Boolean]
        required :triggered, ModernTreasury::BooleanModel

        # @!parse
        #   # The ledger account's balances and the monitor state as of the current ledger
        #   #   account lock version.
        #   #
        #   # @param balances [ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances]
        #   # @param ledger_account_lock_version [Integer]
        #   # @param triggered [Boolean]
        #   #
        #   def initialize(balances:, ledger_account_lock_version:, triggered:, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # @see ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState#balances
        class Balances < ModernTreasury::BaseModel
          # @!attribute available_balance
          #   The available_balance is the sum of all posted inbound entries and pending
          #     outbound entries. For credit normal, available_amount = posted_credits -
          #     pending_debits; for debit normal, available_amount = posted_debits -
          #     pending_credits.
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
          #   # @param available_balance [ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::AvailableBalance]
          #   # @param pending_balance [ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PendingBalance]
          #   # @param posted_balance [ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances::PostedBalance]
          #   #
          #   def initialize(available_balance:, pending_balance:, posted_balance:, **) = super

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void

          # @see ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances#available_balance
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
            #   # @param credits [Integer]
            #   # @param currency [String]
            #   # @param currency_exponent [Integer]
            #   # @param debits [Integer]
            #   #
            #   def initialize(amount:, credits:, currency:, currency_exponent:, debits:, **) = super

            # def initialize: (Hash | ModernTreasury::BaseModel) -> void
          end

          # @see ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances#pending_balance
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
            #   # @param credits [Integer]
            #   # @param currency [String]
            #   # @param currency_exponent [Integer]
            #   # @param debits [Integer]
            #   #
            #   def initialize(amount:, credits:, currency:, currency_exponent:, debits:, **) = super

            # def initialize: (Hash | ModernTreasury::BaseModel) -> void
          end

          # @see ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState::Balances#posted_balance
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
            #   # @param credits [Integer]
            #   # @param currency [String]
            #   # @param currency_exponent [Integer]
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
