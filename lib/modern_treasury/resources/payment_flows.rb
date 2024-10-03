# frozen_string_literal: true

module ModernTreasury
  module Resources
    class PaymentFlows
      def initialize(client:)
        @client = client
      end

      # create payment_flow
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Integer] :amount Required. Value in specified currency's smallest unit. e.g. $10 would be
      #   represented as 1000. Can be any integer up to 36 digits.
      # @option params [String] :counterparty_id Required. The ID of a counterparty associated with the payment. As part of the
      #   payment workflow an external account will be associated with this model.
      # @option params [String] :currency Required. The currency of the payment.
      # @option params [Symbol, Direction] :direction Required. Describes the direction money is flowing in the transaction. Can only
      #   be `debit`. A `debit` pulls money from someone else's account to your own.
      # @option params [String] :originating_account_id Required. The ID of one of your organization's internal accounts.
      # @option params [Date, nil] :due_date Optional. Can only be passed in when `effective_date_selection_enabled` is
      #   `true`. When set, the due date is shown to your end-user in the pre-built UI as
      #   they are selecting a payment `effective_date`.
      #
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::PaymentFlow]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/api/payment_flows",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: ModernTreasury::Models::PaymentFlow
        }
        @client.request(req, opts)
      end

      # get payment_flow
      #
      # @param id [String] id
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::PaymentFlow]
      def retrieve(id, opts = {})
        req = {
          method: :get,
          path: "/api/payment_flows/#{id}",
          model: ModernTreasury::Models::PaymentFlow
        }
        @client.request(req, opts)
      end

      # update payment_flow
      #
      # @param id [String] id
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Symbol, Status] :status Required. The updated status of the payment flow. Can only be used to mark a
      #   flow as `cancelled`.
      #
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::PaymentFlow]
      def update(id, params = {}, opts = {})
        req = {
          method: :patch,
          path: "/api/payment_flows/#{id}",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: ModernTreasury::Models::PaymentFlow
        }
        @client.request(req, opts)
      end

      # list payment_flows
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :after_cursor
      # @option params [String, nil] :client_token
      # @option params [String, nil] :counterparty_id
      # @option params [String, nil] :originating_account_id
      # @option params [String, nil] :payment_order_id
      # @option params [Integer, nil] :per_page
      # @option params [String, nil] :receiving_account_id
      # @option params [String, nil] :status
      #
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::PaymentFlow>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/api/payment_flows",
          query: params,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::PaymentFlow
        }
        @client.request(req, opts)
      end
    end
  end
end
