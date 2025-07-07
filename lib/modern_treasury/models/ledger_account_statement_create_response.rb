# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerAccountStatements#create
    class LedgerAccountStatementCreateResponse < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   The description of the ledger account statement.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute effective_at_lower_bound
      #   The inclusive lower bound of the effective_at timestamp of the ledger entries to
      #   be included in the ledger account statement.
      #
      #   @return [Time]
      required :effective_at_lower_bound, Time

      # @!attribute effective_at_upper_bound
      #   The exclusive upper bound of the effective_at timestamp of the ledger entries to
      #   be included in the ledger account statement.
      #
      #   @return [Time]
      required :effective_at_upper_bound, Time

      # @!attribute ending_balance
      #   The pending, posted, and available balances for this ledger account at the
      #   `effective_at_upper_bound`. The posted balance is the sum of all posted entries
      #   on the account. The pending balance is the sum of all pending and posted entries
      #   on the account. The available balance is the posted incoming entries minus the
      #   sum of the pending and posted outgoing amounts.
      #
      #   @return [ModernTreasury::Models::LedgerBalances]
      required :ending_balance, -> { ModernTreasury::LedgerBalances }

      # @!attribute ledger_account_id
      #   The id of the ledger account whose ledger entries are queried against, and its
      #   balances are computed as a result.
      #
      #   @return [String]
      required :ledger_account_id, String

      # @!attribute ledger_account_lock_version
      #   Lock version of the ledger account at the time of statement generation.
      #
      #   @return [Integer]
      required :ledger_account_lock_version, Integer

      # @!attribute ledger_account_normal_balance
      #   The normal balance of the ledger account.
      #
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
      required :ledger_account_normal_balance, enum: -> { ModernTreasury::TransactionDirection }

      # @!attribute ledger_id
      #   The id of the ledger that this ledger account statement belongs to.
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

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute starting_balance
      #   The pending, posted, and available balances for this ledger account at the
      #   `effective_at_lower_bound`. The posted balance is the sum of all posted entries
      #   on the account. The pending balance is the sum of all pending and posted entries
      #   on the account. The available balance is the posted incoming entries minus the
      #   sum of the pending and posted outgoing amounts.
      #
      #   @return [ModernTreasury::Models::LedgerBalances]
      required :starting_balance, -> { ModernTreasury::LedgerBalances }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, created_at:, description:, effective_at_lower_bound:, effective_at_upper_bound:, ending_balance:, ledger_account_id:, ledger_account_lock_version:, ledger_account_normal_balance:, ledger_id:, live_mode:, metadata:, object:, starting_balance:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LedgerAccountStatementCreateResponse} for more details.
      #
      #   @param id [String]
      #
      #   @param created_at [Time]
      #
      #   @param description [String, nil] The description of the ledger account statement.
      #
      #   @param effective_at_lower_bound [Time] The inclusive lower bound of the effective_at timestamp of the ledger entries to
      #
      #   @param effective_at_upper_bound [Time] The exclusive upper bound of the effective_at timestamp of the ledger entries to
      #
      #   @param ending_balance [ModernTreasury::Models::LedgerBalances] The pending, posted, and available balances for this ledger account at the `effe
      #
      #   @param ledger_account_id [String] The id of the ledger account whose ledger entries are queried against, and its b
      #
      #   @param ledger_account_lock_version [Integer] Lock version of the ledger account at the time of statement generation.
      #
      #   @param ledger_account_normal_balance [Symbol, ModernTreasury::Models::TransactionDirection] The normal balance of the ledger account.
      #
      #   @param ledger_id [String] The id of the ledger that this ledger account statement belongs to.
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param object [String]
      #
      #   @param starting_balance [ModernTreasury::Models::LedgerBalances] The pending, posted, and available balances for this ledger account at the `effe
      #
      #   @param updated_at [Time]
    end
  end
end
