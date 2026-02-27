# frozen_string_literal: true

module ModernTreasury
  module Resources
    class PaymentFlows
      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::PaymentFlowCreateParams} for more details.
      #
      # create payment_flow
      #
      # @overload create(amount:, counterparty_id:, currency:, direction:, originating_account_id:, due_date: nil, request_options: {})
      #
      # @param amount [Integer] Required. Value in specified currency's smallest unit. e.g. $10 would be represe
      #
      # @param counterparty_id [String] Required. The ID of a counterparty associated with the payment. As part of the p
      #
      # @param currency [String] Required. The currency of the payment.
      #
      # @param direction [Symbol, ModernTreasury::Models::PaymentFlowCreateParams::Direction] Required. Describes the direction money is flowing in the transaction. Can only
      #
      # @param originating_account_id [String] Required. The ID of one of your organization's internal accounts.
      #
      # @param due_date [Date] Optional. Can only be passed in when `effective_date_selection_enabled` is `true
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::PaymentFlow]
      #
      # @see ModernTreasury::Models::PaymentFlowCreateParams
      def create(params)
        parsed, options = ModernTreasury::PaymentFlowCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/payment_flows",
          body: parsed,
          model: ModernTreasury::PaymentFlow,
          options: options
        )
      end

      # get payment_flow
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::PaymentFlow]
      #
      # @see ModernTreasury::Models::PaymentFlowRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/payment_flows/%1$s", id],
          model: ModernTreasury::PaymentFlow,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::PaymentFlowUpdateParams} for more details.
      #
      # update payment_flow
      #
      # @overload update(id, status:, request_options: {})
      #
      # @param id [String] id
      #
      # @param status [Symbol, ModernTreasury::Models::PaymentFlowUpdateParams::Status] Required. The updated status of the payment flow. Can only be used to mark a flo
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::PaymentFlow]
      #
      # @see ModernTreasury::Models::PaymentFlowUpdateParams
      def update(id, params)
        parsed, options = ModernTreasury::PaymentFlowUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/payment_flows/%1$s", id],
          body: parsed,
          model: ModernTreasury::PaymentFlow,
          options: options
        )
      end

      # list payment_flows
      #
      # @overload list(after_cursor: nil, client_token: nil, counterparty_id: nil, originating_account_id: nil, payment_order_id: nil, per_page: nil, receiving_account_id: nil, status: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      # @param client_token [String]
      # @param counterparty_id [String]
      # @param originating_account_id [String]
      # @param payment_order_id [String]
      # @param per_page [Integer]
      # @param receiving_account_id [String]
      # @param status [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::PaymentFlow>]
      #
      # @see ModernTreasury::Models::PaymentFlowListParams
      def list(params = {})
        parsed, options = ModernTreasury::PaymentFlowListParams.dump_request(params)
        query = ModernTreasury::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "api/payment_flows",
          query: query,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::PaymentFlow,
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
