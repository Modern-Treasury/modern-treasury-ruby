# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Events
      # get event
      #
      # @param id [String] event id
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Event]
      #
      def retrieve(id, opts = {})
        req = {
          method: :get,
          path: ["api/events/%0s", id],
          model: ModernTreasury::Models::Event
        }
        @client.request(req, opts)
      end

      # list events
      #
      # @param params [ModernTreasury::Models::EventListParams, Hash{Symbol => Object}] Attributes to send in this request.
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
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::Event>]
      #
      def list(params = {}, opts = {})
        parsed = ModernTreasury::Models::EventListParams.dump(params)
        req = {
          method: :get,
          path: "api/events",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::Event
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
