# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountSettlement < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   The amount of the ledger account settlement.
      #
      #   @return [Integer, nil]
      required :amount, Integer, nil?: true

      # @!attribute contra_ledger_account_id
      #   The id of the contra ledger account that sends to or receives funds from the
      #     settled ledger account.
      #
      #   @return [String]
      required :contra_ledger_account_id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The currency of the ledger account settlement.
      #
      #   @return [String]
      required :currency, String

      # @!attribute currency_exponent
      #   The currency exponent of the ledger account settlement.
      #
      #   @return [Integer, nil]
      required :currency_exponent, Integer, nil?: true

      # @!attribute description
      #   The description of the ledger account settlement.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute effective_at_upper_bound
      #   The exclusive upper bound of the effective_at timestamp of the ledger entries to
      #     be included in the ledger account settlement. The default value is the
      #     created_at timestamp of the ledger account settlement.
      #
      #   @return [Time]
      required :effective_at_upper_bound, Time

      # @!attribute ledger_id
      #   The id of the ledger that this ledger account settlement belongs to.
      #
      #   @return [String]
      required :ledger_id, String

      # @!attribute ledger_transaction_id
      #   The id of the ledger transaction that this settlement is associated with.
      #
      #   @return [String, nil]
      required :ledger_transaction_id, String, nil?: true

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #     if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, ModernTreasury::HashOf[String]

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute settled_ledger_account_id
      #   The id of the settled ledger account whose ledger entries are queried against,
      #     and its balance is reduced as a result.
      #
      #   @return [String]
      required :settled_ledger_account_id, String

      # @!attribute settlement_entry_direction
      #   The direction of the ledger entry with the settlement_ledger_account.
      #
      #   @return [String, nil]
      required :settlement_entry_direction, String, nil?: true

      # @!attribute status
      #   The status of the ledger account settlement. One of `processing`, `pending`,
      #     `posted`, `archiving` or `archived`.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerAccountSettlement::Status]
      required :status, enum: -> { ModernTreasury::Models::LedgerAccountSettlement::Status }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!parse
      #   # @param id [String]
      #   # @param amount [Integer, nil]
      #   # @param contra_ledger_account_id [String]
      #   # @param created_at [Time]
      #   # @param currency [String]
      #   # @param currency_exponent [Integer, nil]
      #   # @param description [String, nil]
      #   # @param effective_at_upper_bound [Time]
      #   # @param ledger_id [String]
      #   # @param ledger_transaction_id [String, nil]
      #   # @param live_mode [Boolean]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param object [String]
      #   # @param settled_ledger_account_id [String]
      #   # @param settlement_entry_direction [String, nil]
      #   # @param status [Symbol, ModernTreasury::Models::LedgerAccountSettlement::Status]
      #   # @param updated_at [Time]
      #   #
      #   def initialize(
      #     id:,
      #     amount:,
      #     contra_ledger_account_id:,
      #     created_at:,
      #     currency:,
      #     currency_exponent:,
      #     description:,
      #     effective_at_upper_bound:,
      #     ledger_id:,
      #     ledger_transaction_id:,
      #     live_mode:,
      #     metadata:,
      #     object:,
      #     settled_ledger_account_id:,
      #     settlement_entry_direction:,
      #     status:,
      #     updated_at:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # The status of the ledger account settlement. One of `processing`, `pending`,
      #   `posted`, `archiving` or `archived`.
      module Status
        extend ModernTreasury::Enum

        ARCHIVED = :archived
        ARCHIVING = :archiving
        DRAFTING = :drafting
        PENDING = :pending
        POSTED = :posted
        PROCESSING = :processing

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
