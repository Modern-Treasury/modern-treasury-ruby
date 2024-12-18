# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountCategory < ModernTreasury::BaseModel
      # @!attribute id
      #   @return [String]
      required :id, String

      # @!attribute balances
      #   The pending, posted, and available balances for this ledger account category. The posted balance is the sum of all posted entries on the account. The pending balance is the sum of all pending and posted entries on the account. The available balance is the posted incoming entries minus the sum of the pending and posted outgoing amounts.
      #   @return [ModernTreasury::Models::LedgerAccountCategory::Balances]
      required :balances, -> { ModernTreasury::Models::LedgerAccountCategory::Balances }

      # @!attribute created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   The description of the ledger account category.
      #   @return [String]
      required :description, String

      # @!attribute discarded_at
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute ledger_id
      #   The id of the ledger that this account category belongs to.
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

      # @!attribute name
      #   The name of the ledger account category.
      #   @return [String]
      required :name, String

      # @!attribute normal_balance
      #   The normal balance of the ledger account category.
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
      required :normal_balance, enum: -> { ModernTreasury::Models::TransactionDirection }

      # @!attribute object
      #   @return [String]
      required :object, String

      # @!attribute updated_at
      #   @return [Time]
      required :updated_at, Time

      class Balances < ModernTreasury::BaseModel
        # @!attribute available_balance
        #   The available_balance is the sum of all posted inbound entries and pending outbound entries. For credit normal, available_amount = posted_credits - pending_debits; for debit normal, available_amount = posted_debits - pending_credits.
        #   @return [ModernTreasury::Models::LedgerAccountCategory::Balances::AvailableBalance]
        required :available_balance,
                 -> { ModernTreasury::Models::LedgerAccountCategory::Balances::AvailableBalance }

        # @!attribute pending_balance
        #   The pending_balance is the sum of all pending and posted entries.
        #   @return [ModernTreasury::Models::LedgerAccountCategory::Balances::PendingBalance]
        required :pending_balance,
                 -> {
                   ModernTreasury::Models::LedgerAccountCategory::Balances::PendingBalance
                 }

        # @!attribute posted_balance
        #   The posted_balance is the sum of all posted entries.
        #   @return [ModernTreasury::Models::LedgerAccountCategory::Balances::PostedBalance]
        required :posted_balance,
                 -> {
                   ModernTreasury::Models::LedgerAccountCategory::Balances::PostedBalance
                 }

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
      #   # Create a new instance of LedgerAccountCategory from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [Object] :balances The pending, posted, and available balances for this ledger account category.
      #   #     The posted balance is the sum of all posted entries on the account. The pending
      #   #     balance is the sum of all pending and posted entries on the account. The
      #   #     available balance is the posted incoming entries minus the sum of the pending
      #   #     and posted outgoing amounts.
      #   #   @option data [String] :created_at
      #   #   @option data [String] :description The description of the ledger account category.
      #   #   @option data [String] :discarded_at
      #   #   @option data [String] :ledger_id The id of the ledger that this account category belongs to.
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   #     strings.
      #   #   @option data [String] :name The name of the ledger account category.
      #   #   @option data [String] :normal_balance The normal balance of the ledger account category.
      #   #   @option data [String] :object
      #   #   @option data [String] :updated_at
      #   def initialize(data = {}) = super
    end
  end
end
