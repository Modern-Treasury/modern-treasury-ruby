# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LineItems
      # Get a single line item
      #
      # @overload retrieve(id, itemizable_type:, itemizable_id:, request_options: {})
      #
      # @param id [String] The ID of the line item.
      #
      # @param itemizable_type [Symbol, ModernTreasury::Models::LineItemRetrieveParams::ItemizableType] One of `payment_orders` or `expected_payments`.
      #
      # @param itemizable_id [String] The ID of the payment order or expected payment.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LineItem]
      #
      # @see ModernTreasury::Models::LineItemRetrieveParams
      def retrieve(id, params)
        parsed, options = ModernTreasury::LineItemRetrieveParams.dump_request(params)
        itemizable_type =
          parsed.delete(:itemizable_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        itemizable_id =
          parsed.delete(:itemizable_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/%2$s/line_items/%3$s", itemizable_type, itemizable_id, id],
          model: ModernTreasury::LineItem,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LineItemUpdateParams} for more details.
      #
      # update line item
      #
      # @overload update(id, itemizable_type:, itemizable_id:, metadata: nil, request_options: {})
      #
      # @param id [String] Path param: The ID of the line item.
      #
      # @param itemizable_type [Symbol, ModernTreasury::Models::LineItemUpdateParams::ItemizableType] Path param: One of `payment_orders` or `expected_payments`.
      #
      # @param itemizable_id [String] Path param: The ID of the payment order or expected payment.
      #
      # @param metadata [Hash{Symbol=>String}] Body param: Additional data represented as key-value pairs. Both the key and val
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LineItem]
      #
      # @see ModernTreasury::Models::LineItemUpdateParams
      def update(id, params)
        parsed, options = ModernTreasury::LineItemUpdateParams.dump_request(params)
        itemizable_type =
          parsed.delete(:itemizable_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        itemizable_id =
          parsed.delete(:itemizable_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :patch,
          path: ["api/%1$s/%2$s/line_items/%3$s", itemizable_type, itemizable_id, id],
          body: parsed,
          model: ModernTreasury::LineItem,
          options: options
        )
      end

      # Get a list of line items
      #
      # @overload list(itemizable_id, itemizable_type:, after_cursor: nil, per_page: nil, request_options: {})
      #
      # @param itemizable_id [String] Path param: The ID of the payment order or expected payment.
      #
      # @param itemizable_type [Symbol, ModernTreasury::Models::LineItemListParams::ItemizableType] Path param: One of `payment_orders` or `expected_payments`.
      #
      # @param after_cursor [String, nil] Query param
      #
      # @param per_page [Integer] Query param
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::LineItem>]
      #
      # @see ModernTreasury::Models::LineItemListParams
      def list(itemizable_id, params)
        parsed, options = ModernTreasury::LineItemListParams.dump_request(params)
        itemizable_type =
          parsed.delete(:itemizable_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/%2$s/line_items", itemizable_type, itemizable_id],
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::LineItem,
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
