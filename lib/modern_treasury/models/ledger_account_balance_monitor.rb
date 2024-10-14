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

        # Create a new instance of AlertCondition from a Hash of raw data.
        #
        # @overload initialize(field: nil, operator: nil, value: nil)
        # @param field [String] One of `available_balance_amount`, `pending_balance_amount`,
        #   `posted_balance_amount`, `ledger_account_lock_version`.
        # @param operator [String] A logical operator to compare the `field` against the `value`. One of
        #   `less_than`, `less_than_or_equals`, `equals`, `greater_than_or_equals`,
        #   `greater_than`.
        # @param value [Integer] The monitor's `current_ledger_account_balance_state.triggered` will be `true`
        #   when comparing the `field` to this integer value using the `operator` is
        #   logically true.
        def initialize(data = {})
          super
        end
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

            # Create a new instance of AvailableBalance from a Hash of raw data.
            #
            # @overload initialize(amount: nil, credits: nil, currency: nil, currency_exponent: nil, debits: nil)
            # @param amount [Integer]
            # @param credits [Integer]
            # @param currency [String] The currency of the ledger account.
            # @param currency_exponent [Integer] The currency exponent of the ledger account.
            # @param debits [Integer]
            def initialize(data = {})
              super
            end
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

            # Create a new instance of PendingBalance from a Hash of raw data.
            #
            # @overload initialize(amount: nil, credits: nil, currency: nil, currency_exponent: nil, debits: nil)
            # @param amount [Integer]
            # @param credits [Integer]
            # @param currency [String] The currency of the ledger account.
            # @param currency_exponent [Integer] The currency exponent of the ledger account.
            # @param debits [Integer]
            def initialize(data = {})
              super
            end
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

            # Create a new instance of PostedBalance from a Hash of raw data.
            #
            # @overload initialize(amount: nil, credits: nil, currency: nil, currency_exponent: nil, debits: nil)
            # @param amount [Integer]
            # @param credits [Integer]
            # @param currency [String] The currency of the ledger account.
            # @param currency_exponent [Integer] The currency exponent of the ledger account.
            # @param debits [Integer]
            def initialize(data = {})
              super
            end
          end

          # Create a new instance of Balances from a Hash of raw data.
          #
          # @overload initialize(available_balance: nil, pending_balance: nil, posted_balance: nil)
          # @param available_balance [Object] The available_balance is the sum of all posted inbound entries and pending
          #   outbound entries. For credit normal, available_amount = posted_credits -
          #   pending_debits; for debit normal, available_amount = posted_debits -
          #   pending_credits.
          # @param pending_balance [Object] The pending_balance is the sum of all pending and posted entries.
          # @param posted_balance [Object] The posted_balance is the sum of all posted entries.
          def initialize(data = {})
            super
          end
        end

        # Create a new instance of CurrentLedgerAccountBalanceState from a Hash of raw
        #   data.
        #
        # @overload initialize(balances: nil, ledger_account_lock_version: nil, triggered: nil)
        # @param balances [Object]
        # @param ledger_account_lock_version [Integer] The current lock version of the ledger account.
        # @param triggered [Hash] If `true`, the ledger account's balances satisfy the `alert_condition` at this
        #   lock version.
        def initialize(data = {})
          super
        end
      end

      # Create a new instance of LedgerAccountBalanceMonitor from a Hash of raw data.
      #
      # @overload initialize(id: nil, alert_condition: nil, created_at: nil, current_ledger_account_balance_state: nil, description: nil, discarded_at: nil, ledger_account_id: nil, live_mode: nil, metadata: nil, object: nil, updated_at: nil)
      # @param id [String]
      # @param alert_condition [Object] Describes the condition that must be satisfied for the monitor to be triggered.
      # @param created_at [String]
      # @param current_ledger_account_balance_state [Object] The ledger account's balances and the monitor state as of the current ledger
      #   account lock version.
      # @param description [String] An optional, free-form description for internal use.
      # @param discarded_at [String]
      # @param ledger_account_id [String] The ledger account associated with this balance monitor.
      # @param live_mode [Hash] This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      # @param metadata [Hash] Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @param object [String]
      # @param updated_at [String]
      def initialize(data = {})
        super
      end
    end
  end
end
