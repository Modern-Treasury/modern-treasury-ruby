# frozen_string_literal: true

module ModernTreasury
  module Models
    module LedgerTransactions
      class VersionListParams < ModernTreasury::BaseModel
        # @!attribute after_cursor
        #
        #   @return [String, nil]
        optional :after_cursor, String, nil?: true

        # @!attribute [r] created_at
        #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
        #     created_at timestamp. For example, for all dates after Jan 1 2000 12:00 UTC, use
        #     created_at%5Bgt%5D=2000-01-01T12:00:00Z.
        #
        #   @return [Hash{Symbol=>Time}, nil]
        optional :created_at, ModernTreasury::HashOf[Time]

        # @!parse
        #   # @return [Hash{Symbol=>Time}]
        #   attr_writer :created_at

        # @!attribute [r] ledger_account_statement_id
        #   Get all ledger transaction versions that are included in the ledger account
        #     statement.
        #
        #   @return [String, nil]
        optional :ledger_account_statement_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :ledger_account_statement_id

        # @!attribute [r] ledger_transaction_id
        #   Get all the ledger transaction versions corresponding to the ID of a ledger
        #     transaction.
        #
        #   @return [String, nil]
        optional :ledger_transaction_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :ledger_transaction_id

        # @!attribute [r] per_page
        #
        #   @return [Integer, nil]
        optional :per_page, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :per_page

        # @!attribute [r] version
        #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
        #     version. For example, for all versions after 2, use version%5Bgt%5D=2.
        #
        #   @return [Hash{Symbol=>Integer}, nil]
        optional :version, ModernTreasury::HashOf[Integer]

        # @!parse
        #   # @return [Hash{Symbol=>Integer}]
        #   attr_writer :version

        # @!parse
        #   # @param after_cursor [String, nil]
        #   # @param created_at [Hash{Symbol=>String}]
        #   # @param ledger_account_statement_id [String]
        #   # @param ledger_transaction_id [String]
        #   # @param per_page [Integer]
        #   # @param version [Hash{Symbol=>Integer}]
        #   #
        #   def initialize(
        #     after_cursor: nil,
        #     created_at: nil,
        #     ledger_account_statement_id: nil,
        #     ledger_transaction_id: nil,
        #     per_page: nil,
        #     version: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end
    end
  end
end
