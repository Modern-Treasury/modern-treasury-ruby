# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerAccountCategories#create
    class LedgerAccountCategory < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute balances
      #   The pending, posted, and available balances for this ledger account category.
      #   The posted balance is the sum of all posted entries on the account. The pending
      #   balance is the sum of all pending and posted entries on the account. The
      #   available balance is the posted incoming entries minus the sum of the pending
      #   and posted outgoing amounts.
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
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute discarded_at
      #
      #   @return [Time, nil]
      required :discarded_at, Time, nil?: true

      # @!attribute ledger_id
      #   The id of the ledger that this account category belongs to.
      #
      #   @return [String]
      required :ledger_id, String

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, ModernTreasury::Internal::Type::HashOf[String]

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
      #   # @param balances [ModernTreasury::Models::LedgerAccountCategory::Balances]
      #   # @param created_at [Time]
      #   # @param description [String, nil]
      #   # @param discarded_at [Time, nil]
      #   # @param ledger_id [String]
      #   # @param live_mode [Boolean]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param name [String]
      #   # @param normal_balance [Symbol, ModernTreasury::Models::TransactionDirection]
      #   # @param object [String]
      #   # @param updated_at [Time]
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
      #     updated_at:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void

      # @see ModernTreasury::Models::LedgerAccountCategory#balances
      class Balances < ModernTreasury::Internal::Type::BaseModel
        # @!attribute available_balance
        #   The available_balance is the sum of all posted inbound entries and pending
        #   outbound entries. For credit normal, available_amount = posted_credits -
        #   pending_debits; for debit normal, available_amount = posted_debits -
        #   pending_credits.
        #
        #   @return [ModernTreasury::Models::LedgerAccountCategory::Balances::AvailableBalance]
        required :available_balance,
                 -> { ModernTreasury::Models::LedgerAccountCategory::Balances::AvailableBalance }

        # @!attribute pending_balance
        #   The pending_balance is the sum of all pending and posted entries.
        #
        #   @return [ModernTreasury::Models::LedgerAccountCategory::Balances::PendingBalance]
        required :pending_balance, -> { ModernTreasury::Models::LedgerAccountCategory::Balances::PendingBalance }

        # @!attribute posted_balance
        #   The posted_balance is the sum of all posted entries.
        #
        #   @return [ModernTreasury::Models::LedgerAccountCategory::Balances::PostedBalance]
        required :posted_balance, -> { ModernTreasury::Models::LedgerAccountCategory::Balances::PostedBalance }

        # @!parse
        #   # The pending, posted, and available balances for this ledger account category.
        #   # The posted balance is the sum of all posted entries on the account. The pending
        #   # balance is the sum of all pending and posted entries on the account. The
        #   # available balance is the posted incoming entries minus the sum of the pending
        #   # and posted outgoing amounts.
        #   #
        #   # @param available_balance [ModernTreasury::Models::LedgerAccountCategory::Balances::AvailableBalance]
        #   # @param pending_balance [ModernTreasury::Models::LedgerAccountCategory::Balances::PendingBalance]
        #   # @param posted_balance [ModernTreasury::Models::LedgerAccountCategory::Balances::PostedBalance]
        #   #
        #   def initialize(available_balance:, pending_balance:, posted_balance:, **) = super

        # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void

        # @see ModernTreasury::Models::LedgerAccountCategory::Balances#available_balance
        class AvailableBalance < ModernTreasury::Internal::Type::BaseModel
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
          #   # outbound entries. For credit normal, available_amount = posted_credits -
          #   # pending_debits; for debit normal, available_amount = posted_debits -
          #   # pending_credits.
          #   #
          #   # @param amount [Integer]
          #   # @param credits [Integer]
          #   # @param currency [String]
          #   # @param currency_exponent [Integer]
          #   # @param debits [Integer]
          #   #
          #   def initialize(amount:, credits:, currency:, currency_exponent:, debits:, **) = super

          # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void
        end

        # @see ModernTreasury::Models::LedgerAccountCategory::Balances#pending_balance
        class PendingBalance < ModernTreasury::Internal::Type::BaseModel
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

          # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void
        end

        # @see ModernTreasury::Models::LedgerAccountCategory::Balances#posted_balance
        class PostedBalance < ModernTreasury::Internal::Type::BaseModel
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

          # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void
        end
      end
    end
  end
end
