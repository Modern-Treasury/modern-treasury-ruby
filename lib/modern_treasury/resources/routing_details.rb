# frozen_string_literal: true

module ModernTreasury
  module Resources
    class RoutingDetails
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end

      # Create a routing detail for a single external account.
      #
      # @param accounts_type [Symbol, AccountsType]
      #
      # @param account_id [String] The ID of the account.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :routing_number The routing number of the bank.
      #   @option params [Symbol, RoutingNumberType] :routing_number_type The type of routing number. See
      #     https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      #     more details.
      #   @option params [Symbol, PaymentType, nil] :payment_type If the routing detail is to be used for a specific payment type this field will
      #     be populated, otherwise null.
      #
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::RoutingDetail]
      def create(accounts_type, account_id, params = {}, opts = {})
        req = {
          method: :post,
          path: "/api/#{accounts_type}/#{account_id}/routing_details",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: ModernTreasury::Models::RoutingDetail
        }
        @client.request(req, opts)
      end

      # Get a single routing detail for a single internal or external account.
      #
      # @param accounts_type [Symbol, ModernTreasury::Models::AccountsType]
      # @param account_id [String] The ID of the account.
      # @param id [String] The ID of the routing detail.
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::RoutingDetail]
      def retrieve(accounts_type, account_id, id, opts = {})
        req = {
          method: :get,
          path: "/api/#{accounts_type}/#{account_id}/routing_details/#{id}",
          model: ModernTreasury::Models::RoutingDetail
        }
        @client.request(req, opts)
      end

      # Get a list of routing details for a single internal or external account.
      #
      # @param accounts_type [Symbol, ModernTreasury::Models::AccountsType]
      #
      # @param account_id [String] The ID of the account.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String, nil] :after_cursor
      #   @option params [Integer, nil] :per_page
      #
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::RoutingDetail>]
      def list(accounts_type, account_id, params = {}, opts = {})
        req = {
          method: :get,
          path: "/api/#{accounts_type}/#{account_id}/routing_details",
          query: params,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::RoutingDetail
        }
        @client.request(req, opts)
      end

      # Delete a routing detail for a single external account.
      #
      # @param accounts_type [Symbol, AccountsType]
      # @param account_id [String] The ID of the account.
      # @param id [String] The ID of the routing detail.
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      def delete(accounts_type, account_id, id, opts = {})
        req = {
          method: :delete,
          path: "/api/#{accounts_type}/#{account_id}/routing_details/#{id}",
          model: NilClass
        }
        @client.request(req, opts)
      end
    end
  end
end
