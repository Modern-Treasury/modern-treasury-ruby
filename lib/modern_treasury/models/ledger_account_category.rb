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
      #   @return [ModernTreasury::Models::LedgerBalances]
      required :balances, -> { ModernTreasury::LedgerBalances }

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

      # @!attribute external_id
      #   An optional user-defined 180 character unique identifier.
      #
      #   @return [String, nil]
      required :external_id, String, nil?: true

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
      required :normal_balance, enum: -> { ModernTreasury::TransactionDirection }

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, balances:, created_at:, description:, discarded_at:, external_id:, ledger_id:, live_mode:, metadata:, name:, normal_balance:, object:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LedgerAccountCategory} for more details.
      #
      #   @param id [String]
      #
      #   @param balances [ModernTreasury::Models::LedgerBalances] The pending, posted, and available balances for this ledger account category. Th
      #
      #   @param created_at [Time]
      #
      #   @param description [String, nil] The description of the ledger account category.
      #
      #   @param discarded_at [Time, nil]
      #
      #   @param external_id [String, nil] An optional user-defined 180 character unique identifier.
      #
      #   @param ledger_id [String] The id of the ledger that this account category belongs to.
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param name [String] The name of the ledger account category.
      #
      #   @param normal_balance [Symbol, ModernTreasury::Models::TransactionDirection] The normal balance of the ledger account category.
      #
      #   @param object [String]
      #
      #   @param updated_at [Time]
    end
  end
end
