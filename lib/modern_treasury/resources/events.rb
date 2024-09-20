# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Events
      def initialize(client:)
        @client = client
      end

      # get event
      #
      # @param id [String] event id
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Event]
      def retrieve(id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/events/#{id}"
        req[:model] = ModernTreasury::Models::Event
        @client.request(req, opts)
      end

      # list events
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :after_cursor
      # @option params [String] :entity_id
      # @option params [String] :event_name
      # @option params [DateTime] :event_time_end An inclusive upper bound for when the event occurred
      # @option params [DateTime] :event_time_start An inclusive lower bound for when the event occurred
      # @option params [Integer] :per_page
      # @option params [String] :resource
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::Event>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/events"
        req[:query] = params
        req[:page] = ModernTreasury::Page
        req[:model] = ModernTreasury::Models::Event
        @client.request(req, opts)
      end
    end
  end
end
