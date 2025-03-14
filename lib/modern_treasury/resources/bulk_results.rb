# frozen_string_literal: true

module ModernTreasury
  module Resources
    class BulkResults
      # get bulk_result
      #
      # @param id [String] id
      #
      # @param params [ModernTreasury::Models::BulkResultRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::BulkResult]
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/bulk_results/%0s", id],
          model: ModernTreasury::Models::BulkResult,
          options: params[:request_options]
        )
      end

      # list bulk_results
      #
      # @param params [ModernTreasury::Models::BulkResultListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :after_cursor
      #
      #   @option params [String] :entity_id Unique identifier for the result entity object.
      #
      #   @option params [Symbol, ModernTreasury::Models::BulkResultListParams::EntityType] :entity_type The type of the request that created this result. bulk_request is the only
      #     supported `request_type`
      #
      #   @option params [Integer] :per_page
      #
      #   @option params [String] :request_id Unique identifier for the request that created this bulk result. This is the ID
      #     of the bulk request when `request_type` is bulk_request
      #
      #   @option params [Symbol, ModernTreasury::Models::BulkResultListParams::RequestType] :request_type The type of the request that created this result. bulk_request is the only
      #     supported `request_type`
      #
      #   @option params [Symbol, ModernTreasury::Models::BulkResultListParams::Status] :status One of successful or failed.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::BulkResult>]
      def list(params = {})
        parsed, options = ModernTreasury::Models::BulkResultListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/bulk_results",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::BulkResult,
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
