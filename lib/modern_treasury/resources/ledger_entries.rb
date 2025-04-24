# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerEntries
      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerEntryRetrieveParams} for more details.
      #
      # Get details on a single ledger entry.
      #
      # @overload retrieve(id, show_balances: nil, request_options: {})
      #
      # @param id [String] id
      #
      # @param show_balances [Boolean] If true, response will include the balances attached to the ledger entry. If the
      # ...
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerEntry]
      #
      # @see ModernTreasury::Models::LedgerEntryRetrieveParams
      def retrieve(id, params = {})
        parsed, options = ModernTreasury::Models::LedgerEntryRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/ledger_entries/%1$s", id],
          query: parsed,
          model: ModernTreasury::Models::LedgerEntry,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerEntryUpdateParams} for more details.
      #
      # Update the details of a ledger entry.
      #
      # @overload update(id, metadata: nil, request_options: {})
      #
      # @param id [String] id
      #
      # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      # ...
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerEntry]
      #
      # @see ModernTreasury::Models::LedgerEntryUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::Models::LedgerEntryUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/ledger_entries/%1$s", id],
          body: parsed,
          model: ModernTreasury::Models::LedgerEntry,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerEntryListParams} for more details.
      #
      # Get a list of all ledger entries.
      #
      # @overload list(id: nil, after_cursor: nil, as_of_lock_version: nil, direction: nil, effective_at: nil, effective_date: nil, ledger_account_category_id: nil, ledger_account_id: nil, ledger_account_lock_version: nil, ledger_account_payout_id: nil, ledger_account_settlement_id: nil, ledger_account_statement_id: nil, ledger_transaction_id: nil, metadata: nil, order_by: nil, per_page: nil, show_balances: nil, show_deleted: nil, status: nil, updated_at: nil, request_options: {})
      #
      # @param id [Array<String>] If you have specific IDs to retrieve in bulk, you can pass them as query paramet
      # ...
      #
      # @param after_cursor [String, nil]
      #
      # @param as_of_lock_version [Integer] Shows all ledger entries that were present on a ledger account at a particular `
      # ...
      #
      # @param direction [Symbol, ModernTreasury::Models::TransactionDirection] If true, response will include ledger entries that were deleted. When you update
      # ...
      #
      # @param effective_at [Hash{Symbol=>Time}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the tra
      # ...
      #
      # @param effective_date [Hash{Symbol=>Date}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the tra
      # ...
      #
      # @param ledger_account_category_id [String] Get all ledger entries that match the direction specified. One of `credit`, `deb
      # ...
      #
      # @param ledger_account_id [String]
      #
      # @param ledger_account_lock_version [Hash{Symbol=>Integer}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the loc
      # ...
      #
      # @param ledger_account_payout_id [String]
      #
      # @param ledger_account_settlement_id [String]
      #
      # @param ledger_account_statement_id [String] Get all ledger entries that are included in the ledger account statement.
      #
      # @param ledger_transaction_id [String]
      #
      # @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      # ...
      #
      # @param order_by [ModernTreasury::Models::LedgerEntryListParams::OrderBy] Order by `created_at` or `effective_at` in `asc` or `desc` order. For example, t
      # ...
      #
      # @param per_page [Integer]
      #
      # @param show_balances [Boolean] If true, response will include the balances attached to the ledger entry. If the
      # ...
      #
      # @param show_deleted [Boolean] If true, response will include ledger entries that were deleted. When you update
      # ...
      #
      # @param status [Symbol, ModernTreasury::Models::LedgerEntryListParams::Status] Get all ledger entries that match the status specified. One of `pending`, `poste
      # ...
      #
      # @param updated_at [Hash{Symbol=>Time}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the pos
      # ...
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::LedgerEntry>]
      #
      # @see ModernTreasury::Models::LedgerEntryListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::LedgerEntryListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/ledger_entries",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Models::LedgerEntry,
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
