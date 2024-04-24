# frozen_string_literal: true

module ModernTreasury
  module Resources
    class RoutingDetails
      def initialize(client:)
        @client = client
      end

      # Create a routing detail for a single external account.
      #
      # @param accounts_type [Symbol]
      #
      # @param account_id [String] The ID of the account.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :routing_number The routing number of the bank.
      # @option params [Symbol] :routing_number_type The type of routing number. See
      #   https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      #   more details.
      # @option params [Symbol] :payment_type If the routing detail is to be used for a specific payment type this field will
      #   be populated, otherwise null.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::RoutingDetail]
      def create(accounts_type, account_id, params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/api/#{accounts_type}/#{account_id}/routing_details"
        req[:body] = params
        req[:model] = ModernTreasury::Models::RoutingDetail
        @client.request(req, opts)
      end

      # Get a single routing detail for a single internal or external account.
      #
      # @param accounts_type [Symbol]
      # @param account_id [String] The ID of the account.
      # @param id [String] The ID of the routing detail.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::RoutingDetail]
      def retrieve(accounts_type, account_id, id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/#{accounts_type}/#{account_id}/routing_details/#{id}"
        req[:model] = ModernTreasury::Models::RoutingDetail
        @client.request(req, opts)
      end

      # Get a list of routing details for a single internal or external account.
      #
      # @param accounts_type [Symbol]
      #
      # @param account_id [String] The ID of the account.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :after_cursor
      # @option params [Integer] :per_page
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::RoutingDetail>]
      def list(accounts_type, account_id, params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/#{accounts_type}/#{account_id}/routing_details"
        req[:query] = params
        req[:page] = ModernTreasury::Page
        req[:model] = ModernTreasury::Models::RoutingDetail
        @client.request(req, opts)
      end

      # Delete a routing detail for a single external account.
      #
      # @param accounts_type [Symbol]
      # @param account_id [String] The ID of the account.
      # @param id [String] The ID of the routing detail.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [NilClass]
      def delete(accounts_type, account_id, id, opts = {})
        req = {}
        req[:method] = :delete
        req[:path] = "/api/#{accounts_type}/#{account_id}/routing_details/#{id}"
        req[:model] = NilClass
        @client.request(req, opts)
      end
    end
  end
end
