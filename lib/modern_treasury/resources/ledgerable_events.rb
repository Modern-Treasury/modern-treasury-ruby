# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerableEvents
      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerableEventCreateParams} for more details.
      #
      # Create a ledgerable event.
      #
      # @overload create(name:, custom_data: nil, description: nil, metadata: nil, request_options: {})
      #
      # @param name [String] Name of the ledgerable event.
      #
      # @param custom_data [Object, nil] Additionally data to be used by the Ledger Event Handler.
      #
      # @param description [String, nil] Description of the ledgerable event.
      #
      # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      # ...
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerableEvent]
      #
      # @see ModernTreasury::Models::LedgerableEventCreateParams
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
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerableEvent]
      #
      # @see ModernTreasury::Models::LedgerableEventRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/ledgerable_events/%1$s", id],
          model: ModernTreasury::Models::LedgerableEvent,
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
