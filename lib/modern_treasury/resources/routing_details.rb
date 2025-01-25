# frozen_string_literal: true

module ModernTreasury
  module Resources
    class RoutingDetails
      # Create a routing detail for a single external account.
      #
      # @param account_id [String] Path param: The ID of the account.
      #
      # @param params [ModernTreasury::Models::RoutingDetailCreateParams, Hash{Symbol=>Object}] .
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
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [ModernTreasury::Models::RoutingDetail]
      #
      def create(account_id, params)
        parsed, options = ModernTreasury::Models::RoutingDetailCreateParams.dump_request(params)
        accounts_type = parsed.fetch(:accounts_type) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        @client.request(
          method: :post,
          path: ["api/%0s/%1s/routing_details", accounts_type, account_id],
          body: parsed.except(:accounts_type),
          model: ModernTreasury::Models::RoutingDetail,
          options: options
        )
      end

      # Get a single routing detail for a single internal or external account.
      #
      # @param id [String] The ID of the routing detail.
      #
      # @param params [ModernTreasury::Models::RoutingDetailRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, ModernTreasury::Models::AccountsType] :accounts_type
      #
      #   @option params [String] :account_id The ID of the account.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [ModernTreasury::Models::RoutingDetail]
      #
      def retrieve(id, params)
        parsed, options = ModernTreasury::Models::RoutingDetailRetrieveParams.dump_request(params)
        accounts_type = parsed.fetch(:accounts_type) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        account_id = parsed.fetch(:account_id) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        @client.request(
          method: :get,
          path: ["api/%0s/%1s/routing_details/%2s", accounts_type, account_id, id],
          model: ModernTreasury::Models::RoutingDetail,
          options: options
        )
      end

      # Get a list of routing details for a single internal or external account.
      #
      # @param account_id [String] Path param: The ID of the account.
      #
      # @param params [ModernTreasury::Models::RoutingDetailListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, ModernTreasury::Models::AccountsType] :accounts_type Path param:
      #
      #   @option params [String, nil] :after_cursor Query param:
      #
      #   @option params [Integer] :per_page Query param:
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::RoutingDetail>]
      #
      def list(account_id, params)
        parsed, options = ModernTreasury::Models::RoutingDetailListParams.dump_request(params)
        accounts_type = parsed.fetch(:accounts_type) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        @client.request(
          method: :get,
          path: ["api/%0s/%1s/routing_details", accounts_type, account_id],
          query: parsed.except(:accounts_type),
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::RoutingDetail,
          options: options
        )
      end

      # Delete a routing detail for a single external account.
      #
      # @param id [String] The ID of the routing detail.
      #
      # @param params [ModernTreasury::Models::RoutingDetailDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, ModernTreasury::Models::RoutingDetailDeleteParams::AccountsType] :accounts_type
      #
      #   @option params [String] :account_id The ID of the account.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [nil]
      #
      def delete(id, params)
        parsed, options = ModernTreasury::Models::RoutingDetailDeleteParams.dump_request(params)
        accounts_type = parsed.fetch(:accounts_type) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        account_id = parsed.fetch(:account_id) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        @client.request(
          method: :delete,
          path: ["api/%0s/%1s/routing_details/%2s", accounts_type, account_id, id],
          model: NilClass,
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
