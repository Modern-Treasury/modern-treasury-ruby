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
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Symbol, AccountsType] :accounts_type Path param:
      #   @option params [String] :routing_number Body param: The routing number of the bank.
      #   @option params [Symbol, RoutingNumberType] :routing_number_type Body param: The type of routing number. See
      #     https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      #     more details.
      #   @option params [Symbol, PaymentType, nil] :payment_type Body param: If the routing detail is to be used for a specific payment type this
      #     field will be populated, otherwise null.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::RoutingDetail]
      def create(account_id, params = {}, opts = {})
        accounts_type = params.fetch(:accounts_type) do
          raise ArgumentError, "missing required path argument :accounts_type"
        end
        req = {
          method: :post,
          path: "/api/#{accounts_type}/#{account_id}/routing_details",
          body: params.except(:accounts_type),
          headers: {"Content-Type" => "application/json"},
          model: ModernTreasury::Models::RoutingDetail
        }
        @client.request(req, opts)
      end

      # Get a single routing detail for a single internal or external account.
      #
      # @param id [String] The ID of the routing detail.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Symbol, ModernTreasury::Models::AccountsType] :accounts_type
      #   @option params [String] :account_id The ID of the account.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::RoutingDetail]
      def retrieve(id, params = {}, opts = {})
        accounts_type = params.fetch(:accounts_type) do
          raise ArgumentError, "missing required path argument :accounts_type"
        end
        account_id = params.fetch(:account_id) do
          raise ArgumentError, "missing required path argument :account_id"
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
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Symbol, ModernTreasury::Models::AccountsType] :accounts_type Path param:
      #   @option params [String, nil] :after_cursor Query param:
      #   @option params [Integer, nil] :per_page Query param:
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::RoutingDetail>]
      def list(account_id, params = {}, opts = {})
        accounts_type = params.fetch(:accounts_type) do
          raise ArgumentError, "missing required path argument :accounts_type"
        end
        req = {
          method: :get,
          path: "/api/#{accounts_type}/#{account_id}/routing_details",
          query: params.except(:accounts_type),
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::RoutingDetail
        }
        @client.request(req, opts)
      end

      # Delete a routing detail for a single external account.
      #
      # @param id [String] The ID of the routing detail.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Symbol, AccountsType] :accounts_type
      #   @option params [String] :account_id The ID of the account.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      def delete(id, params = {}, opts = {})
        accounts_type = params.fetch(:accounts_type) do
          raise ArgumentError, "missing required path argument :accounts_type"
        end
        account_id = params.fetch(:account_id) do
          raise ArgumentError, "missing required path argument :account_id"
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
