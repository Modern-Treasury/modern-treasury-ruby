# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerTransactions
      # @return [ModernTreasury::Resources::LedgerTransactions::Versions]
      attr_reader :versions

      def initialize(client:)
        @client = client
        @versions = ModernTreasury::Resources::LedgerTransactions::Versions.new(client: client)
      end

      # Create a ledger transaction.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Array<LedgerEntry>] :ledger_entries An array of ledger entry objects.
      # @option params [String] :description An optional description for internal use.
      # @option params [String] :effective_at The timestamp (ISO8601 format) at which the ledger transaction happened for
      #   reporting purposes.
      # @option params [String] :effective_date The date (YYYY-MM-DD) on which the ledger transaction happened for reporting
      #   purposes.
      # @option params [String] :external_id A unique string to represent the ledger transaction. Only one pending or posted
      #   ledger transaction may have this ID in the ledger.
      # @option params [String] :ledgerable_id If the ledger transaction can be reconciled to another object in Modern
      #   Treasury, the id will be populated here, otherwise null.
      # @option params [Symbol] :ledgerable_type If the ledger transaction can be reconciled to another object in Modern
      #   Treasury, the type will be populated here, otherwise null. This can be one of
      #   payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
      #   reversal.
      # @option params [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @option params [Symbol] :status To post a ledger transaction at creation, use `posted`.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerTransaction]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/api/ledger_transactions"
        req[:body] = params
        req[:model] = ModernTreasury::Models::LedgerTransaction
        @client.request(req, opts)
      end

      # Get details on a single ledger transaction.
      #
      # @param id [String] id
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerTransaction]
      def retrieve(id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/ledger_transactions/#{id}"
        req[:model] = ModernTreasury::Models::LedgerTransaction
        @client.request(req, opts)
      end

      # Update the details of a ledger transaction.
      #
      # @param id [String] id
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :description An optional description for internal use.
      # @option params [String] :effective_at The timestamp (ISO8601 format) at which the ledger transaction happened for
      #   reporting purposes.
      # @option params [Array<LedgerEntry>] :ledger_entries An array of ledger entry objects.
      # @option params [String] :ledgerable_id If the ledger transaction can be reconciled to another object in Modern
      #   Treasury, the id will be populated here, otherwise null.
      # @option params [Symbol] :ledgerable_type If the ledger transaction can be reconciled to another object in Modern
      #   Treasury, the type will be populated here, otherwise null. This can be one of
      #   payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
      #   reversal.
      # @option params [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @option params [Symbol] :status To post a ledger transaction at creation, use `posted`.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerTransaction]
      def update(id, params = {}, opts = {})
        req = {}
        req[:method] = :patch
        req[:path] = "/api/ledger_transactions/#{id}"
        req[:body] = params
        req[:model] = ModernTreasury::Models::LedgerTransaction
        @client.request(req, opts)
      end

      # Get a list of ledger transactions.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Array<String>] :id If you have specific IDs to retrieve in bulk, you can pass them as query
      #   parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      # @option params [String] :after_cursor
      # @option params [Hash] :effective_at Use "gt" (>), "gte" (>=), "lt" (<), "lte" (<=), or "eq" (=) to filter by
      #   effective at. For example, for all transactions after Jan 1 2000, use
      #   effective_at%5Bgt%5D=2000-01-01T00:00:00:00.000Z.
      # @option params [Hash] :effective_date Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by
      #   effective date. For example, for all dates after Jan 1 2000, use
      #   effective_date%5Bgt%5D=2000-01-01.
      # @option params [String] :external_id
      # @option params [String] :ledger_account_category_id
      # @option params [String] :ledger_account_id
      # @option params [String] :ledger_account_settlement_id
      # @option params [String] :ledger_id
      # @option params [String] :ledgerable_id
      # @option params [Symbol] :ledgerable_type
      # @option params [Hash] :metadata For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      # @option params [OrderBy] :order_by Order by `created_at` or `effective_at` in `asc` or `desc` order. For example,
      #   to order by `effective_at asc`, use `order_by%5Beffective_at%5D=asc`. Ordering
      #   by only one field at a time is supported.
      # @option params [Integer] :per_page
      # @option params [Hash] :posted_at Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   posted_at%5Bgt%5D=2000-01-01T12:00:00Z.
      # @option params [String] :reverses_ledger_transaction_id
      # @option params [Symbol] :status
      # @option params [Hash] :updated_at Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::LedgerTransaction>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/ledger_transactions"
        req[:query] = params
        req[:page] = ModernTreasury::Page
        req[:model] = ModernTreasury::Models::LedgerTransaction
        @client.request(req, opts)
      end

      # Create a ledger transaction reversal.
      #
      # @param id [String] The id of ledger transaction to reverse.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :description An optional free-form description for the reversal ledger transaction. Maximum
      #   of 1000 characters allowed.
      # @option params [String] :effective_at The timestamp (ISO8601 format) at which the reversal ledger transaction happened
      #   for reporting purposes. It defaults to the `effective_at` of the original ledger
      #   transaction if not provided.
      # @option params [String] :external_id Must be unique within the ledger.
      # @option params [String] :ledgerable_id Specify this if you'd like to link the reversal ledger transaction to a Payment
      #   object like Return or Reversal.
      # @option params [Symbol] :ledgerable_type Specify this if you'd like to link the reversal ledger transaction to a Payment
      #   object like Return or Reversal.
      # @option params [Hash] :metadata Additional data to be added to the reversal ledger transaction as key-value
      #   pairs. Both the key and value must be strings.
      # @option params [Symbol] :status Status of the reversal ledger transaction. It defaults to `posted` if not
      #   provided.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerTransaction]
      def create_reversal(id, params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/api/ledger_transactions/#{id}/reversal"
        req[:body] = params
        req[:model] = ModernTreasury::Models::LedgerTransaction
        @client.request(req, opts)
      end
    end
  end
end
