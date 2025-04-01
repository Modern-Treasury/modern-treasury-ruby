# frozen_string_literal: true

module ModernTreasury
  module Resources
    class PaymentFlows
      # create payment_flow
      #
      # @overload create(amount:, counterparty_id:, currency:, direction:, originating_account_id:, due_date: nil, request_options: {})
      #
      # @param amount [Integer]
      # @param counterparty_id [String]
      # @param currency [String]
      # @param direction [Symbol, ModernTreasury::Models::PaymentFlowCreateParams::Direction]
      # @param originating_account_id [String]
      # @param due_date [Date]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::PaymentFlow]
      #
      # @see ModernTreasury::Models::PaymentFlowCreateParams
      def create(params)
        parsed, options = ModernTreasury::Models::PaymentFlowCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/payment_flows",
          body: parsed,
          model: ModernTreasury::Models::PaymentFlow,
          options: options
        )
      end

      # get payment_flow
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::PaymentFlow]
      #
      # @see ModernTreasury::Models::PaymentFlowRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/payment_flows/%1$s", id],
          model: ModernTreasury::Models::PaymentFlow,
          options: params[:request_options]
        )
      end

      # update payment_flow
      #
      # @overload update(id, status:, request_options: {})
      #
      # @param id [String]
      # @param status [Symbol, ModernTreasury::Models::PaymentFlowUpdateParams::Status]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::PaymentFlow]
      #
      # @see ModernTreasury::Models::PaymentFlowUpdateParams
      def update(id, params)
        parsed, options = ModernTreasury::Models::PaymentFlowUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/payment_flows/%1$s", id],
          body: parsed,
          model: ModernTreasury::Models::PaymentFlow,
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
      # @return [ModernTreasury::Page<ModernTreasury::Models::PaymentFlow>]
      #
      # @see ModernTreasury::Models::PaymentFlowListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::PaymentFlowListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/payment_flows",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::PaymentFlow,
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
