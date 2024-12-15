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
      # @param account_id [String] Path param: The ID of the account.
      #
      # @param params [Hash{Symbol => Object}, ModernTreasury::Models::RoutingDetailCreateParams] Attributes to send in this request.
      #
      #   @option params [Symbol, ModernTreasury::Models::RoutingDetailCreateParams::AccountsType] :accounts_type Path param:
      #
      #   @option params [String] :routing_number Body param: The routing number of the bank.
      #
      #   @option params [Symbol, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType] :routing_number_type Body param: The type of routing number. See
      #     https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      #     more details.
      #
      #   @option params [Symbol, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType, nil] :payment_type Body param: If the routing detail is to be used for a specific payment type this
      #     field will be populated, otherwise null.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::RoutingDetail]
      def create(account_id, params = {}, opts = {})
        parsed = ModernTreasury::Models::RoutingDetailCreateParams.dump(params)
        accounts_type = parsed.fetch(:accounts_type) do
          raise ArgumentError.new("missing required path argument :accounts_type")
        end
        req = {
          method: :post,
          path: "/api/#{accounts_type}/#{account_id}/routing_details",
          body: parsed.except(:accounts_type),
          model: ModernTreasury::Models::RoutingDetail
        }
        @client.request(req, opts)
      end

      # Get a single routing detail for a single internal or external account.
      #
      # @param id [String] The ID of the routing detail.
      #
      # @param params [Hash{Symbol => Object}, ModernTreasury::Models::RoutingDetailRetrieveParams] Attributes to send in this request.
      #
      #   @option params [Symbol, ModernTreasury::Models::AccountsType] :accounts_type
      #
      #   @option params [String] :account_id The ID of the account.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::RoutingDetail]
      def retrieve(id, params = {}, opts = {})
        parsed = ModernTreasury::Models::RoutingDetailRetrieveParams.dump(params)
        accounts_type = parsed.fetch(:accounts_type) do
          raise ArgumentError.new("missing required path argument :accounts_type")
        end
        account_id = parsed.fetch(:account_id) do
          raise ArgumentError.new("missing required path argument :account_id")
        end
        req = {
          method: :get,
          path: "/api/#{accounts_type}/#{account_id}/routing_details/#{id}",
          model: ModernTreasury::Models::RoutingDetail
        }
        @client.request(req, opts)
      end

      # Get a list of routing details for a single internal or external account.
      #
      # @param account_id [String] Path param: The ID of the account.
      #
      # @param params [Hash{Symbol => Object}, ModernTreasury::Models::RoutingDetailListParams] Attributes to send in this request.
      #
      #   @option params [Symbol, ModernTreasury::Models::AccountsType] :accounts_type Path param:
      #
      #   @option params [String, nil] :after_cursor Query param:
      #
      #   @option params [Integer, nil] :per_page Query param:
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::RoutingDetail>]
      def list(account_id, params = {}, opts = {})
        parsed = ModernTreasury::Models::RoutingDetailListParams.dump(params)
        accounts_type = parsed.fetch(:accounts_type) do
          raise ArgumentError.new("missing required path argument :accounts_type")
        end
        req = {
          method: :get,
          path: "/api/#{accounts_type}/#{account_id}/routing_details",
          query: parsed.except(:accounts_type),
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::RoutingDetail
        }
        @client.request(req, opts)
      end

      # Delete a routing detail for a single external account.
      #
      # @param id [String] The ID of the routing detail.
      #
      # @param params [Hash{Symbol => Object}, ModernTreasury::Models::RoutingDetailDeleteParams] Attributes to send in this request.
      #
      #   @option params [Symbol, ModernTreasury::Models::RoutingDetailDeleteParams::AccountsType] :accounts_type
      #
      #   @option params [String] :account_id The ID of the account.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      def delete(id, params = {}, opts = {})
        parsed = ModernTreasury::Models::RoutingDetailDeleteParams.dump(params)
        accounts_type = parsed.fetch(:accounts_type) do
          raise ArgumentError.new("missing required path argument :accounts_type")
        end
        account_id = parsed.fetch(:account_id) do
          raise ArgumentError.new("missing required path argument :account_id")
        end
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
