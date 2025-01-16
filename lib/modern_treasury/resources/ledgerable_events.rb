# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerableEvents
      # Create a ledgerable event.
      #
      # @param params [ModernTreasury::Models::LedgerableEventCreateParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [String] :name Name of the ledgerable event.
      #
      #   @option params [Object, nil] :custom_data Additionally data to be used by the Ledger Event Handler.
      #
      #   @option params [String, nil] :description Description of the ledgerable event.
      #
      #   @option params [Hash{Symbol=>String}] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      # @param opts [Hash{Symbol=>Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerableEvent]
      #
      def create(params = {}, opts = {})
        parsed = ModernTreasury::Models::LedgerableEventCreateParams.dump(params)
        req = {
          method: :post,
          path: "api/ledgerable_events",
          body: parsed,
          model: ModernTreasury::Models::LedgerableEvent
        }
        @client.request(req, opts)
      end

      # Get details on a single ledgerable event.
      #
      # @param id [String] id
      #
      # @param opts [Hash{Symbol=>Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerableEvent]
      #
      def retrieve(id, opts = {})
        req = {
          method: :get,
          path: ["api/ledgerable_events/%0s", id],
          model: ModernTreasury::Models::LedgerableEvent
        }
        @client.request(req, opts)
      end

      # @param client [ModernTreasury::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
