# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerableEvents
      def initialize(client:)
        @client = client
      end

      # Create a ledgerable event.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :name Name of the ledgerable event.
      # @option params [Object] :custom_data Additionally data to be used by the Ledger Event Handler.
      # @option params [String] :description Description of the ledgerable event.
      # @option params [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerableEvent]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/api/ledgerable_events"
        req[:body] = params
        req[:model] = ModernTreasury::Models::LedgerableEvent
        @client.request(req, opts)
      end

      # Get details on a single ledgerable event.
      #
      # @param id [String] id
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerableEvent]
      def retrieve(id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/ledgerable_events/#{id}"
        req[:model] = ModernTreasury::Models::LedgerableEvent
        @client.request(req, opts)
      end
    end
  end
end
