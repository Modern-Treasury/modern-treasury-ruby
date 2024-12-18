# frozen_string_literal: true

module ModernTreasury
  module Models
    module LedgerTransactions
      class VersionListParams < ModernTreasury::BaseModel
        # @!attribute after_cursor
        #   @return [String]
        optional :after_cursor, String

        # @!attribute created_at
        #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the created_at timestamp. For example, for all dates after Jan 1 2000 12:00 UTC, use created_at%5Bgt%5D=2000-01-01T12:00:00Z.
        #   @return [Hash]
        optional :created_at, Hash

        # @!attribute ledger_account_statement_id
        #   Get all ledger transaction versions that are included in the ledger account statement.
        #   @return [String]
        optional :ledger_account_statement_id, String

        # @!attribute ledger_transaction_id
        #   Get all the ledger transaction versions corresponding to the ID of a ledger transaction.
        #   @return [String]
        optional :ledger_transaction_id, String

        # @!attribute per_page
        #   @return [Integer]
        optional :per_page, Integer

        # @!attribute version
        #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the version. For example, for all versions after 2, use version%5Bgt%5D=2.
        #   @return [Hash]
        optional :version, Hash
      end
    end
  end
end
