# frozen_string_literal: true

module ModernTreasury
  module Resources
    class PaymentOrders
      class Reversals
        # Some parameter documentations has been truncated, see
        # {ModernTreasury::Models::PaymentOrders::ReversalCreateParams} for more details.
        #
        # Create a reversal for a payment order.
        #
        # @overload create(payment_order_id, reason:, ledger_transaction: nil, metadata: nil, request_options: {})
        #
        # @param payment_order_id [String] The id of the payment order being reversed.
        #
        # @param reason [Symbol, ModernTreasury::Models::PaymentOrders::ReversalCreateParams::Reason] The reason for the reversal. Must be one of `duplicate`, `incorrect_amount`, `in
        #
        # @param ledger_transaction [ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction] Specifies a ledger transaction object that will be created with the reversal. If
        #
        # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
        #
        # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [ModernTreasury::Models::PaymentOrders::Reversal]
        #
        # @see ModernTreasury::Models::PaymentOrders::ReversalCreateParams
        def create(payment_order_id, params)
          parsed, options = ModernTreasury::PaymentOrders::ReversalCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/payment_orders/%1$s/reversals", payment_order_id],
            body: parsed,
            model: ModernTreasury::PaymentOrders::Reversal,
            options: options
          )
        end

        # Get details on a single reversal of a payment order.
        #
        # @overload retrieve(reversal_id, payment_order_id:, request_options: {})
        #
        # @param reversal_id [String] The ID of the reversal.
        #
        # @param payment_order_id [String] The id of the payment order being reversed.
        #
        # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [ModernTreasury::Models::PaymentOrders::Reversal]
        #
        # @see ModernTreasury::Models::PaymentOrders::ReversalRetrieveParams
        def retrieve(reversal_id, params)
          parsed, options = ModernTreasury::PaymentOrders::ReversalRetrieveParams.dump_request(params)
          payment_order_id =
            parsed.delete(:payment_order_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["api/payment_orders/%1$s/reversals/%2$s", payment_order_id, reversal_id],
            model: ModernTreasury::PaymentOrders::Reversal,
            options: options
          )
        end

        # Get a list of all reversals of a payment order.
        #
        # @overload list(payment_order_id, after_cursor: nil, per_page: nil, request_options: {})
        #
        # @param payment_order_id [String] The ID of the relevant Payment Order.
        #
        # @param after_cursor [String, nil]
        #
        # @param per_page [Integer]
        #
        # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::PaymentOrders::Reversal>]
        #
        # @see ModernTreasury::Models::PaymentOrders::ReversalListParams
        def list(payment_order_id, params = {})
          parsed, options = ModernTreasury::PaymentOrders::ReversalListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["api/payment_orders/%1$s/reversals", payment_order_id],
            query: parsed,
            page: ModernTreasury::Internal::Page,
            model: ModernTreasury::PaymentOrders::Reversal,
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
end
