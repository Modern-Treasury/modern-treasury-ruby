# frozen_string_literal: true

module ModernTreasury
  module Resources
    class PaymentOrders
      class Reversals
        # Create a reversal for a payment order.
        #
        # @param payment_order_id [String] The id of the payment order being reversed.
        #
        # @param params [ModernTreasury::Models::PaymentOrders::ReversalCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Symbol, ModernTreasury::Models::PaymentOrders::ReversalCreateParams::Reason] :reason The reason for the reversal. Must be one of `duplicate`, `incorrect_amount`,
        #     `incorrect_receiving_account`, `date_earlier_than_intended`,
        #     `date_later_than_intended`.
        #
        #   @option params [ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction] :ledger_transaction Specifies a ledger transaction object that will be created with the reversal. If
        #     the ledger transaction cannot be created, then the reversal creation will fail.
        #     The resulting ledger transaction will mirror the status of the reversal.
        #
        #   @option params [Hash{Symbol=>String}] :metadata Additional data represented as key-value pairs. Both the key and value must be
        #     strings.
        #
        #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [ModernTreasury::Models::PaymentOrders::Reversal]
        def create(payment_order_id, params)
          parsed, options = ModernTreasury::Models::PaymentOrders::ReversalCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/payment_orders/%0s/reversals", payment_order_id],
            body: parsed,
            model: ModernTreasury::Models::PaymentOrders::Reversal,
            options: options
          )
        end

        # Get details on a single reversal of a payment order.
        #
        # @param reversal_id [String] The ID of the reversal.
        #
        # @param params [ModernTreasury::Models::PaymentOrders::ReversalRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :payment_order_id The id of the payment order being reversed.
        #
        #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [ModernTreasury::Models::PaymentOrders::Reversal]
        def retrieve(reversal_id, params)
          parsed, options = ModernTreasury::Models::PaymentOrders::ReversalRetrieveParams.dump_request(params)
          payment_order_id =
            parsed.delete(:payment_order_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["api/payment_orders/%0s/reversals/%1s", payment_order_id, reversal_id],
            model: ModernTreasury::Models::PaymentOrders::Reversal,
            options: options
          )
        end

        # Get a list of all reversals of a payment order.
        #
        # @param payment_order_id [String] The ID of the relevant Payment Order.
        #
        # @param params [ModernTreasury::Models::PaymentOrders::ReversalListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String, nil] :after_cursor
        #
        #   @option params [Integer] :per_page
        #
        #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [ModernTreasury::Page<ModernTreasury::Models::PaymentOrders::Reversal>]
        def list(payment_order_id, params = {})
          parsed, options = ModernTreasury::Models::PaymentOrders::ReversalListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["api/payment_orders/%0s/reversals", payment_order_id],
            query: parsed,
            page: ModernTreasury::Page,
            model: ModernTreasury::Models::PaymentOrders::Reversal,
            options: options
          )
        end

        # @param client [ModernTreasury::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
