# frozen_string_literal: true

module ModernTreasury
  module Resources
    class RoutingDetails
      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::RoutingDetailCreateParams} for more details.
      #
      # Create a routing detail for a single external account.
      #
      # @overload create(account_id, accounts_type:, routing_number:, routing_number_type:, payment_type: nil, request_options: {})
      #
      # @param account_id [String] Path param: The ID of the account.
      #
      # @param accounts_type [Symbol, ModernTreasury::Models::RoutingDetailCreateParams::AccountsType] Path param:
      #
      # @param routing_number [String] Body param: The routing number of the bank.
      #
      # @param routing_number_type [Symbol, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType] Body param: The type of routing number. See https://docs.moderntreasury.com/plat
      # ...
      #
      # @param payment_type [Symbol, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType, nil] Body param: If the routing detail is to be used for a specific payment type this
      # ...
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::RoutingDetail]
      #
      # @see ModernTreasury::Models::RoutingDetailCreateParams
      def create(account_id, params)
        parsed, options = ModernTreasury::Models::RoutingDetailCreateParams.dump_request(params)
        accounts_type =
          parsed.delete(:accounts_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/%1$s/%2$s/routing_details", accounts_type, account_id],
          body: parsed,
          model: ModernTreasury::Models::RoutingDetail,
          options: options
        )
      end

      # Get a single routing detail for a single internal or external account.
      #
      # @overload retrieve(id, accounts_type:, account_id:, request_options: {})
      #
      # @param id [String] The ID of the routing detail.
      #
      # @param accounts_type [Symbol, ModernTreasury::Models::AccountsType]
      #
      # @param account_id [String] The ID of the account.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::RoutingDetail]
      #
      # @see ModernTreasury::Models::RoutingDetailRetrieveParams
      def retrieve(id, params)
        parsed, options = ModernTreasury::Models::RoutingDetailRetrieveParams.dump_request(params)
        accounts_type =
          parsed.delete(:accounts_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        account_id =
          parsed.delete(:account_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/%2$s/routing_details/%3$s", accounts_type, account_id, id],
          model: ModernTreasury::Models::RoutingDetail,
          options: options
        )
      end

      # Get a list of routing details for a single internal or external account.
      #
      # @overload list(account_id, accounts_type:, after_cursor: nil, per_page: nil, request_options: {})
      #
      # @param account_id [String] Path param: The ID of the account.
      #
      # @param accounts_type [Symbol, ModernTreasury::Models::AccountsType] Path param:
      #
      # @param after_cursor [String, nil] Query param:
      #
      # @param per_page [Integer] Query param:
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::RoutingDetail>]
      #
      # @see ModernTreasury::Models::RoutingDetailListParams
      def list(account_id, params)
        parsed, options = ModernTreasury::Models::RoutingDetailListParams.dump_request(params)
        accounts_type =
          parsed.delete(:accounts_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/%2$s/routing_details", accounts_type, account_id],
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Models::RoutingDetail,
          options: options
        )
      end

      # Delete a routing detail for a single external account.
      #
      # @overload delete(id, accounts_type:, account_id:, request_options: {})
      #
      # @param id [String] The ID of the routing detail.
      #
      # @param accounts_type [Symbol, ModernTreasury::Models::RoutingDetailDeleteParams::AccountsType]
      #
      # @param account_id [String] The ID of the account.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see ModernTreasury::Models::RoutingDetailDeleteParams
      def delete(id, params)
        parsed, options = ModernTreasury::Models::RoutingDetailDeleteParams.dump_request(params)
        accounts_type =
          parsed.delete(:accounts_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        account_id =
          parsed.delete(:account_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/%1$s/%2$s/routing_details/%3$s", accounts_type, account_id, id],
          model: NilClass,
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
