# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerEventHandlers
      # create ledger_event_handler
      #
      # @param params [ModernTreasury::Models::LedgerEventHandlerCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate] :ledger_transaction_template
      #
      #   @option params [String] :name Name of the ledger event handler.
      #
      #   @option params [ModernTreasury::Models::LedgerEventHandlerCreateParams::Conditions, nil] :conditions
      #
      #   @option params [String, nil] :description An optional description.
      #
      #   @option params [String] :ledger_id The id of the ledger that this account belongs to.
      #
      #   @option params [Hash{Symbol=>String}, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @option params [Hash{Symbol=>ModernTreasury::Models::LedgerEventHandlerVariable}, nil] :variables
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::LedgerEventHandler]
      def create(params)
        parsed, options = ModernTreasury::Models::LedgerEventHandlerCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/ledger_event_handlers",
          body: parsed,
          model: ModernTreasury::Models::LedgerEventHandler,
          options: options
        )
      end

      # Get details on a single ledger event handler.
      #
      # @param id [String] id
      #
      # @param params [ModernTreasury::Models::LedgerEventHandlerRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::LedgerEventHandler]
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/ledger_event_handlers/%1$s", id],
          model: ModernTreasury::Models::LedgerEventHandler,
          options: params[:request_options]
        )
      end

      # Get a list of ledger event handlers.
      #
      # @param params [ModernTreasury::Models::LedgerEventHandlerListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :after_cursor
      #
      #   @option params [Hash{Symbol=>Time}] :created_at Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #     posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #     created_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      #   @option params [Hash{Symbol=>String}] :metadata For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #
      #   @option params [String] :name
      #
      #   @option params [Integer] :per_page
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::LedgerEventHandler>]
      def list(params = {})
        parsed, options = ModernTreasury::Models::LedgerEventHandlerListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/ledger_event_handlers",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::LedgerEventHandler,
          options: options
        )
      end

      # Archive a ledger event handler.
      #
      # @param id [String] id
      #
      # @param params [ModernTreasury::Models::LedgerEventHandlerDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::LedgerEventHandler]
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/ledger_event_handlers/%1$s", id],
          model: ModernTreasury::Models::LedgerEventHandler,
          options: params[:request_options]
        )
      end

      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
