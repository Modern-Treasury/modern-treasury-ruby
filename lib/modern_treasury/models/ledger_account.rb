# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccount < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute balances
      #   The pending, posted, and available balances for this ledger account. The posted
      #     balance is the sum of all posted entries on the account. The pending balance is
      #     the sum of all pending and posted entries on the account. The available balance
      #     is the posted incoming entries minus the sum of the pending and posted outgoing
      #     amounts.
      #
      #   @return [ModernTreasury::Models::LedgerAccount::Balances]
      required :balances, -> { ModernTreasury::Models::LedgerAccount::Balances }

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   The description of the ledger account.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute discarded_at
      #
      #   @return [Time, nil]
      required :discarded_at, Time, nil?: true

      # @!attribute ledger_id
      #   The id of the ledger that this account belongs to.
      #
      #   @return [String]
      required :ledger_id, String

      # @!attribute ledgerable_id
      #   If the ledger account links to another object in Modern Treasury, the id will be
      #     populated here, otherwise null.
      #
      #   @return [String, nil]
      required :ledgerable_id, String, nil?: true

      # @!attribute ledgerable_type
      #   If the ledger account links to another object in Modern Treasury, the type will
      #     be populated here, otherwise null. The value is one of internal_account or
      #     external_account.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerAccount::LedgerableType, nil]
      required :ledgerable_type, enum: -> { ModernTreasury::Models::LedgerAccount::LedgerableType }, nil?: true

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #     if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute lock_version
      #   Lock version of the ledger account.
      #
      #   @return [Integer]
      required :lock_version, Integer

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, ModernTreasury::HashOf[String]

      # @!attribute name
      #   The name of the ledger account.
      #
      #   @return [String]
      required :name, String

      # @!attribute normal_balance
      #   The normal balance of the ledger account.
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
      #   # @param balances [ModernTreasury::Models::LedgerAccount::Balances]
      #   # @param created_at [Time]
      #   # @param description [String, nil]
      #   # @param discarded_at [Time, nil]
      #   # @param ledger_id [String]
      #   # @param ledgerable_id [String, nil]
      #   # @param ledgerable_type [Symbol, ModernTreasury::Models::LedgerAccount::LedgerableType, nil]
      #   # @param live_mode [Boolean]
      #   # @param lock_version [Integer]
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
      #     ledgerable_id:,
      #     ledgerable_type:,
      #     live_mode:,
      #     lock_version:,
      #     metadata:,
      #     name:,
      #     normal_balance:,
      #     object:,
      #     updated_at:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      class Balances < ModernTreasury::BaseModel
        # @!attribute available_balance
        #   The available_balance is the sum of all posted inbound entries and pending
        #     outbound entries. For credit normal, available_amount = posted_credits -
        #     pending_debits; for debit normal, available_amount = posted_debits -
        #     pending_credits.
        #
        #   @return [ModernTreasury::Models::LedgerAccount::Balances::AvailableBalance]
        required :available_balance, -> { ModernTreasury::Models::LedgerAccount::Balances::AvailableBalance }

        # @!attribute effective_at_lower_bound
        #   The inclusive lower bound of the effective_at timestamp for the returned
        #     balances.
        #
        #   @return [Time, nil]
        required :effective_at_lower_bound, Time, nil?: true

        # @!attribute effective_at_upper_bound
        #   The exclusive upper bound of the effective_at timestamp for the returned
        #     balances.
        #
        #   @return [Time, nil]
        required :effective_at_upper_bound, Time, nil?: true

        # @!attribute pending_balance
        #   The pending_balance is the sum of all pending and posted entries.
        #
        #   @return [ModernTreasury::Models::LedgerAccount::Balances::PendingBalance]
        required :pending_balance, -> { ModernTreasury::Models::LedgerAccount::Balances::PendingBalance }

        # @!attribute posted_balance
        #   The posted_balance is the sum of all posted entries.
        #
        #   @return [ModernTreasury::Models::LedgerAccount::Balances::PostedBalance]
        required :posted_balance, -> { ModernTreasury::Models::LedgerAccount::Balances::PostedBalance }

        # @!parse
        #   # The pending, posted, and available balances for this ledger account. The posted
        #   #   balance is the sum of all posted entries on the account. The pending balance is
        #   #   the sum of all pending and posted entries on the account. The available balance
        #   #   is the posted incoming entries minus the sum of the pending and posted outgoing
        #   #   amounts.
        #   #
        #   # @param available_balance [ModernTreasury::Models::LedgerAccount::Balances::AvailableBalance]
        #   # @param effective_at_lower_bound [Time, nil]
        #   # @param effective_at_upper_bound [Time, nil]
        #   # @param pending_balance [ModernTreasury::Models::LedgerAccount::Balances::PendingBalance]
        #   # @param posted_balance [ModernTreasury::Models::LedgerAccount::Balances::PostedBalance]
        #   #
        #   def initialize(
        #     available_balance:,
        #     effective_at_lower_bound:,
        #     effective_at_upper_bound:,
        #     pending_balance:,
        #     posted_balance:,
        #     **
        #   )
        #     super
        #   end

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
          #   # @param credits [Integer]
          #   # @param currency [String]
          #   # @param currency_exponent [Integer]
          #   # @param debits [Integer]
          #   #
          #   def initialize(amount:, credits:, currency:, currency_exponent:, debits:, **) = super

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
          #   # @param credits [Integer]
          #   # @param currency [String]
          #   # @param currency_exponent [Integer]
          #   # @param debits [Integer]
          #   #
          #   def initialize(amount:, credits:, currency:, currency_exponent:, debits:, **) = super

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
          #   # @param credits [Integer]
          #   # @param currency [String]
          #   # @param currency_exponent [Integer]
          #   # @param debits [Integer]
          #   #
          #   def initialize(amount:, credits:, currency:, currency_exponent:, debits:, **) = super

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void
        end
      end

      # @abstract
      #
      # If the ledger account links to another object in Modern Treasury, the type will
      #   be populated here, otherwise null. The value is one of internal_account or
      #   external_account.
      class LedgerableType < ModernTreasury::Enum
        COUNTERPARTY = :counterparty
        EXTERNAL_ACCOUNT = :external_account
        INTERNAL_ACCOUNT = :internal_account
        VIRTUAL_ACCOUNT = :virtual_account

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
