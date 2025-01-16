# frozen_string_literal: true

module ModernTreasury
  module Resources
    class PaymentFlows
      # create payment_flow
      #
      # @param params [ModernTreasury::Models::PaymentFlowCreateParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [Integer] :amount Required. Value in specified currency's smallest unit. e.g. $10 would be
      #     represented as 1000. Can be any integer up to 36 digits.
      #
      #   @option params [String] :counterparty_id Required. The ID of a counterparty associated with the payment. As part of the
      #     payment workflow an external account will be associated with this model.
      #
      #   @option params [String] :currency Required. The currency of the payment.
      #
      #   @option params [Symbol, ModernTreasury::Models::PaymentFlowCreateParams::Direction] :direction Required. Describes the direction money is flowing in the transaction. Can only
      #     be `debit`. A `debit` pulls money from someone else's account to your own.
      #
      #   @option params [String] :originating_account_id Required. The ID of one of your organization's internal accounts.
      #
      #   @option params [Date] :due_date Optional. Can only be passed in when `effective_date_selection_enabled` is
      #     `true`. When set, the due date is shown to your end-user in the pre-built UI as
      #     they are selecting a payment `effective_date`.
      #
      # @param opts [Hash{Symbol=>Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::PaymentFlow]
      #
      def create(params = {}, opts = {})
        parsed = ModernTreasury::Models::PaymentFlowCreateParams.dump(params)
        req = {
          method: :post,
          path: "api/payment_flows",
          body: parsed,
          model: ModernTreasury::Models::PaymentFlow
        }
        @client.request(req, opts)
      end

      # get payment_flow
      #
      # @param id [String] id
      #
      # @param opts [Hash{Symbol=>Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::PaymentFlow]
      #
      def retrieve(id, opts = {})
        req = {
          method: :get,
          path: ["api/payment_flows/%0s", id],
          model: ModernTreasury::Models::PaymentFlow
        }
        @client.request(req, opts)
      end

      # update payment_flow
      #
      # @param id [String] id
      #
      # @param params [ModernTreasury::Models::PaymentFlowUpdateParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [Symbol, ModernTreasury::Models::PaymentFlowUpdateParams::Status] :status Required. The updated status of the payment flow. Can only be used to mark a
      #     flow as `cancelled`.
      #
      # @param opts [Hash{Symbol=>Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::PaymentFlow]
      #
      def update(id, params = {}, opts = {})
        parsed = ModernTreasury::Models::PaymentFlowUpdateParams.dump(params)
        req = {
          method: :patch,
          path: ["api/payment_flows/%0s", id],
          body: parsed,
          model: ModernTreasury::Models::PaymentFlow
        }
        @client.request(req, opts)
      end

      # list payment_flows
      #
      # @param params [ModernTreasury::Models::PaymentFlowListParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [String, nil] :after_cursor
      #
      #   @option params [String] :client_token
      #
      #   @option params [String] :counterparty_id
      #
      #   @option params [String] :originating_account_id
      #
      #   @option params [String] :payment_order_id
      #
      #   @option params [Integer] :per_page
      #
      #   @option params [String] :receiving_account_id
      #
      #   @option params [String] :status
      #
      # @param opts [Hash{Symbol=>Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::PaymentFlow>]
      #
      def list(params = {}, opts = {})
        parsed = ModernTreasury::Models::PaymentFlowListParams.dump(params)
        req = {
          method: :get,
          path: "api/payment_flows",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::PaymentFlow
        }
        @client.request(req, opts)
      end

      # @param client [ModernTreasury::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
