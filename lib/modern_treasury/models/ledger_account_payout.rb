# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountPayout < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] amount
      #   The amount of the ledger account payout.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] created_at
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] currency
      #   The currency of the ledger account payout.
      #   @return [String]
      required :currency, String

      # @!attribute [rw] currency_exponent
      #   The currency exponent of the ledger account payout.
      #   @return [Integer]
      required :currency_exponent, Integer

      # @!attribute [rw] description
      #   The description of the ledger account payout.
      #   @return [String]
      required :description, String

      # @!attribute [rw] effective_at_upper_bound
      #   The exclusive upper bound of the effective_at timestamp of the ledger entries to be included in the ledger account payout. The default value is the created_at timestamp of the ledger account payout.
      #   @return [String]
      required :effective_at_upper_bound, String

      # @!attribute [rw] funding_ledger_account_id
      #   The id of the funding ledger account that sends to or receives funds from the payout ledger account.
      #   @return [String]
      required :funding_ledger_account_id, String

      # @!attribute [rw] ledger_id
      #   The id of the ledger that this ledger account payout belongs to.
      #   @return [String]
      required :ledger_id, String

      # @!attribute [rw] ledger_transaction_id
      #   The id of the ledger transaction that this payout is associated with.
      #   @return [String]
      required :ledger_transaction_id, String

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

      # @!attribute [rw] payout_entry_direction
      #   The direction of the ledger entry with the payout_ledger_account.
      #   @return [String]
      required :payout_entry_direction, String

      # @!attribute [rw] payout_ledger_account_id
      #   The id of the payout ledger account whose ledger entries are queried against, and its balance is reduced as a result.
      #   @return [String]
      required :payout_ledger_account_id, String

      # @!attribute [rw] status
      #   The status of the ledger account payout. One of `processing`, `pending`, `posted`, `archiving`, `archived`.
      #   @return [Symbol]
      required :status, ModernTreasury::Enum.new(:archived, :archiving, :pending, :posted, :processing)

      # @!attribute [rw] updated_at
      #   @return [String]
      required :updated_at, String
    end
  end
end
