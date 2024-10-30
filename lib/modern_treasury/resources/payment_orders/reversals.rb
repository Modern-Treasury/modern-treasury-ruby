# frozen_string_literal: true

module ModernTreasury
  module Resources
    class PaymentOrders
      class Reversals
        # @param client [ModernTreasury::Client]
        def initialize(client:)
          @client = client
        end

        # Create a reversal for a payment order.
        #
        # @param payment_order_id [String] The id of the payment order being reversed.
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [Symbol, Reason] :reason The reason for the reversal. Must be one of `duplicate`, `incorrect_amount`,
        #     `incorrect_receiving_account`, `date_earlier_than_intended`,
        #     `date_later_than_intended`.
        #   @option params [LedgerTransaction, nil] :ledger_transaction Specifies a ledger transaction object that will be created with the reversal. If
        #     the ledger transaction cannot be created, then the reversal creation will fail.
        #     The resulting ledger transaction will mirror the status of the reversal.
        #   @option params [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
        #     strings.
        #
        # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Models::Reversal]
        def create(payment_order_id, params = {}, opts = {})
          req = {
            method: :post,
            path: "/api/payment_orders/#{payment_order_id}/reversals",
            body: params,
            headers: {"Content-Type" => "application/json"},
            model: ModernTreasury::Models::Reversal
          }
          @client.request(req, opts)
        end

        # Get details on a single reversal of a payment order.
        #
        # @param payment_order_id [String] The id of the payment order being reversed.
        # @param reversal_id [String] The ID of the reversal.
        # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Models::Reversal]
        def retrieve(payment_order_id, reversal_id, opts = {})
          req = {
            method: :get,
            path: "/api/payment_orders/#{payment_order_id}/reversals/#{reversal_id}",
            model: ModernTreasury::Models::Reversal
          }
          @client.request(req, opts)
        end

        # Get a list of all reversals of a payment order.
        #
        # @param payment_order_id [String] The ID of the relevant Payment Order.
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [String, nil] :after_cursor
        #   @option params [Integer, nil] :per_page
        #
        # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Page<ModernTreasury::Models::Reversal>]
        def list(payment_order_id, params = {}, opts = {})
          req = {
            method: :get,
            path: "/api/payment_orders/#{payment_order_id}/reversals",
            query: params,
            page: ModernTreasury::Page,
            model: ModernTreasury::Models::Reversal
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
