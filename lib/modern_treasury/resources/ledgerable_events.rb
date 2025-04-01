# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerableEvents
      # Create a ledgerable event.
      #
      # @param params [ModernTreasury::Models::LedgerableEventCreateParams, Hash{Symbol=>Object}] .
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
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::LedgerableEvent]
      def create(params)
        parsed, options = ModernTreasury::Models::LedgerableEventCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/ledgerable_events",
          body: parsed,
          model: ModernTreasury::Models::LedgerableEvent,
          options: options
        )
      end

      # Get details on a single ledgerable event.
      #
      # @param id [String] id
      #
      # @param params [ModernTreasury::Models::LedgerableEventRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::LedgerableEvent]
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/ledgerable_events/%1$s", id],
          model: ModernTreasury::Models::LedgerableEvent,
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
