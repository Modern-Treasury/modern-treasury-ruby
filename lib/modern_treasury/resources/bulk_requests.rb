# frozen_string_literal: true

module ModernTreasury
  module Resources
    class BulkRequests
      # create bulk_request
      #
      # @param params [ModernTreasury::Models::BulkRequestCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, ModernTreasury::Models::BulkRequestCreateParams::ActionType] :action_type One of create, or update.
      #
      #   @option params [Symbol, ModernTreasury::Models::BulkRequestCreateParams::ResourceType] :resource_type One of payment_order, expected_payment, or ledger_transaction.
      #
      #   @option params [Array<ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::ID, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID>] :resources An array of objects where each object contains the input params for a single
      #     `action_type` request on a `resource_type` resource
      #
      #   @option params [Hash{Symbol=>String}] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [ModernTreasury::Models::BulkRequest]
      #
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
      # @param id [String] id
      #
      # @param params [ModernTreasury::Models::BulkRequestRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [ModernTreasury::Models::BulkRequest]
      #
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/bulk_requests/%0s", id],
          model: ModernTreasury::Models::BulkRequest,
          options: params[:request_options]
        )
      end

      # list bulk_requests
      #
      # @param params [ModernTreasury::Models::BulkRequestListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, ModernTreasury::Models::BulkRequestListParams::ActionType] :action_type One of create, or update.
      #
      #   @option params [String, nil] :after_cursor
      #
      #   @option params [Hash{Symbol=>String}] :metadata For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #
      #   @option params [Integer] :per_page
      #
      #   @option params [Symbol, ModernTreasury::Models::BulkRequestListParams::ResourceType] :resource_type One of payment_order, expected_payment, or ledger_transaction.
      #
      #   @option params [Symbol, ModernTreasury::Models::BulkRequestListParams::Status] :status One of pending, processing, or completed.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::BulkRequest>]
      #
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

      # @param client [ModernTreasury::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
