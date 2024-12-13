# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountStatementRetrieveResponse < ModernTreasury::BaseModel
      # @!attribute id
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   The description of the ledger account statement.
      #   @return [String]
      required :description, String

      # @!attribute effective_at_lower_bound
      #   The inclusive lower bound of the effective_at timestamp of the ledger entries to be included in the ledger account statement.
      #   @return [Time]
      required :effective_at_lower_bound, Time

      # @!attribute effective_at_upper_bound
      #   The exclusive upper bound of the effective_at timestamp of the ledger entries to be included in the ledger account statement.
      #   @return [Time]
      required :effective_at_upper_bound, Time

      # @!attribute ending_balance
      #   The pending, posted, and available balances for this ledger account at the `effective_at_upper_bound`. The posted balance is the sum of all posted entries on the account. The pending balance is the sum of all pending and posted entries on the account. The available balance is the posted incoming entries minus the sum of the pending and posted outgoing amounts.
      #   @return [ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance]
      required :ending_balance,
               -> { ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance }

      # @!attribute ledger_account_id
      #   The id of the ledger account whose ledger entries are queried against, and its balances are computed as a result.
      #   @return [String]
      required :ledger_account_id, String

      # @!attribute ledger_account_lock_version
      #   Lock version of the ledger account at the time of statement generation.
      #   @return [Integer]
      required :ledger_account_lock_version, Integer

      # @!attribute ledger_account_normal_balance
      #   The normal balance of the ledger account.
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
      required :ledger_account_normal_balance, enum: -> { ModernTreasury::Models::TransactionDirection }

      # @!attribute ledger_id
      #   The id of the ledger that this ledger account statement belongs to.
      #   @return [String]
      required :ledger_id, String

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      required :metadata, Hash

      # @!attribute object
      #   @return [String]
      required :object, String

      # @!attribute starting_balance
      #   The pending, posted, and available balances for this ledger account at the `effective_at_lower_bound`. The posted balance is the sum of all posted entries on the account. The pending balance is the sum of all pending and posted entries on the account. The available balance is the posted incoming entries minus the sum of the pending and posted outgoing amounts.
      #   @return [ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance]
      required :starting_balance,
               -> { ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance }

      # @!attribute updated_at
      #   @return [Time]
      required :updated_at, Time

      class EndingBalance < ModernTreasury::BaseModel
        # @!attribute available_balance
        #   The available_balance is the sum of all posted inbound entries and pending outbound entries. For credit normal, available_amount = posted_credits - pending_debits; for debit normal, available_amount = posted_debits - pending_credits.
        #   @return [ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance::AvailableBalance]
        required :available_balance,
                 -> { ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance::AvailableBalance }

        # @!attribute pending_balance
        #   The pending_balance is the sum of all pending and posted entries.
        #   @return [ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance::PendingBalance]
        required :pending_balance,
                 -> { ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance::PendingBalance }

        # @!attribute posted_balance
        #   The posted_balance is the sum of all posted entries.
        #   @return [ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance::PostedBalance]
        required :posted_balance,
                 -> { ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::EndingBalance::PostedBalance }

        class AvailableBalance < ModernTreasury::BaseModel
          # @!attribute amount
          #   @return [Integer]
          required :amount, Integer

          # @!attribute credits
          #   @return [Integer]
          required :credits, Integer

          # @!attribute currency
          #   The currency of the ledger account.
          #   @return [String]
          required :currency, String

          # @!attribute currency_exponent
          #   The currency exponent of the ledger account.
          #   @return [Integer]
          required :currency_exponent, Integer

          # @!attribute debits
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

        class PendingBalance < ModernTreasury::BaseModel
          # @!attribute amount
          #   @return [Integer]
          required :amount, Integer

          # @!attribute credits
          #   @return [Integer]
          required :credits, Integer

          # @!attribute currency
          #   The currency of the ledger account.
          #   @return [String]
          required :currency, String

          # @!attribute currency_exponent
          #   The currency exponent of the ledger account.
          #   @return [Integer]
          required :currency_exponent, Integer

          # @!attribute debits
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

        class PostedBalance < ModernTreasury::BaseModel
          # @!attribute amount
          #   @return [Integer]
          required :amount, Integer

          # @!attribute credits
          #   @return [Integer]
          required :credits, Integer

          # @!attribute currency
          #   The currency of the ledger account.
          #   @return [String]
          required :currency, String

          # @!attribute currency_exponent
          #   The currency exponent of the ledger account.
          #   @return [Integer]
          required :currency_exponent, Integer

          # @!attribute debits
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
        #   # Create a new instance of EndingBalance from a Hash of raw data.
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

      class StartingBalance < ModernTreasury::BaseModel
        # @!attribute available_balance
        #   The available_balance is the sum of all posted inbound entries and pending outbound entries. For credit normal, available_amount = posted_credits - pending_debits; for debit normal, available_amount = posted_debits - pending_credits.
        #   @return [ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance::AvailableBalance]
        required :available_balance,
                 -> { ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance::AvailableBalance }

        # @!attribute pending_balance
        #   The pending_balance is the sum of all pending and posted entries.
        #   @return [ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance::PendingBalance]
        required :pending_balance,
                 -> { ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance::PendingBalance }

        # @!attribute posted_balance
        #   The posted_balance is the sum of all posted entries.
        #   @return [ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance::PostedBalance]
        required :posted_balance,
                 -> { ModernTreasury::Models::LedgerAccountStatementRetrieveResponse::StartingBalance::PostedBalance }

        class AvailableBalance < ModernTreasury::BaseModel
          # @!attribute amount
          #   @return [Integer]
          required :amount, Integer

          # @!attribute credits
          #   @return [Integer]
          required :credits, Integer

          # @!attribute currency
          #   The currency of the ledger account.
          #   @return [String]
          required :currency, String

          # @!attribute currency_exponent
          #   The currency exponent of the ledger account.
          #   @return [Integer]
          required :currency_exponent, Integer

          # @!attribute debits
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

        class PendingBalance < ModernTreasury::BaseModel
          # @!attribute amount
          #   @return [Integer]
          required :amount, Integer

          # @!attribute credits
          #   @return [Integer]
          required :credits, Integer

          # @!attribute currency
          #   The currency of the ledger account.
          #   @return [String]
          required :currency, String

          # @!attribute currency_exponent
          #   The currency exponent of the ledger account.
          #   @return [Integer]
          required :currency_exponent, Integer

          # @!attribute debits
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

        class PostedBalance < ModernTreasury::BaseModel
          # @!attribute amount
          #   @return [Integer]
          required :amount, Integer

          # @!attribute credits
          #   @return [Integer]
          required :credits, Integer

          # @!attribute currency
          #   The currency of the ledger account.
          #   @return [String]
          required :currency, String

          # @!attribute currency_exponent
          #   The currency exponent of the ledger account.
          #   @return [Integer]
          required :currency_exponent, Integer

          # @!attribute debits
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
        #   # Create a new instance of StartingBalance from a Hash of raw data.
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
      #   # Create a new instance of LedgerAccountStatementRetrieveResponse from a Hash of
      #   #   raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [String] :created_at
      #   #   @option data [String] :description The description of the ledger account statement.
      #   #   @option data [String] :effective_at_lower_bound The inclusive lower bound of the effective_at timestamp of the ledger entries to
      #   #     be included in the ledger account statement.
      #   #   @option data [String] :effective_at_upper_bound The exclusive upper bound of the effective_at timestamp of the ledger entries to
      #   #     be included in the ledger account statement.
      #   #   @option data [Object] :ending_balance The pending, posted, and available balances for this ledger account at the
      #   #     `effective_at_upper_bound`. The posted balance is the sum of all posted entries
      #   #     on the account. The pending balance is the sum of all pending and posted entries
      #   #     on the account. The available balance is the posted incoming entries minus the
      #   #     sum of the pending and posted outgoing amounts.
      #   #   @option data [String] :ledger_account_id The id of the ledger account whose ledger entries are queried against, and its
      #   #     balances are computed as a result.
      #   #   @option data [Integer] :ledger_account_lock_version Lock version of the ledger account at the time of statement generation.
      #   #   @option data [String] :ledger_account_normal_balance The normal balance of the ledger account.
      #   #   @option data [String] :ledger_id The id of the ledger that this ledger account statement belongs to.
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   #     strings.
      #   #   @option data [String] :object
      #   #   @option data [Object] :starting_balance The pending, posted, and available balances for this ledger account at the
      #   #     `effective_at_lower_bound`. The posted balance is the sum of all posted entries
      #   #     on the account. The pending balance is the sum of all pending and posted entries
      #   #     on the account. The available balance is the posted incoming entries minus the
      #   #     sum of the pending and posted outgoing amounts.
      #   #   @option data [String] :updated_at
      #   def initialize(data = {}) = super
    end
  end
end
