# frozen_string_literal: true

module ModernTreasury
  module Resources
    class BulkRequests
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end

      # create bulk_request
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Symbol, ActionType] :action_type One of create, or update.
      #   @option params [Symbol, ResourceType] :resource_type One of payment_order, expected_payment, or ledger_transaction.
      #   @option params [Array<Resource::UnnamedTypeWithunionParent10, Resource::UnnamedTypeWithunionParent2, Resource::UnnamedTypeWithunionParent3, Resource::UnnamedTypeWithunionParent4, Resource::UnnamedTypeWithunionParent5, Resource::UnnamedTypeWithunionParent6, Resource::UnnamedTypeWithunionParent7, Resource::UnnamedTypeWithunionParent8, Resource::UnnamedTypeWithunionParent9>] :resources An array of objects where each object contains the input params for a single
      #     `action_type` request on a `resource_type` resource
      #   @option params [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::BulkRequest]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/api/bulk_requests",
          headers: {"Content-Type" => "application/json"},
          body: params,
          model: ModernTreasury::Models::BulkRequest
        }
        @client.request(req, opts)
      end

      # get bulk_request
      #
      # @param id [String] id
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::BulkRequest]
      def retrieve(id, opts = {})
        req = {
          method: :get,
          path: "/api/bulk_requests/#{id}",
          model: ModernTreasury::Models::BulkRequest
        }
        @client.request(req, opts)
      end

      # list bulk_requests
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Symbol, ActionType, nil] :action_type One of create, or update.
      #   @option params [String, nil] :after_cursor
      #   @option params [Hash, nil] :metadata For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #   @option params [Integer, nil] :per_page
      #   @option params [Symbol, ResourceType, nil] :resource_type One of payment_order, expected_payment, or ledger_transaction.
      #   @option params [Symbol, Status, nil] :status One of pending, processing, or completed.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::BulkRequest>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/api/bulk_requests",
          query: params,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::BulkRequest
        }
        @client.request(req, opts)
      end
    end
  end
end
