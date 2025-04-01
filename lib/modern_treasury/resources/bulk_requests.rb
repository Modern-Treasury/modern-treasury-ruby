# frozen_string_literal: true

module ModernTreasury
  module Resources
    class BulkRequests
      # create bulk_request
      #
      # @overload create(action_type:, resource_type:, resources:, metadata: nil, request_options: {})
      #
      # @param action_type [Symbol, ModernTreasury::Models::BulkRequestCreateParams::ActionType]
      # @param resource_type [Symbol, ModernTreasury::Models::BulkRequestCreateParams::ResourceType]
      # @param resources [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::ID, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID>]
      # @param metadata [Hash{Symbol=>String}]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::BulkRequest]
      #
      # @see ModernTreasury::Models::BulkRequestCreateParams
      def create(params)
        parsed, options = ModernTreasury::Models::BulkRequestCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/bulk_requests",
          body: parsed,
          model: ModernTreasury::Models::BulkRequest,
          options: options
        )
      end

      # get bulk_request
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::BulkRequest]
      #
      # @see ModernTreasury::Models::BulkRequestRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/bulk_requests/%1$s", id],
          model: ModernTreasury::Models::BulkRequest,
          options: params[:request_options]
        )
      end

      # list bulk_requests
      #
      # @overload list(action_type: nil, after_cursor: nil, metadata: nil, per_page: nil, resource_type: nil, status: nil, request_options: {})
      #
      # @param action_type [Symbol, ModernTreasury::Models::BulkRequestListParams::ActionType]
      # @param after_cursor [String, nil]
      # @param metadata [Hash{Symbol=>String}]
      # @param per_page [Integer]
      # @param resource_type [Symbol, ModernTreasury::Models::BulkRequestListParams::ResourceType]
      # @param status [Symbol, ModernTreasury::Models::BulkRequestListParams::Status]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::BulkRequest>]
      #
      # @see ModernTreasury::Models::BulkRequestListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::BulkRequestListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/bulk_requests",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::BulkRequest,
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
