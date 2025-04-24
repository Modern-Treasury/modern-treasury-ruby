# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerAccountSettlements#create
    class LedgerAccountSettlement < ModernTreasury::Internal::Type::BaseModel
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
      #   settled ledger account.
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
      #   be included in the ledger account settlement. The default value is the
      #   created_at timestamp of the ledger account settlement.
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

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute settled_ledger_account_id
      #   The id of the settled ledger account whose ledger entries are queried against,
      #   and its balance is reduced as a result.
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
      #   `posted`, `archiving` or `archived`.
      #
      #   @return [Symbol, ModernTreasury::Models::LedgerAccountSettlement::Status]
      required :status, enum: -> { ModernTreasury::Models::LedgerAccountSettlement::Status }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, amount:, contra_ledger_account_id:, created_at:, currency:, currency_exponent:, description:, effective_at_upper_bound:, ledger_id:, ledger_transaction_id:, live_mode:, metadata:, object:, settled_ledger_account_id:, settlement_entry_direction:, status:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LedgerAccountSettlement} for more details.
      #
      #   @param id [String]
      #
      #   @param amount [Integer, nil] The amount of the ledger account settlement.
      #
      #   @param contra_ledger_account_id [String] The id of the contra ledger account that sends to or receives funds from the set
      #   ...
      #
      #   @param created_at [Time]
      #
      #   @param currency [String] The currency of the ledger account settlement.
      #
      #   @param currency_exponent [Integer, nil] The currency exponent of the ledger account settlement.
      #
      #   @param description [String, nil] The description of the ledger account settlement.
      #
      #   @param effective_at_upper_bound [Time] The exclusive upper bound of the effective_at timestamp of the ledger entries to
      #   ...
      #
      #   @param ledger_id [String] The id of the ledger that this ledger account settlement belongs to.
      #
      #   @param ledger_transaction_id [String, nil] The id of the ledger transaction that this settlement is associated with.
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #   ...
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #   ...
      #
      #   @param object [String]
      #
      #   @param settled_ledger_account_id [String] The id of the settled ledger account whose ledger entries are queried against, a
      #   ...
      #
      #   @param settlement_entry_direction [String, nil] The direction of the ledger entry with the settlement_ledger_account.
      #
      #   @param status [Symbol, ModernTreasury::Models::LedgerAccountSettlement::Status] The status of the ledger account settlement. One of `processing`, `pending`, `po
      #   ...
      #
      #   @param updated_at [Time]

      # The status of the ledger account settlement. One of `processing`, `pending`,
      # `posted`, `archiving` or `archived`.
      #
      # @see ModernTreasury::Models::LedgerAccountSettlement#status
      module Status
        extend ModernTreasury::Internal::Type::Enum

        ARCHIVED = :archived
        ARCHIVING = :archiving
        DRAFTING = :drafting
        PENDING = :pending
        POSTED = :posted
        PROCESSING = :processing

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
