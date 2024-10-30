# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerTransactions
      class Versions
        # @param client [ModernTreasury::Client]
        def initialize(client:)
          @client = client
        end

        # Get a list of ledger transaction versions.
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [String, nil] :after_cursor
        #   @option params [Hash, nil] :created_at Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
        #     created_at timestamp. For example, for all dates after Jan 1 2000 12:00 UTC, use
        #     created_at%5Bgt%5D=2000-01-01T12:00:00Z.
        #   @option params [String, nil] :ledger_account_statement_id Get all ledger transaction versions that are included in the ledger account
        #     statement.
        #   @option params [String, nil] :ledger_transaction_id Get all the ledger transaction versions corresponding to the ID of a ledger
        #     transaction.
        #   @option params [Integer, nil] :per_page
        #   @option params [Hash, nil] :version Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
        #     version. For example, for all versions after 2, use version%5Bgt%5D=2.
        #
        # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Page<ModernTreasury::Models::LedgerTransactionVersion>]
        def list(params = {}, opts = {})
          req = {
            method: :get,
            path: "/api/ledger_transaction_versions",
            query: params,
            page: ModernTreasury::Page,
            model: ModernTreasury::Models::LedgerTransactionVersion
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
