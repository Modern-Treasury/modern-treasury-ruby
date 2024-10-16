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
      #   @return [Time]
      required :created_at, Time

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
      #   @return [Time]
      required :effective_at_upper_bound, Time

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
      #   @return [Symbol, ModernTreasury::Models::LedgerAccountSettlement::Status]
      required :status, enum: -> { ModernTreasury::Models::LedgerAccountSettlement::Status }

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      # The status of the ledger account settlement. One of `processing`, `pending`, `posted`, `archiving` or `archived`.
      class Status < ModernTreasury::Enum
        ARCHIVED = :archived
        ARCHIVING = :archiving
        PENDING = :pending
        POSTED = :posted
        PROCESSING = :processing
      end

      # @!parse
      #   # Create a new instance of LedgerAccountSettlement from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [Integer] :amount The amount of the ledger account settlement.
      #   #   @option data [String] :contra_ledger_account_id The id of the contra ledger account that sends to or receives funds from the
      #   #     settled ledger account.
      #   #   @option data [String] :created_at
      #   #   @option data [String] :currency The currency of the ledger account settlement.
      #   #   @option data [Integer] :currency_exponent The currency exponent of the ledger account settlement.
      #   #   @option data [String] :description The description of the ledger account settlement.
      #   #   @option data [String] :effective_at_upper_bound The exclusive upper bound of the effective_at timestamp of the ledger entries to
      #   #     be included in the ledger account settlement. The default value is the
      #   #     created_at timestamp of the ledger account settlement.
      #   #   @option data [String] :ledger_id The id of the ledger that this ledger account settlement belongs to.
      #   #   @option data [String] :ledger_transaction_id The id of the ledger transaction that this settlement is associated with.
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   #     strings.
      #   #   @option data [String] :object
      #   #   @option data [String] :settled_ledger_account_id The id of the settled ledger account whose ledger entries are queried against,
      #   #     and its balance is reduced as a result.
      #   #   @option data [String] :settlement_entry_direction The direction of the ledger entry with the settlement_ledger_account.
      #   #   @option data [String] :status The status of the ledger account settlement. One of `processing`, `pending`,
      #   #     `posted`, `archiving` or `archived`.
      #   #   @option data [String] :updated_at
      #   def initialize(data = {}) = super
    end
  end
end
