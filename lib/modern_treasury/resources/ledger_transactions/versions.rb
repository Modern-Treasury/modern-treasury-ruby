# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerTransactions
      class Versions
        # Some parameter documentations has been truncated, see
        # {ModernTreasury::Models::LedgerTransactions::VersionListParams} for more
        # details.
        #
        # Get a list of ledger transaction versions.
        #
        # @overload list(after_cursor: nil, created_at: nil, ledger_account_statement_id: nil, ledger_transaction_id: nil, per_page: nil, version: nil, request_options: {})
        #
        # @param after_cursor [String, nil]
        #
        # @param created_at [Hash{Symbol=>Time}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the cre
        #
        # @param ledger_account_statement_id [String] Get all ledger transaction versions that are included in the ledger account stat
        #
        # @param ledger_transaction_id [String] Get all the ledger transaction versions corresponding to the ID of a ledger tran
        #
        # @param per_page [Integer]
        #
        # @param version [Hash{Symbol=>Integer}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the ver
        #
        # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [ModernTreasury::Internal::Page<ModernTreasury::LedgerTransactions::LedgerTransactionVersion>]
        #
        # @see ModernTreasury::Models::LedgerTransactions::VersionListParams
        def list(params = {})
          parsed, options = ModernTreasury::LedgerTransactions::VersionListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "api/ledger_transaction_versions",
            query: parsed,
            page: ModernTreasury::Internal::Page,
            model: ModernTreasury::LedgerTransactions::LedgerTransactionVersion,
            options: options
          )
        end

        # @api private
        #
        # @param client [ModernTreasury::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
