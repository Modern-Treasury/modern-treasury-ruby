# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LineItems
      def initialize(client:)
        @client = client
      end

      # Get a single line item
      #
      # @param itemizable_type [Symbol] One of `payment_orders` or `expected_payments`.
      # @param itemizable_id [String] The ID of the payment order or expected payment.
      # @param id [String] The ID of the line item.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LineItem]
      def retrieve(itemizable_type, itemizable_id, id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/#{itemizable_type}/#{itemizable_id}/line_items/#{id}"
        req[:model] = ModernTreasury::Models::LineItem
        @client.request(req, opts)
      end

      # update line item
      #
      # @param itemizable_type [Symbol] One of `payment_orders` or `expected_payments`.
      #
      # @param itemizable_id [String] The ID of the payment order or expected payment.
      #
      # @param id [String] The ID of the line item.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LineItem]
      def update(itemizable_type, itemizable_id, id, params = {}, opts = {})
        req = {}
        req[:method] = :patch
        req[:path] = "/api/#{itemizable_type}/#{itemizable_id}/line_items/#{id}"
        req[:body] = params
        req[:model] = ModernTreasury::Models::LineItem
        @client.request(req, opts)
      end

      # Get a list of line items
      #
      # @param itemizable_type [Symbol] One of `payment_orders` or `expected_payments`.
      #
      # @param itemizable_id [String] The ID of the payment order or expected payment.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :after_cursor
      # @option params [Integer] :per_page
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::LineItem>]
      def list(itemizable_type, itemizable_id, params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/#{itemizable_type}/#{itemizable_id}/line_items"
        req[:query] = params
        req[:page] = ModernTreasury::Page
        req[:model] = ModernTreasury::Models::LineItem
        @client.request(req, opts)
      end
    end
  end
end
