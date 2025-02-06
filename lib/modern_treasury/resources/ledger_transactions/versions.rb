# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerTransactions
      class Versions
        # Get a list of ledger transaction versions.
        #
        # @param params [ModernTreasury::Models::LedgerTransactions::VersionListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String, nil] :after_cursor
        #
        #   @option params [Hash{Symbol=>Time}] :created_at Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
        #     created_at timestamp. For example, for all dates after Jan 1 2000 12:00 UTC, use
        #     created_at%5Bgt%5D=2000-01-01T12:00:00Z.
        #
        #   @option params [String] :ledger_account_statement_id Get all ledger transaction versions that are included in the ledger account
        #     statement.
        #
        #   @option params [String] :ledger_transaction_id Get all the ledger transaction versions corresponding to the ID of a ledger
        #     transaction.
        #
        #   @option params [Integer] :per_page
        #
        #   @option params [Hash{Symbol=>Integer}] :version Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
        #     version. For example, for all versions after 2, use version%5Bgt%5D=2.
        #
        #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [ModernTreasury::Page<ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion>]
        #
        def list(params = {})
          parsed, options = ModernTreasury::Models::LedgerTransactions::VersionListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "api/ledger_transaction_versions",
            query: parsed,
            page: ModernTreasury::Page,
            model: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion,
            options: options
          )
        end

        # @param client [ModernTreasury::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
