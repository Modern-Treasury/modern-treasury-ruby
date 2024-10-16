# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LineItems
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end

      # Get a single line item
      #
      # @param itemizable_type [Symbol, ItemizableType] One of `payment_orders` or `expected_payments`.
      # @param itemizable_id [String] The ID of the payment order or expected payment.
      # @param id [String] The ID of the line item.
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LineItem]
      def retrieve(itemizable_type, itemizable_id, id, opts = {})
        req = {
          method: :get,
          path: "/api/#{itemizable_type}/#{itemizable_id}/line_items/#{id}",
          model: ModernTreasury::Models::LineItem
        }
        @client.request(req, opts)
      end

      # update line item
      #
      # @param itemizable_type [Symbol, ItemizableType] One of `payment_orders` or `expected_payments`.
      #
      # @param itemizable_id [String] The ID of the payment order or expected payment.
      #
      # @param id [String] The ID of the line item.
      #
      # @param params [Hash] Attributes to send in this request.
      #   @option params [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LineItem]
      def update(itemizable_type, itemizable_id, id, params = {}, opts = {})
        req = {
          method: :patch,
          path: "/api/#{itemizable_type}/#{itemizable_id}/line_items/#{id}",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: ModernTreasury::Models::LineItem
        }
        @client.request(req, opts)
      end

      # Get a list of line items
      #
      # @param itemizable_type [Symbol, ItemizableType] One of `payment_orders` or `expected_payments`.
      #
      # @param itemizable_id [String] The ID of the payment order or expected payment.
      #
      # @param params [Hash] Attributes to send in this request.
      #   @option params [String, nil] :after_cursor
      #   @option params [Integer, nil] :per_page
      #
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::LineItem>]
      def list(itemizable_type, itemizable_id, params = {}, opts = {})
        req = {
          method: :get,
          path: "/api/#{itemizable_type}/#{itemizable_id}/line_items",
          query: params,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::LineItem
        }
        @client.request(req, opts)
      end
    end
  end
end
