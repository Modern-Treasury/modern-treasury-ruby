# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountSettlementListParams < ModernTreasury::BaseModel
      # @!attribute [rw] id
      #   If you have specific IDs to retrieve in bulk, you can pass them as query parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #   @return [Array<String>]
      optional :id, ModernTreasury::ArrayOf.new(String)

      # @!attribute [rw] after_cursor
      #   @return [String]
      optional :after_cursor, String

      # @!attribute [rw] created_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the created at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use created_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #   @return [Hash]
      optional :created_at, Hash

      # @!attribute [rw] ledger_id
      #   @return [String]
      optional :ledger_id, String

      # @!attribute [rw] ledger_transaction_id
      #   @return [String]
      optional :ledger_transaction_id, String

      # @!attribute [rw] metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute [rw] per_page
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute [rw] settled_ledger_account_id
      #   @return [String]
      optional :settled_ledger_account_id, String

      # @!attribute [rw] settlement_entry_direction
      #   @return [String]
      optional :settlement_entry_direction, String

      # @!attribute [rw] updated_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the updated at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #   @return [Hash]
      optional :updated_at, Hash
    end
  end
end
