# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerTransactions
      # @return [ModernTreasury::Resources::LedgerTransactions::Versions]
      attr_reader :versions

      # Create a ledger transaction.
      #
      # @overload create(ledger_entries:, description: nil, effective_at: nil, effective_date: nil, external_id: nil, ledgerable_id: nil, ledgerable_type: nil, metadata: nil, status: nil, request_options: {})
      #
      # @param ledger_entries [Array<ModernTreasury::Models::LedgerTransactionCreateParams::LedgerEntry>]
      # @param description [String, nil]
      # @param effective_at [Time]
      # @param effective_date [Date]
      # @param external_id [String]
      # @param ledgerable_id [String]
      # @param ledgerable_type [Symbol, ModernTreasury::Models::LedgerTransactionCreateParams::LedgerableType]
      # @param metadata [Hash{Symbol=>String}]
      # @param status [Symbol, ModernTreasury::Models::LedgerTransactionCreateParams::Status]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerTransaction]
      #
      # @see ModernTreasury::Models::LedgerTransactionCreateParams
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
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerTransaction]
      #
      # @see ModernTreasury::Models::LedgerTransactionRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/ledger_transactions/%1$s", id],
          model: ModernTreasury::Models::LedgerTransaction,
          options: params[:request_options]
        )
      end

      # Update the details of a ledger transaction.
      #
      # @overload update(id, description: nil, effective_at: nil, ledger_entries: nil, ledgerable_id: nil, ledgerable_type: nil, metadata: nil, status: nil, request_options: {})
      #
      # @param id [String]
      # @param description [String, nil]
      # @param effective_at [Time]
      # @param ledger_entries [Array<ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerEntry>]
      # @param ledgerable_id [String]
      # @param ledgerable_type [Symbol, ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerableType]
      # @param metadata [Hash{Symbol=>String}]
      # @param status [Symbol, ModernTreasury::Models::LedgerTransactionUpdateParams::Status]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerTransaction]
      #
      # @see ModernTreasury::Models::LedgerTransactionUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::Models::LedgerTransactionUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/ledger_transactions/%1$s", id],
          body: parsed,
          model: ModernTreasury::Models::LedgerTransaction,
          options: options
        )
      end

      # Get a list of ledger transactions.
      #
      # @overload list(id: nil, after_cursor: nil, effective_at: nil, effective_date: nil, external_id: nil, ledger_account_category_id: nil, ledger_account_id: nil, ledger_account_settlement_id: nil, ledger_id: nil, ledgerable_id: nil, ledgerable_type: nil, metadata: nil, order_by: nil, partially_posts_ledger_transaction_id: nil, per_page: nil, posted_at: nil, reverses_ledger_transaction_id: nil, status: nil, updated_at: nil, request_options: {})
      #
      # @param id [Array<String>]
      # @param after_cursor [String, nil]
      # @param effective_at [Hash{Symbol=>Time}]
      # @param effective_date [Hash{Symbol=>Time}]
      # @param external_id [String]
      # @param ledger_account_category_id [String]
      # @param ledger_account_id [String]
      # @param ledger_account_settlement_id [String]
      # @param ledger_id [String]
      # @param ledgerable_id [String]
      # @param ledgerable_type [Symbol, ModernTreasury::Models::LedgerTransactionListParams::LedgerableType]
      # @param metadata [Hash{Symbol=>String}]
      # @param order_by [ModernTreasury::Models::LedgerTransactionListParams::OrderBy]
      # @param partially_posts_ledger_transaction_id [String]
      # @param per_page [Integer]
      # @param posted_at [Hash{Symbol=>Time}]
      # @param reverses_ledger_transaction_id [String]
      # @param status [Symbol, ModernTreasury::Models::LedgerTransactionListParams::Status]
      # @param updated_at [Hash{Symbol=>Time}]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::LedgerTransaction>]
      #
      # @see ModernTreasury::Models::LedgerTransactionListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::LedgerTransactionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/ledger_transactions",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Models::LedgerTransaction,
          options: options
        )
      end

      # Create a ledger transaction that partially posts another ledger transaction.
      #
      # @overload create_partial_post(id, posted_ledger_entries:, description: nil, effective_at: nil, metadata: nil, request_options: {})
      #
      # @param id [String]
      # @param posted_ledger_entries [Array<ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry>]
      # @param description [String]
      # @param effective_at [Time]
      # @param metadata [Hash{Symbol=>String}]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerTransaction]
      #
      # @see ModernTreasury::Models::LedgerTransactionCreatePartialPostParams
      def create_partial_post(id, params)
        parsed, options = ModernTreasury::Models::LedgerTransactionCreatePartialPostParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/ledger_transactions/%1$s/partial_post", id],
          body: parsed,
          model: ModernTreasury::Models::LedgerTransaction,
          options: options
        )
      end

      # Create a ledger transaction reversal.
      #
      # @overload create_reversal(id, description: nil, effective_at: nil, external_id: nil, ledgerable_id: nil, ledgerable_type: nil, metadata: nil, status: nil, request_options: {})
      #
      # @param id [String]
      # @param description [String]
      # @param effective_at [Time, nil]
      # @param external_id [String]
      # @param ledgerable_id [String]
      # @param ledgerable_type [Symbol, ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType]
      # @param metadata [Hash{Symbol=>String}]
      # @param status [Symbol, ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerTransaction]
      #
      # @see ModernTreasury::Models::LedgerTransactionCreateReversalParams
      def create_reversal(id, params = {})
        parsed, options = ModernTreasury::Models::LedgerTransactionCreateReversalParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/ledger_transactions/%1$s/reversal", id],
          body: parsed,
          model: ModernTreasury::Models::LedgerTransaction,
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
