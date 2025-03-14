# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Events
      # get event
      #
      # @param id [String] event id
      #
      # @param params [ModernTreasury::Models::EventRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::Event]
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/events/%0s", id],
          model: ModernTreasury::Models::Event,
          options: params[:request_options]
        )
      end

      # list events
      #
      # @param params [ModernTreasury::Models::EventListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :after_cursor
      #
      #   @option params [String] :entity_id
      #
      #   @option params [String] :event_name
      #
      #   @option params [Time] :event_time_end An inclusive upper bound for when the event occurred
      #
      #   @option params [Time] :event_time_start An inclusive lower bound for when the event occurred
      #
      #   @option params [Integer] :per_page
      #
      #   @option params [String] :resource
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::Event>]
      def list(params = {})
        parsed, options = ModernTreasury::Models::EventListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/events",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::Event,
          options: options
        )
      end

      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
