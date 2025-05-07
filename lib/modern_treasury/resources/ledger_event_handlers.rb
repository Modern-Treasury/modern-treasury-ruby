# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerEventHandlers
      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerEventHandlerCreateParams} for more details.
      #
      # create ledger_event_handler
      #
      # @overload create(ledger_transaction_template:, name:, conditions: nil, description: nil, ledger_id: nil, metadata: nil, variables: nil, request_options: {})
      #
      # @param ledger_transaction_template [ModernTreasury::LedgerEventHandlerCreateParams::LedgerTransactionTemplate]
      #
      # @param name [String] Name of the ledger event handler.
      #
      # @param conditions [ModernTreasury::LedgerEventHandlerCreateParams::Conditions, nil]
      #
      # @param description [String, nil] An optional description.
      #
      # @param ledger_id [String] The id of the ledger that this account belongs to.
      #
      # @param metadata [Hash{Symbol=>String}, nil] Additional data represented as key-value pairs. Both the key and value must be s
      #
      # @param variables [Hash{Symbol=>ModernTreasury::LedgerEventHandlerVariable}, nil]
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::LedgerEventHandler]
      #
      # @see ModernTreasury::Models::LedgerEventHandlerCreateParams
      def create(params)
        parsed, options = ModernTreasury::LedgerEventHandlerCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/ledger_event_handlers",
          body: parsed,
          model: ModernTreasury::LedgerEventHandler,
          options: options
        )
      end

      # Get details on a single ledger event handler.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::LedgerEventHandler]
      #
      # @see ModernTreasury::Models::LedgerEventHandlerRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/ledger_event_handlers/%1$s", id],
          model: ModernTreasury::LedgerEventHandler,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerEventHandlerListParams} for more details.
      #
      # Get a list of ledger event handlers.
      #
      # @overload list(after_cursor: nil, created_at: nil, metadata: nil, name: nil, per_page: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      #
      # @param created_at [Hash{Symbol=>Time}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the pos
      #
      # @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #
      # @param name [String]
      #
      # @param per_page [Integer]
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::LedgerEventHandler>]
      #
      # @see ModernTreasury::Models::LedgerEventHandlerListParams
      def list(params = {})
        parsed, options = ModernTreasury::LedgerEventHandlerListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/ledger_event_handlers",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::LedgerEventHandler,
          options: options
        )
      end

      # Archive a ledger event handler.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::LedgerEventHandler]
      #
      # @see ModernTreasury::Models::LedgerEventHandlerDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/ledger_event_handlers/%1$s", id],
          model: ModernTreasury::LedgerEventHandler,
          options: params[:request_options]
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
