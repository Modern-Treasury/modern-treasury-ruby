# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountStatementCreateParams < ModernTreasury::BaseModel
      # @!attribute [rw] effective_at_lower_bound
      #   The inclusive lower bound of the effective_at timestamp of the ledger entries to be included in the ledger account statement.
      #   @return [Time]
      required :effective_at_lower_bound, Time

      # @!attribute [rw] effective_at_upper_bound
      #   The exclusive upper bound of the effective_at timestamp of the ledger entries to be included in the ledger account statement.
      #   @return [Time]
      required :effective_at_upper_bound, Time

      # @!attribute [rw] ledger_account_id
      #   The id of the ledger account whose ledger entries are queried against, and its balances are computed as a result.
      #   @return [String]
      required :ledger_account_id, String

      # @!attribute [rw] description
      #   The description of the ledger account statement.
      #   @return [String]
      optional :description, String

      # @!attribute [rw] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      optional :metadata, Hash
    end
  end
end
