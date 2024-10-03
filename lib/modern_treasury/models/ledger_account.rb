# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccount < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] balances
      #   The pending, posted, and available balances for this ledger account. The posted balance is the sum of all posted entries on the account. The pending balance is the sum of all pending and posted entries on the account. The available balance is the posted incoming entries minus the sum of the pending and posted outgoing amounts.
      #   @return [ModernTreasury::Models::LedgerAccount::Balances]
      required :balances, -> { ModernTreasury::Models::LedgerAccount::Balances }

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] description
      #   The description of the ledger account.
      #   @return [String]
      required :description, String

      # @!attribute [rw] discarded_at
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute [rw] ledger_id
      #   The id of the ledger that this account belongs to.
      #   @return [String]
      required :ledger_id, String

      # @!attribute [rw] ledgerable_id
      #   If the ledger account links to another object in Modern Treasury, the id will be populated here, otherwise null.
      #   @return [String]
      required :ledgerable_id, String

      # @!attribute [rw] ledgerable_type
      #   If the ledger account links to another object in Modern Treasury, the type will be populated here, otherwise null. The value is one of internal_account or external_account.
      #   @return [Symbol, ModernTreasury::Models::LedgerAccount::LedgerableType]
      required :ledgerable_type, enum: -> { ModernTreasury::Models::LedgerAccount::LedgerableType }

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] lock_version
      #   Lock version of the ledger account.
      #   @return [Integer]
      required :lock_version, Integer

      # @!attribute [rw] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      required :metadata, Hash

      # @!attribute [rw] name_
      #   The name of the ledger account.
      #   @return [String]
      required :name_, String

      # @!attribute [rw] normal_balance
      #   The normal balance of the ledger account.
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
      required :normal_balance, enum: -> { ModernTreasury::Models::TransactionDirection }

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      class Balances < BaseModel
        # @!attribute [rw] available_balance
        #   The available_balance is the sum of all posted inbound entries and pending outbound entries. For credit normal, available_amount = posted_credits - pending_debits; for debit normal, available_amount = posted_debits - pending_credits.
        #   @return [ModernTreasury::Models::LedgerAccount::Balances::AvailableBalance]
        required :available_balance, -> { ModernTreasury::Models::LedgerAccount::Balances::AvailableBalance }

        # @!attribute [rw] effective_at_lower_bound
        #   The inclusive lower bound of the effective_at timestamp for the returned balances.
        #   @return [Time]
        required :effective_at_lower_bound, Time

        # @!attribute [rw] effective_at_upper_bound
        #   The exclusive upper bound of the effective_at timestamp for the returned balances.
        #   @return [Time]
        required :effective_at_upper_bound, Time

        # @!attribute [rw] pending_balance
        #   The pending_balance is the sum of all pending and posted entries.
        #   @return [ModernTreasury::Models::LedgerAccount::Balances::PendingBalance]
        required :pending_balance, -> { ModernTreasury::Models::LedgerAccount::Balances::PendingBalance }

        # @!attribute [rw] posted_balance
        #   The posted_balance is the sum of all posted entries.
        #   @return [ModernTreasury::Models::LedgerAccount::Balances::PostedBalance]
        required :posted_balance, -> { ModernTreasury::Models::LedgerAccount::Balances::PostedBalance }

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
        end
      end

      # If the ledger account links to another object in Modern Treasury, the type will be populated here, otherwise null. The value is one of internal_account or external_account.
      class LedgerableType < ModernTreasury::Enum
        COUNTERPARTY = :counterparty
        EXTERNAL_ACCOUNT = :external_account
        INTERNAL_ACCOUNT = :internal_account
        VIRTUAL_ACCOUNT = :virtual_account
      end
    end
  end
end
