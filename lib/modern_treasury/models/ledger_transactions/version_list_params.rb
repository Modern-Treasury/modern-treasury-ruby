# frozen_string_literal: true

module ModernTreasury
  module Models
    module LedgerTransactions
      # @see ModernTreasury::Resources::LedgerTransactions::Versions#list
      class VersionListParams < ModernTreasury::Internal::Type::BaseModel
        extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

        # @!attribute after_cursor
        #
        #   @return [String, nil]
        optional :after_cursor, String, nil?: true

        # @!attribute created_at
        #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
        #   created_at timestamp. For example, for all dates after Jan 1 2000 12:00 UTC, use
        #   created_at%5Bgt%5D=2000-01-01T12:00:00Z.
        #
        #   @return [Hash{Symbol=>Time}, nil]
        optional :created_at, ModernTreasury::Internal::Type::HashOf[Time]

        # @!attribute ledger_account_statement_id
        #   Get all ledger transaction versions that are included in the ledger account
        #   statement.
        #
        #   @return [String, nil]
        optional :ledger_account_statement_id, String

        # @!attribute ledger_transaction_id
        #   Get all the ledger transaction versions corresponding to the ID of a ledger
        #   transaction.
        #
        #   @return [String, nil]
        optional :ledger_transaction_id, String

        # @!attribute per_page
        #
        #   @return [Integer, nil]
        optional :per_page, Integer

        # @!attribute version
        #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
        #   version. For example, for all versions after 2, use version%5Bgt%5D=2.
        #
        #   @return [Hash{Symbol=>Integer}, nil]
        optional :version, ModernTreasury::Internal::Type::HashOf[Integer]

        # @!method initialize(after_cursor: nil, created_at: nil, ledger_account_statement_id: nil, ledger_transaction_id: nil, per_page: nil, version: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::LedgerTransactions::VersionListParams} for more
        #   details.
        #
        #   @param after_cursor [String, nil]
        #
        #   @param created_at [Hash{Symbol=>Time}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the cre
        #
        #   @param ledger_account_statement_id [String] Get all ledger transaction versions that are included in the ledger account stat
        #
        #   @param ledger_transaction_id [String] Get all the ledger transaction versions corresponding to the ID of a ledger tran
        #
        #   @param per_page [Integer]
        #
        #   @param version [Hash{Symbol=>Integer}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the ver
        #
        #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
