# frozen_string_literal: true

module ModernTreasury
  module Resources
    class BulkResults
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end

      # get bulk_result
      #
      # @param id [String] id
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::BulkResult]
      def retrieve(id, opts = {})
        req = {
          method: :get,
          path: "/api/bulk_results/#{id}",
          model: ModernTreasury::Models::BulkResult
        }
        @client.request(req, opts)
      end

      # list bulk_results
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :after_cursor
      # @option params [String, nil] :entity_id Unique identifier for the result entity object.
      # @option params [Symbol, EntityType, nil] :entity_type The type of the request that created this result. bulk_request is the only
      #   supported `request_type`
      # @option params [Integer, nil] :per_page
      # @option params [String, nil] :request_id Unique identifier for the request that created this bulk result. This is the ID
      #   of the bulk request when `request_type` is bulk_request
      # @option params [Symbol, RequestType, nil] :request_type The type of the request that created this result. bulk_request is the only
      #   supported `request_type`
      # @option params [Symbol, Status, nil] :status One of successful or failed.
      #
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::BulkResult>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/api/bulk_results",
          query: params,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::BulkResult
        }
        @client.request(req, opts)
      end
    end
  end
end
