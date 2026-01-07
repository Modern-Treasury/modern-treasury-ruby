# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerTransactions
      # @return [ModernTreasury::Resources::LedgerTransactions::Versions]
      attr_reader :versions

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerTransactionCreateParams} for more details.
      #
      # Create a ledger transaction.
      #
      # @overload create(ledger_entries:, description: nil, effective_at: nil, effective_date: nil, external_id: nil, ledgerable_id: nil, ledgerable_type: nil, metadata: nil, status: nil, request_options: {})
      #
      # @param ledger_entries [Array<ModernTreasury::Models::LedgerEntryCreateRequest>] An array of ledger entry objects.
      #
      # @param description [String, nil] An optional description for internal use.
      #
      # @param effective_at [Time] The timestamp (ISO8601 format) at which the ledger transaction happened for repo
      #
      # @param effective_date [Date] The date (YYYY-MM-DD) on which the ledger transaction happened for reporting pur
      #
      # @param external_id [String] A unique string to represent the ledger transaction. Only one pending or posted
      #
      # @param ledgerable_id [String] If the ledger transaction can be reconciled to another object in Modern Treasury
      #
      # @param ledgerable_type [Symbol, ModernTreasury::Models::LedgerTransactionCreateRequest::LedgerableType] If the ledger transaction can be reconciled to another object in Modern Treasury
      #
      # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      # @param status [Symbol, ModernTreasury::Models::LedgerTransactionCreateRequest::Status] To post a ledger transaction at creation, use `posted`.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerTransaction]
      #
      # @see ModernTreasury::Models::LedgerTransactionCreateParams
      def create(params)
        parsed, options = ModernTreasury::LedgerTransactionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/ledger_transactions",
          body: parsed,
          model: ModernTreasury::LedgerTransaction,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerTransactionRetrieveParams} for more details.
      #
      # Get details on a single ledger transaction.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ledger transaction id (UUID) or external_id. If using external_id, only non-
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerTransaction]
      #
      # @see ModernTreasury::Models::LedgerTransactionRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/ledger_transactions/%1$s", id],
          model: ModernTreasury::LedgerTransaction,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerTransactionUpdateParams} for more details.
      #
      # Update the details of a ledger transaction.
      #
      # @overload update(id, description: nil, effective_at: nil, ledger_entries: nil, ledgerable_id: nil, ledgerable_type: nil, metadata: nil, status: nil, request_options: {})
      #
      # @param id [String] The ledger transaction id (UUID)
      #
      # @param description [String, nil] An optional description for internal use.
      #
      # @param effective_at [Time] The timestamp (ISO8601 format) at which the ledger transaction happened for repo
      #
      # @param ledger_entries [Array<ModernTreasury::Models::LedgerEntryCreateRequest>] An array of ledger entry objects.
      #
      # @param ledgerable_id [String] If the ledger transaction can be reconciled to another object in Modern Treasury
      #
      # @param ledgerable_type [Symbol, ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerableType] If the ledger transaction can be reconciled to another object in Modern Treasury
      #
      # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      # @param status [Symbol, ModernTreasury::Models::LedgerTransactionUpdateParams::Status] To post a ledger transaction at creation, use `posted`.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerTransaction]
      #
      # @see ModernTreasury::Models::LedgerTransactionUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::LedgerTransactionUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/ledger_transactions/%1$s", id],
          body: parsed,
          model: ModernTreasury::LedgerTransaction,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerTransactionListParams} for more details.
      #
      # Get a list of ledger transactions.
      #
      # @overload list(id: nil, after_cursor: nil, amount: nil, effective_at: nil, effective_date: nil, external_id: nil, ledger_account_category_id: nil, ledger_account_id: nil, ledger_account_settlement_id: nil, ledger_id: nil, ledgerable_id: nil, ledgerable_type: nil, metadata: nil, order_by: nil, partially_posts_ledger_transaction_id: nil, per_page: nil, posted_at: nil, reverses_ledger_transaction_id: nil, status: nil, updated_at: nil, request_options: {})
      #
      # @param id [Array<String>] If you have specific IDs to retrieve in bulk, you can pass them as query paramet
      #
      # @param after_cursor [String, nil]
      #
      # @param amount [ModernTreasury::Models::LedgerTransactionListParams::Amount] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by amount.
      #
      # @param effective_at [Hash{Symbol=>Time}] Use "gt" (>), "gte" (>=), "lt" (<), "lte" (<=), or "eq" (=) to filter by effecti
      #
      # @param effective_date [Hash{Symbol=>Time}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by effecti
      #
      # @param external_id [String]
      #
      # @param ledger_account_category_id [String]
      #
      # @param ledger_account_id [String]
      #
      # @param ledger_account_settlement_id [String]
      #
      # @param ledger_id [String]
      #
      # @param ledgerable_id [String]
      #
      # @param ledgerable_type [Symbol, ModernTreasury::Models::LedgerTransactionListParams::LedgerableType]
      #
      # @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #
      # @param order_by [ModernTreasury::Models::LedgerTransactionListParams::OrderBy] Order by `created_at` or `effective_at` in `asc` or `desc` order. For example, t
      #
      # @param partially_posts_ledger_transaction_id [String]
      #
      # @param per_page [Integer]
      #
      # @param posted_at [Hash{Symbol=>Time}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the pos
      #
      # @param reverses_ledger_transaction_id [String]
      #
      # @param status [Symbol, Array<Symbol, ModernTreasury::Models::LedgerTransactionListParams::Status::UnionMember1>, ModernTreasury::Models::LedgerTransactionListParams::Status]
      #
      # @param updated_at [Hash{Symbol=>Time}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the pos
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::LedgerTransaction>]
      #
      # @see ModernTreasury::Models::LedgerTransactionListParams
      def list(params = {})
        parsed, options = ModernTreasury::LedgerTransactionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/ledger_transactions",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::LedgerTransaction,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerTransactionCreatePartialPostParams} for more
      # details.
      #
      # Create a ledger transaction that partially posts another ledger transaction.
      #
      # @overload create_partial_post(id, posted_ledger_entries:, description: nil, effective_at: nil, metadata: nil, request_options: {})
      #
      # @param id [String] The ID of the ledger transaction to partially post.
      #
      # @param posted_ledger_entries [Array<ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry>] An array of ledger entry objects to be set on the posted ledger transaction. The
      #
      # @param description [String] An optional free-form description for the posted ledger transaction. Maximum of
      #
      # @param effective_at [Time] The timestamp (IS08601 format) at which the posted ledger transaction happened f
      #
      # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerTransaction]
      #
      # @see ModernTreasury::Models::LedgerTransactionCreatePartialPostParams
      def create_partial_post(id, params)
        parsed, options = ModernTreasury::LedgerTransactionCreatePartialPostParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/ledger_transactions/%1$s/partial_post", id],
          body: parsed,
          model: ModernTreasury::LedgerTransaction,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerTransactionCreateReversalParams} for more
      # details.
      #
      # Create a ledger transaction reversal.
      #
      # @overload create_reversal(id, description: nil, effective_at: nil, external_id: nil, ledgerable_id: nil, ledgerable_type: nil, metadata: nil, status: nil, request_options: {})
      #
      # @param id [String] The id of ledger transaction to reverse.
      #
      # @param description [String] An optional free-form description for the reversal ledger transaction. Maximum o
      #
      # @param effective_at [Time, nil] The timestamp (ISO8601 format) at which the reversal ledger transaction happened
      #
      # @param external_id [String] Must be unique within the ledger.
      #
      # @param ledgerable_id [String] Specify this if you'd like to link the reversal ledger transaction to a Payment
      #
      # @param ledgerable_type [Symbol, ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType] Specify this if you'd like to link the reversal ledger transaction to a Payment
      #
      # @param metadata [Hash{Symbol=>String}] Additional data to be added to the reversal ledger transaction as key-value pair
      #
      # @param status [Symbol, ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status] Status of the reversal ledger transaction. It defaults to `posted` if not provid
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerTransaction]
      #
      # @see ModernTreasury::Models::LedgerTransactionCreateReversalParams
      def create_reversal(id, params = {})
        parsed, options = ModernTreasury::LedgerTransactionCreateReversalParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/ledger_transactions/%1$s/reversal", id],
          body: parsed,
          model: ModernTreasury::LedgerTransaction,
          options: options
        )
      end

      # @api private
      #
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
        @versions = ModernTreasury::Resources::LedgerTransactions::Versions.new(client: client)
      end
    end
  end
end
