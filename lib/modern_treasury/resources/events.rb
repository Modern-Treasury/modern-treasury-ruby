# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Events
      # get event
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] event id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::Event]
      #
      # @see ModernTreasury::Models::EventRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/events/%1$s", id],
          model: ModernTreasury::Event,
          options: params[:request_options]
        )
      end

      # list events
      #
      # @overload list(after_cursor: nil, entity_id: nil, event_name: nil, event_time_end: nil, event_time_start: nil, per_page: nil, resource: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      #
      # @param entity_id [String]
      #
      # @param event_name [String]
      #
      # @param event_time_end [Time] An inclusive upper bound for when the event occurred
      #
      # @param event_time_start [Time] An inclusive lower bound for when the event occurred
      #
      # @param per_page [Integer]
      #
      # @param resource [String]
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::Event>]
      #
      # @see ModernTreasury::Models::EventListParams
      def list(params = {})
        parsed, options = ModernTreasury::EventListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/events",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Event,
          options: options
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
