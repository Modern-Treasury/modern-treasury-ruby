# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerEventHandlers
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end

      # create ledger_event_handler
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [LedgerTransactionTemplate] :ledger_transaction_template
      #   @option params [String] :name Name of the ledger event handler.
      #   @option params [Conditions, nil] :conditions
      #   @option params [String, nil] :description An optional description.
      #   @option params [String, nil] :ledger_id The id of the ledger that this account belongs to.
      #   @option params [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #   @option params [Hash, nil] :variables
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerEventHandler]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/api/ledger_event_handlers",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: ModernTreasury::Models::LedgerEventHandler
        }
        @client.request(req, opts)
      end

      # Get details on a single ledger event handler.
      #
      # @param id [String] id
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerEventHandler]
      def retrieve(id, opts = {})
        req = {
          method: :get,
          path: "/api/ledger_event_handlers/#{id}",
          model: ModernTreasury::Models::LedgerEventHandler
        }
        @client.request(req, opts)
      end

      # Get a list of ledger event handlers.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String, nil] :after_cursor
      #   @option params [Hash, nil] :created_at Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #     posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #     created_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #   @option params [Hash, nil] :metadata For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #   @option params [String, nil] :name
      #   @option params [Integer, nil] :per_page
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::LedgerEventHandler>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/api/ledger_event_handlers",
          query: params,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::LedgerEventHandler
        }
        @client.request(req, opts)
      end

      # Archive a ledger event handler.
      #
      # @param id [String] id
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerEventHandler]
      def delete(id, opts = {})
        req = {
          method: :delete,
          path: "/api/ledger_event_handlers/#{id}",
          model: ModernTreasury::Models::LedgerEventHandler
        }
        @client.request(req, opts)
      end
    end
  end
end
