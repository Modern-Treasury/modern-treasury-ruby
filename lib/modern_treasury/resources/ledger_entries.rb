# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerEntries
      def initialize(client:)
        @client = client
      end

      # Get details on a single ledger entry.
      #
      # @param id [String] id
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Boolean] :show_balances If true, response will include the balances attached to the ledger entry. If
      #   there is no balance available, null will be returned instead.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerEntry]
      def retrieve(id, params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/ledger_entries/#{id}"
        req[:query] = params
        req[:model] = ModernTreasury::Models::LedgerEntry
        @client.request(req, opts)
      end

      # Update the details of a ledger entry.
      #
      # @param id [String] id
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerEntry]
      def update(id, params = {}, opts = {})
        req = {}
        req[:method] = :patch
        req[:path] = "/api/ledger_entries/#{id}"
        req[:body] = params
        req[:model] = ModernTreasury::Models::LedgerEntry
        @client.request(req, opts)
      end

      # Get a list of all ledger entries.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Array<String>] :id If you have specific IDs to retrieve in bulk, you can pass them as query
      #   parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      # @option params [String] :after_cursor
      # @option params [Integer] :as_of_lock_version Shows all ledger entries that were present on a ledger account at a particular
      #   `lock_version`. You must also specify `ledger_account_id`.
      # @option params [Symbol] :direction If true, response will include ledger entries that were deleted. When you update
      #   a ledger transaction to specify a new set of entries, the previous entries are
      #   deleted.
      # @option params [Hash] :effective_at Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   transaction's effective time. Format ISO8601
      # @option params [Hash] :effective_date Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   transaction's effective date. Format YYYY-MM-DD
      # @option params [String] :ledger_account_category_id Get all ledger entries that match the direction specified. One of `credit`,
      #   `debit`.
      # @option params [String] :ledger_account_id
      # @option params [Hash] :ledger_account_lock_version Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   lock_version of a ledger account. For example, for all entries created at or
      #   before before lock_version 1000 of a ledger account, use
      #   `ledger_account_lock_version%5Blte%5D=1000`.
      # @option params [String] :ledger_account_payout_id
      # @option params [String] :ledger_account_settlement_id
      # @option params [String] :ledger_account_statement_id Get all ledger entries that are included in the ledger account statement.
      # @option params [String] :ledger_transaction_id
      # @option params [Hash] :metadata For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      # @option params [OrderBy] :order_by Order by `created_at` or `effective_at` in `asc` or `desc` order. For example,
      #   to order by `effective_at asc`, use `order_by%5Beffective_at%5D=asc`. Ordering
      #   by only one field at a time is supported.
      # @option params [Integer] :per_page
      # @option params [Boolean] :show_balances If true, response will include the balances attached to the ledger entry. If
      #   there is no balance available, null will be returned instead.
      # @option params [Boolean] :show_deleted If true, response will include ledger entries that were deleted. When you update
      #   a ledger transaction to specify a new set of entries, the previous entries are
      #   deleted.
      # @option params [Symbol] :status Get all ledger entries that match the status specified. One of `pending`,
      #   `posted`, or `archived`.
      # @option params [Hash] :updated_at Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::LedgerEntry>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/ledger_entries"
        req[:query] = params
        req[:page] = ModernTreasury::Page
        req[:model] = ModernTreasury::Models::LedgerEntry
        @client.request(req, opts)
      end
    end
  end
end
