# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountSettlementListParams < ModernTreasury::BaseModel
      # @!attribute id
      #   If you have specific IDs to retrieve in bulk, you can pass them as query parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #
      #   @return [Array<String>]
      optional :id, ModernTreasury::ArrayOf[String]

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String

      # @!attribute created_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the created at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use created_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      #   @return [Hash{Symbol=>Time}]
      optional :created_at, ModernTreasury::HashOf[Time]

      # @!attribute ledger_id
      #
      #   @return [String]
      optional :ledger_id, String

      # @!attribute ledger_transaction_id
      #
      #   @return [String]
      optional :ledger_transaction_id, String

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #
      #   @return [Hash{Symbol=>String}]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!attribute per_page
      #
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute settled_ledger_account_id
      #
      #   @return [String]
      optional :settled_ledger_account_id, String

      # @!attribute settlement_entry_direction
      #
      #   @return [String]
      optional :settlement_entry_direction, String

      # @!attribute updated_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the updated at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      #   @return [Hash{Symbol=>Time}]
      optional :updated_at, ModernTreasury::HashOf[Time]

      # @!parse
      #   # @param id [Array<String>] If you have specific IDs to retrieve in bulk, you can pass them as query
      #   #   parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #   #
      #   # @param after_cursor [String, nil]
      #   #
      #   # @param created_at [Hash{Symbol=>String}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   #   created at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   #   created_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #   #
      #   # @param ledger_id [String]
      #   #
      #   # @param ledger_transaction_id [String]
      #   #
      #   # @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #   #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   #   parameters.
      #   #
      #   # @param per_page [Integer]
      #   #
      #   # @param settled_ledger_account_id [String]
      #   #
      #   # @param settlement_entry_direction [String]
      #   #
      #   # @param updated_at [Hash{Symbol=>String}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   #   updated at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   #   updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #   #
      #   def initialize(
      #     id: nil,
      #     after_cursor: nil,
      #     created_at: nil,
      #     ledger_id: nil,
      #     ledger_transaction_id: nil,
      #     metadata: nil,
      #     per_page: nil,
      #     settled_ledger_account_id: nil,
      #     settlement_entry_direction: nil,
      #     updated_at: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
