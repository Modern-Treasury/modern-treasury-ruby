# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountSettlement < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] amount
      #   The amount of the ledger account settlement.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] contra_ledger_account_id
      #   The id of the contra ledger account that sends to or receives funds from the settled ledger account.
      #   @return [String]
      required :contra_ledger_account_id, String

      # @!attribute [rw] created_at
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] currency
      #   The currency of the ledger account settlement.
      #   @return [String]
      required :currency, String

      # @!attribute [rw] currency_exponent
      #   The currency exponent of the ledger account settlement.
      #   @return [Integer]
      required :currency_exponent, Integer

      # @!attribute [rw] description
      #   The description of the ledger account settlement.
      #   @return [String]
      required :description, String

      # @!attribute [rw] effective_at_upper_bound
      #   The exclusive upper bound of the effective_at timestamp of the ledger entries to be included in the ledger account settlement. The default value is the created_at timestamp of the ledger account settlement.
      #   @return [String]
      required :effective_at_upper_bound, String

      # @!attribute [rw] ledger_id
      #   The id of the ledger that this ledger account settlement belongs to.
      #   @return [String]
      required :ledger_id, String

      # @!attribute [rw] ledger_transaction_id
      #   The id of the ledger transaction that this settlement is associated with.
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

      # @!attribute [rw] settled_ledger_account_id
      #   The id of the settled ledger account whose ledger entries are queried against, and its balance is reduced as a result.
      #   @return [String]
      required :settled_ledger_account_id, String

      # @!attribute [rw] settlement_entry_direction
      #   The direction of the ledger entry with the settlement_ledger_account.
      #   @return [String]
      required :settlement_entry_direction, String

      # @!attribute [rw] status
      #   The status of the ledger account settlement. One of `processing`, `pending`, `posted`, `archiving` or `archived`.
      #   @return [Symbol]
      required :status, ModernTreasury::Enum.new(:archived, :archiving, :pending, :posted, :processing)

      # @!attribute [rw] updated_at
      #   @return [String]
      required :updated_at, String
    end
  end
end
