# frozen_string_literal: true

module ModernTreasury
  module Resources
    class BulkRequests
      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::BulkRequestCreateParams} for more details.
      #
      # create bulk_request
      #
      # @overload create(action_type:, resource_type:, resources:, metadata: nil, request_options: {})
      #
      # @param action_type [Symbol, ModernTreasury::Models::BulkRequestCreateParams::ActionType] One of create, or update.
      #
      # @param resource_type [Symbol, ModernTreasury::Models::BulkRequestCreateParams::ResourceType] One of payment_order, expected_payment, or ledger_transaction.
      #
      # @param resources [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::ID, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID>] An array of objects where each object contains the input params for a single `ac
      # ...
      #
      # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      # ...
      #
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
      # @param id [String] id
      #
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

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::BulkRequestListParams} for more details.
      #
      # list bulk_requests
      #
      # @overload list(action_type: nil, after_cursor: nil, metadata: nil, per_page: nil, resource_type: nil, status: nil, request_options: {})
      #
      # @param action_type [Symbol, ModernTreasury::Models::BulkRequestListParams::ActionType] One of create, or update.
      #
      # @param after_cursor [String, nil]
      #
      # @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      # ...
      #
      # @param per_page [Integer]
      #
      # @param resource_type [Symbol, ModernTreasury::Models::BulkRequestListParams::ResourceType] One of payment_order, expected_payment, or ledger_transaction.
      #
      # @param status [Symbol, ModernTreasury::Models::BulkRequestListParams::Status] One of pending, processing, or completed.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::BulkRequest>]
      #
      # @see ModernTreasury::Models::BulkRequestListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::BulkRequestListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/bulk_requests",
          query: parsed,
          page: ModernTreasury::Internal::Page,
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
