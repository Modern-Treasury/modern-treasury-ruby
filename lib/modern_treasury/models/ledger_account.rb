# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccount < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute balances
      #   The pending, posted, and available balances for this ledger account. The posted balance is the sum of all posted entries on the account. The pending balance is the sum of all pending and posted entries on the account. The available balance is the posted incoming entries minus the sum of the pending and posted outgoing amounts.
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
      #   @return [String]
      required :description, String

      # @!attribute discarded_at
      #
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute ledger_id
      #   The id of the ledger that this account belongs to.
      #
      #   @return [String]
      required :ledger_id, String

      # @!attribute ledgerable_id
      #   If the ledger account links to another object in Modern Treasury, the id will be populated here, otherwise null.
      #
      #   @return [String]
      required :ledgerable_id, String

      # @!attribute ledgerable_type
      #   If the ledger account links to another object in Modern Treasury, the type will be populated here, otherwise null. The value is one of internal_account or external_account.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerAccount::LedgerableType]
      required :ledgerable_type, enum: -> { ModernTreasury::Models::LedgerAccount::LedgerableType }

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute lock_version
      #   Lock version of the ledger account.
      #
      #   @return [Integer]
      required :lock_version, Integer

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash]
      required :metadata, Hash

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
      #   #
      #   # @param balances [ModernTreasury::Models::LedgerAccount::Balances] The pending, posted, and available balances for this ledger account. The posted
      #   #   balance is the sum of all posted entries on the account. The pending balance is
      #   #   the sum of all pending and posted entries on the account. The available balance
      #   #   is the posted incoming entries minus the sum of the pending and posted outgoing
      #   #   amounts.
      #   #
      #   # @param created_at [String]
      #   #
      #   # @param description [String] The description of the ledger account.
      #   #
      #   # @param discarded_at [String]
      #   #
      #   # @param ledger_id [String] The id of the ledger that this account belongs to.
      #   #
      #   # @param ledgerable_id [String] If the ledger account links to another object in Modern Treasury, the id will be
      #   #   populated here, otherwise null.
      #   #
      #   # @param ledgerable_type [String] If the ledger account links to another object in Modern Treasury, the type will
      #   #   be populated here, otherwise null. The value is one of internal_account or
      #   #   external_account.
      #   #
      #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
      #   #   if it exists in the test environment.
      #   #
      #   # @param lock_version [Integer] Lock version of the ledger account.
      #   #
      #   # @param metadata [Hash] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   # @param name [String] The name of the ledger account.
      #   #
      #   # @param normal_balance [String] The normal balance of the ledger account.
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
      #     ledgerable_id:,
      #     ledgerable_type:,
      #     live_mode:,
      #     lock_version:,
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
        #   @return [ModernTreasury::Models::LedgerAccount::Balances::AvailableBalance]
        required :available_balance, -> { ModernTreasury::Models::LedgerAccount::Balances::AvailableBalance }

        # @!attribute effective_at_lower_bound
        #   The inclusive lower bound of the effective_at timestamp for the returned balances.
        #
        #   @return [Time]
        required :effective_at_lower_bound, Time

        # @!attribute effective_at_upper_bound
        #   The exclusive upper bound of the effective_at timestamp for the returned balances.
        #
        #   @return [Time]
        required :effective_at_upper_bound, Time

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
        #   # @param available_balance [ModernTreasury::Models::LedgerAccount::Balances::AvailableBalance] The available_balance is the sum of all posted inbound entries and pending
        #   #   outbound entries. For credit normal, available_amount = posted_credits -
        #   #   pending_debits; for debit normal, available_amount = posted_debits -
        #   #   pending_credits.
        #   #
        #   # @param effective_at_lower_bound [String] The inclusive lower bound of the effective_at timestamp for the returned
        #   #   balances.
        #   #
        #   # @param effective_at_upper_bound [String] The exclusive upper bound of the effective_at timestamp for the returned
        #   #   balances.
        #   #
        #   # @param pending_balance [ModernTreasury::Models::LedgerAccount::Balances::PendingBalance] The pending_balance is the sum of all pending and posted entries.
        #   #
        #   # @param posted_balance [ModernTreasury::Models::LedgerAccount::Balances::PostedBalance] The posted_balance is the sum of all posted entries.
        #   #
        #   def initialize(
        #     available_balance:,
        #     effective_at_lower_bound:,
        #     effective_at_upper_bound:,
        #     pending_balance:,
        #     posted_balance:
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

      # If the ledger account links to another object in Modern Treasury, the type will be populated here, otherwise null. The value is one of internal_account or external_account.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :counterparty
      #   # ...
      # in :external_account
      #   # ...
      # in :internal_account
      #   # ...
      # in :virtual_account
      #   # ...
      # end
      # ```
      class LedgerableType < ModernTreasury::Enum
        COUNTERPARTY = :counterparty
        EXTERNAL_ACCOUNT = :external_account
        INTERNAL_ACCOUNT = :internal_account
        VIRTUAL_ACCOUNT = :virtual_account
      end
    end
  end
end
