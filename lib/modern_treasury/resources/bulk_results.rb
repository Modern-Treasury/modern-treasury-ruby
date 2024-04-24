# frozen_string_literal: true

module ModernTreasury
  module Resources
    class BulkResults
      def initialize(client:)
        @client = client
      end

      # get bulk_result
      #
      # @param id [String] id
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::BulkResult]
      def retrieve(id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/bulk_results/#{id}"
        req[:model] = ModernTreasury::Models::BulkResult
        @client.request(req, opts)
      end

      # list bulk_results
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :after_cursor
      # @option params [String] :entity_id Unique identifier for the result entity object.
      # @option params [Symbol] :entity_type The type of the request that created this result. bulk_request is the only
      #   supported `request_type`
      # @option params [Integer] :per_page
      # @option params [String] :request_id Unique identifier for the request that created this bulk result. This is the ID
      #   of the bulk request when `request_type` is bulk_request
      # @option params [Symbol] :request_type The type of the request that created this result. bulk_request is the only
      #   supported `request_type`
      # @option params [Symbol] :status One of successful or failed.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::BulkResult>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/bulk_results"
        req[:query] = params
        req[:page] = ModernTreasury::Page
        req[:model] = ModernTreasury::Models::BulkResult
        @client.request(req, opts)
      end
    end
  end
end
