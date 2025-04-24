# frozen_string_literal: true

module ModernTreasury
  module Resources
    class BulkResults
      # get bulk_result
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::BulkResult]
      #
      # @see ModernTreasury::Models::BulkResultRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/bulk_results/%1$s", id],
          model: ModernTreasury::Models::BulkResult,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::BulkResultListParams} for more details.
      #
      # list bulk_results
      #
      # @overload list(after_cursor: nil, entity_id: nil, entity_type: nil, per_page: nil, request_id: nil, request_type: nil, status: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      #
      # @param entity_id [String] Unique identifier for the result entity object.
      #
      # @param entity_type [Symbol, ModernTreasury::Models::BulkResultListParams::EntityType] The type of the request that created this result. bulk_request is the only suppo
      # ...
      #
      # @param per_page [Integer]
      #
      # @param request_id [String] Unique identifier for the request that created this bulk result. This is the ID
      # ...
      #
      # @param request_type [Symbol, ModernTreasury::Models::BulkResultListParams::RequestType] The type of the request that created this result. bulk_request is the only suppo
      # ...
      #
      # @param status [Symbol, ModernTreasury::Models::BulkResultListParams::Status] One of successful or failed.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::BulkResult>]
      #
      # @see ModernTreasury::Models::BulkResultListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::BulkResultListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/bulk_results",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Models::BulkResult,
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
