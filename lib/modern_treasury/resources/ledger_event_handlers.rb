# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerEventHandlers
      # create ledger_event_handler
      #
      # @overload create(ledger_transaction_template:, name:, conditions: nil, description: nil, ledger_id: nil, metadata: nil, variables: nil, request_options: {})
      #
      # @param ledger_transaction_template [ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate]
      # @param name [String]
      # @param conditions [ModernTreasury::Models::LedgerEventHandlerCreateParams::Conditions, nil]
      # @param description [String, nil]
      # @param ledger_id [String]
      # @param metadata [Hash{Symbol=>String}, nil]
      # @param variables [Hash{Symbol=>ModernTreasury::Models::LedgerEventHandlerVariable}, nil]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerEventHandler]
      #
      # @see ModernTreasury::Models::LedgerEventHandlerCreateParams
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
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerEventHandler]
      #
      # @see ModernTreasury::Models::LedgerEventHandlerRetrieveParams
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
      # @overload list(after_cursor: nil, created_at: nil, metadata: nil, name: nil, per_page: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      # @param created_at [Hash{Symbol=>Time}]
      # @param metadata [Hash{Symbol=>String}]
      # @param name [String]
      # @param per_page [Integer]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::LedgerEventHandler>]
      #
      # @see ModernTreasury::Models::LedgerEventHandlerListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::LedgerEventHandlerListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/ledger_event_handlers",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Models::LedgerEventHandler,
          options: options
        )
      end

      # Archive a ledger event handler.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerEventHandler]
      #
      # @see ModernTreasury::Models::LedgerEventHandlerDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/ledger_event_handlers/%1$s", id],
          model: ModernTreasury::Models::LedgerEventHandler,
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
