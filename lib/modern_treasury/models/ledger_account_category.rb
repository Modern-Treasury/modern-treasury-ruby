# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountCategory < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute balances
      #   The pending, posted, and available balances for this ledger account category. The posted balance is the sum of all posted entries on the account. The pending balance is the sum of all pending and posted entries on the account. The available balance is the posted incoming entries minus the sum of the pending and posted outgoing amounts.
      #
      #   @return [ModernTreasury::Models::LedgerAccountCategory::Balances]
      required :balances, -> { ModernTreasury::Models::LedgerAccountCategory::Balances }

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   The description of the ledger account category.
      #
      #   @return [String]
      required :description, String

      # @!attribute discarded_at
      #
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute ledger_id
      #   The id of the ledger that this account category belongs to.
      #
      #   @return [String]
      required :ledger_id, String

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash]
      required :metadata, Hash

      # @!attribute name
      #   The name of the ledger account category.
      #
      #   @return [String]
      required :name, String

      # @!attribute normal_balance
      #   The normal balance of the ledger account category.
      #
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
      required :normal_balance, enum: -> { ModernTreasury::Models::TransactionDirection }

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
      #   # @param balances [ModernTreasury::Models::LedgerAccountCategory::Balances] The pending, posted, and available balances for this ledger account category.
      #   #   The posted balance is the sum of all posted entries on the account. The pending
      #   #   balance is the sum of all pending and posted entries on the account. The
      #   #   available balance is the posted incoming entries minus the sum of the pending
      #   #   and posted outgoing amounts.
      #   #
      #   # @param created_at [String]
      #   #
      #   # @param description [String] The description of the ledger account category.
      #   #
      #   # @param discarded_at [String]
      #   #
      #   # @param ledger_id [String] The id of the ledger that this account category belongs to.
      #   #
      #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
      #   #   if it exists in the test environment.
      #   #
      #   # @param metadata [Hash] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   # @param name [String] The name of the ledger account category.
      #   #
      #   # @param normal_balance [String] The normal balance of the ledger account category.
      #   #
      #   # @param object [String]
      #   #
      #   # @param updated_at [String]
      #   #
      #   def initialize(
      #     id:,
      #     balances:,
      #     created_at:,
      #     description:,
      #     discarded_at:,
      #     ledger_id:,
      #     live_mode:,
      #     metadata:,
      #     name:,
      #     normal_balance:,
      #     object:,
      #     updated_at:
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      class Balances < ModernTreasury::BaseModel
        # @!attribute available_balance
        #   The available_balance is the sum of all posted inbound entries and pending outbound entries. For credit normal, available_amount = posted_credits - pending_debits; for debit normal, available_amount = posted_debits - pending_credits.
        #
        #   @return [ModernTreasury::Models::LedgerAccountCategory::Balances::AvailableBalance]
        required :available_balance,
                 -> { ModernTreasury::Models::LedgerAccountCategory::Balances::AvailableBalance }

        # @!attribute pending_balance
        #   The pending_balance is the sum of all pending and posted entries.
        #
        #   @return [ModernTreasury::Models::LedgerAccountCategory::Balances::PendingBalance]
        required :pending_balance,
                 -> {
                   ModernTreasury::Models::LedgerAccountCategory::Balances::PendingBalance
                 }

        # @!attribute posted_balance
        #   The posted_balance is the sum of all posted entries.
        #
        #   @return [ModernTreasury::Models::LedgerAccountCategory::Balances::PostedBalance]
        required :posted_balance,
                 -> {
                   ModernTreasury::Models::LedgerAccountCategory::Balances::PostedBalance
                 }

        # @!parse
        #   # The pending, posted, and available balances for this ledger account category.
        #   #   The posted balance is the sum of all posted entries on the account. The pending
        #   #   balance is the sum of all pending and posted entries on the account. The
        #   #   available balance is the posted incoming entries minus the sum of the pending
        #   #   and posted outgoing amounts.
        #   #
        #   # @param available_balance [ModernTreasury::Models::LedgerAccountCategory::Balances::AvailableBalance] The available_balance is the sum of all posted inbound entries and pending
        #   #   outbound entries. For credit normal, available_amount = posted_credits -
        #   #   pending_debits; for debit normal, available_amount = posted_debits -
        #   #   pending_credits.
        #   #
        #   # @param pending_balance [ModernTreasury::Models::LedgerAccountCategory::Balances::PendingBalance] The pending_balance is the sum of all pending and posted entries.
        #   #
        #   # @param posted_balance [ModernTreasury::Models::LedgerAccountCategory::Balances::PostedBalance] The posted_balance is the sum of all posted entries.
        #   #
        #   def initialize(available_balance:, pending_balance:, posted_balance:) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

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
          #   def initialize(amount:, credits:, currency:, currency_exponent:, debits:) = super

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void
        end

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
          #   def initialize(amount:, credits:, currency:, currency_exponent:, debits:) = super

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void
        end

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
          #   def initialize(amount:, credits:, currency:, currency_exponent:, debits:) = super

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void
        end
      end
    end
  end
end
