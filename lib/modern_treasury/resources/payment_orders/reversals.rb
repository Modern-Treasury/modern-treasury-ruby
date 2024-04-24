# frozen_string_literal: true

module ModernTreasury
  module Resources
    class PaymentOrders
      class Reversals
        def initialize(client:)
          @client = client
        end

        # Create a reversal for a payment order.
        #
        # @param payment_order_id [String] The id of the payment order being reversed.
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [Symbol] :reason The reason for the reversal. Must be one of `duplicate`, `incorrect_amount`,
        #   `incorrect_receiving_account`, `date_earlier_than_intended`,
        #   `date_later_than_intended`.
        # @option params [LedgerTransaction] :ledger_transaction Specifies a ledger transaction object that will be created with the reversal. If
        #   the ledger transaction cannot be created, then the reversal creation will fail.
        #   The resulting ledger transaction will mirror the status of the reversal.
        # @option params [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        #
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Models::Reversal]
        def create(payment_order_id, params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/api/payment_orders/#{payment_order_id}/reversals"
          req[:body] = params
          req[:model] = ModernTreasury::Models::Reversal
          @client.request(req, opts)
        end

        # Get details on a single reversal of a payment order.
        #
        # @param payment_order_id [String] The id of the payment order being reversed.
        # @param reversal_id [String] The ID of the reversal.
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Models::Reversal]
        def retrieve(payment_order_id, reversal_id, opts = {})
          req = {}
          req[:method] = :get
          req[:path] = "/api/payment_orders/#{payment_order_id}/reversals/#{reversal_id}"
          req[:model] = ModernTreasury::Models::Reversal
          @client.request(req, opts)
        end

        # Get a list of all reversals of a payment order.
        #
        # @param payment_order_id [String] The ID of the relevant Payment Order.
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :after_cursor
        # @option params [Integer] :per_page
        #
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [ModernTreasury::Page<ModernTreasury::Models::Reversal>]
        def list(payment_order_id, params = {}, opts = {})
          req = {}
          req[:method] = :get
          req[:path] = "/api/payment_orders/#{payment_order_id}/reversals"
          req[:query] = params
          req[:page] = ModernTreasury::Page
          req[:model] = ModernTreasury::Models::Reversal
          @client.request(req, opts)
        end
      end
    end
  end
end
