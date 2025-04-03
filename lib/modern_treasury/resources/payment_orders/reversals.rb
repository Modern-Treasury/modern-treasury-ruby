# frozen_string_literal: true

module ModernTreasury
  module Resources
    class PaymentOrders
      class Reversals
        # Create a reversal for a payment order.
        #
        # @overload create(payment_order_id, reason:, ledger_transaction: nil, metadata: nil, request_options: {})
        #
        # @param payment_order_id [String]
        # @param reason [Symbol, ModernTreasury::Models::PaymentOrders::ReversalCreateParams::Reason]
        # @param ledger_transaction [ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction]
        # @param metadata [Hash{Symbol=>String}]
        # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [ModernTreasury::Models::PaymentOrders::Reversal]
        #
        # @see ModernTreasury::Models::PaymentOrders::ReversalCreateParams
        def create(payment_order_id, params)
          parsed, options = ModernTreasury::Models::PaymentOrders::ReversalCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/payment_orders/%1$s/reversals", payment_order_id],
            body: parsed,
            model: ModernTreasury::Models::PaymentOrders::Reversal,
            options: options
          )
        end

        # Get details on a single reversal of a payment order.
        #
        # @overload retrieve(reversal_id, payment_order_id:, request_options: {})
        #
        # @param reversal_id [String]
        # @param payment_order_id [String]
        # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [ModernTreasury::Models::PaymentOrders::Reversal]
        #
        # @see ModernTreasury::Models::PaymentOrders::ReversalRetrieveParams
        def retrieve(reversal_id, params)
          parsed, options = ModernTreasury::Models::PaymentOrders::ReversalRetrieveParams.dump_request(params)
          payment_order_id =
            parsed.delete(:payment_order_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["api/payment_orders/%1$s/reversals/%2$s", payment_order_id, reversal_id],
            model: ModernTreasury::Models::PaymentOrders::Reversal,
            options: options
          )
        end

        # Get a list of all reversals of a payment order.
        #
        # @overload list(payment_order_id, after_cursor: nil, per_page: nil, request_options: {})
        #
        # @param payment_order_id [String]
        # @param after_cursor [String, nil]
        # @param per_page [Integer]
        # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::PaymentOrders::Reversal>]
        #
        # @see ModernTreasury::Models::PaymentOrders::ReversalListParams
        def list(payment_order_id, params = {})
          parsed, options = ModernTreasury::Models::PaymentOrders::ReversalListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["api/payment_orders/%1$s/reversals", payment_order_id],
            query: parsed,
            page: ModernTreasury::Internal::Page,
            model: ModernTreasury::Models::PaymentOrders::Reversal,
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
