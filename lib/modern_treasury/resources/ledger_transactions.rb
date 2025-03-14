# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerTransactions
      # @return [ModernTreasury::Resources::LedgerTransactions::Versions]
      attr_reader :versions

      # Create a ledger transaction.
      #
      # @param params [ModernTreasury::Models::LedgerTransactionCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<ModernTreasury::Models::LedgerTransactionCreateParams::LedgerEntry>] :ledger_entries An array of ledger entry objects.
      #
      #   @option params [String, nil] :description An optional description for internal use.
      #
      #   @option params [Time] :effective_at The timestamp (ISO8601 format) at which the ledger transaction happened for
      #     reporting purposes.
      #
      #   @option params [Date] :effective_date The date (YYYY-MM-DD) on which the ledger transaction happened for reporting
      #     purposes.
      #
      #   @option params [String] :external_id A unique string to represent the ledger transaction. Only one pending or posted
      #     ledger transaction may have this ID in the ledger.
      #
      #   @option params [String] :ledgerable_id If the ledger transaction can be reconciled to another object in Modern
      #     Treasury, the id will be populated here, otherwise null.
      #
      #   @option params [Symbol, ModernTreasury::Models::LedgerTransactionCreateParams::LedgerableType] :ledgerable_type If the ledger transaction can be reconciled to another object in Modern
      #     Treasury, the type will be populated here, otherwise null. This can be one of
      #     payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
      #     reversal.
      #
      #   @option params [Hash{Symbol=>String}] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @option params [Symbol, ModernTreasury::Models::LedgerTransactionCreateParams::Status] :status To post a ledger transaction at creation, use `posted`.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::LedgerTransaction]
      def create(params)
        parsed, options = ModernTreasury::Models::LedgerTransactionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/ledger_transactions",
          body: parsed,
          model: ModernTreasury::Models::LedgerTransaction,
          options: options
        )
      end

      # Get details on a single ledger transaction.
      #
      # @param id [String] id
      #
      # @param params [ModernTreasury::Models::LedgerTransactionRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::LedgerTransaction]
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/ledger_transactions/%0s", id],
          model: ModernTreasury::Models::LedgerTransaction,
          options: params[:request_options]
        )
      end

      # Update the details of a ledger transaction.
      #
      # @param id [String] id
      #
      # @param params [ModernTreasury::Models::LedgerTransactionUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :description An optional description for internal use.
      #
      #   @option params [Time] :effective_at The timestamp (ISO8601 format) at which the ledger transaction happened for
      #     reporting purposes.
      #
      #   @option params [Array<ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerEntry>] :ledger_entries An array of ledger entry objects.
      #
      #   @option params [String] :ledgerable_id If the ledger transaction can be reconciled to another object in Modern
      #     Treasury, the id will be populated here, otherwise null.
      #
      #   @option params [Symbol, ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerableType] :ledgerable_type If the ledger transaction can be reconciled to another object in Modern
      #     Treasury, the type will be populated here, otherwise null. This can be one of
      #     payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
      #     reversal.
      #
      #   @option params [Hash{Symbol=>String}] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @option params [Symbol, ModernTreasury::Models::LedgerTransactionUpdateParams::Status] :status To post a ledger transaction at creation, use `posted`.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::LedgerTransaction]
      def update(id, params = {})
        parsed, options = ModernTreasury::Models::LedgerTransactionUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/ledger_transactions/%0s", id],
          body: parsed,
          model: ModernTreasury::Models::LedgerTransaction,
          options: options
        )
      end

      # Get a list of ledger transactions.
      #
      # @param params [ModernTreasury::Models::LedgerTransactionListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<String>] :id If you have specific IDs to retrieve in bulk, you can pass them as query
      #     parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #
      #   @option params [String, nil] :after_cursor
      #
      #   @option params [Hash{Symbol=>Time}] :effective_at Use "gt" (>), "gte" (>=), "lt" (<), "lte" (<=), or "eq" (=) to filter by
      #     effective at. For example, for all transactions after Jan 1 2000, use
      #     effective_at%5Bgt%5D=2000-01-01T00:00:00:00.000Z.
      #
      #   @option params [Hash{Symbol=>Time}] :effective_date Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by
      #     effective date. For example, for all dates after Jan 1 2000, use
      #     effective_date%5Bgt%5D=2000-01-01.
      #
      #   @option params [String] :external_id
      #
      #   @option params [String] :ledger_account_category_id
      #
      #   @option params [String] :ledger_account_id
      #
      #   @option params [String] :ledger_account_settlement_id
      #
      #   @option params [String] :ledger_id
      #
      #   @option params [String] :ledgerable_id
      #
      #   @option params [Symbol, ModernTreasury::Models::LedgerTransactionListParams::LedgerableType] :ledgerable_type
      #
      #   @option params [Hash{Symbol=>String}] :metadata For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #
      #   @option params [ModernTreasury::Models::LedgerTransactionListParams::OrderBy] :order_by Order by `created_at` or `effective_at` in `asc` or `desc` order. For example,
      #     to order by `effective_at asc`, use `order_by%5Beffective_at%5D=asc`. Ordering
      #     by only one field at a time is supported.
      #
      #   @option params [String] :partially_posts_ledger_transaction_id
      #
      #   @option params [Integer] :per_page
      #
      #   @option params [Hash{Symbol=>Time}] :posted_at Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #     posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #     posted_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      #   @option params [String] :reverses_ledger_transaction_id
      #
      #   @option params [Symbol, ModernTreasury::Models::LedgerTransactionListParams::Status] :status
      #
      #   @option params [Hash{Symbol=>Time}] :updated_at Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #     posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #     updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::LedgerTransaction>]
      def list(params = {})
        parsed, options = ModernTreasury::Models::LedgerTransactionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/ledger_transactions",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::LedgerTransaction,
          options: options
        )
      end

      # Create a ledger transaction that partially posts another ledger transaction.
      #
      # @param id [String] The ID of the ledger transaction to partially post.
      #
      # @param params [ModernTreasury::Models::LedgerTransactionCreatePartialPostParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry>] :posted_ledger_entries An array of ledger entry objects to be set on the posted ledger transaction.
      #     There must be one entry for each of the existing entries with a lesser amount
      #     than the existing entry.
      #
      #   @option params [String] :description An optional free-form description for the posted ledger transaction. Maximum of
      #     1000 characters allowed.
      #
      #   @option params [Time] :effective_at The timestamp (IS08601 format) at which the posted ledger transaction happened
      #     for reporting purposes.
      #
      #   @option params [Hash{Symbol=>String}] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::LedgerTransaction]
      def create_partial_post(id, params)
        parsed, options = ModernTreasury::Models::LedgerTransactionCreatePartialPostParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/ledger_transactions/%0s/partial_post", id],
          body: parsed,
          model: ModernTreasury::Models::LedgerTransaction,
          options: options
        )
      end

      # Create a ledger transaction reversal.
      #
      # @param id [String] The id of ledger transaction to reverse.
      #
      # @param params [ModernTreasury::Models::LedgerTransactionCreateReversalParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :description An optional free-form description for the reversal ledger transaction. Maximum
      #     of 1000 characters allowed.
      #
      #   @option params [Time, nil] :effective_at The timestamp (ISO8601 format) at which the reversal ledger transaction happened
      #     for reporting purposes. It defaults to the `effective_at` of the original ledger
      #     transaction if not provided.
      #
      #   @option params [String] :external_id Must be unique within the ledger.
      #
      #   @option params [String] :ledgerable_id Specify this if you'd like to link the reversal ledger transaction to a Payment
      #     object like Return or Reversal.
      #
      #   @option params [Symbol, ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType] :ledgerable_type Specify this if you'd like to link the reversal ledger transaction to a Payment
      #     object like Return or Reversal.
      #
      #   @option params [Hash{Symbol=>String}] :metadata Additional data to be added to the reversal ledger transaction as key-value
      #     pairs. Both the key and value must be strings.
      #
      #   @option params [Symbol, ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status] :status Status of the reversal ledger transaction. It defaults to `posted` if not
      #     provided.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::LedgerTransaction]
      def create_reversal(id, params = {})
        parsed, options = ModernTreasury::Models::LedgerTransactionCreateReversalParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/ledger_transactions/%0s/reversal", id],
          body: parsed,
          model: ModernTreasury::Models::LedgerTransaction,
          options: options
        )
      end

      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
        @versions = ModernTreasury::Resources::LedgerTransactions::Versions.new(client: client)
      end
    end
  end
end
