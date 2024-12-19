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
      # @param id [String] The ID of the line item.
      #
      # @param params [Hash{Symbol => Object}, ModernTreasury::Models::LineItemRetrieveParams] Attributes to send in this request.
      #
      #   @option params [Symbol, ModernTreasury::Models::LineItemRetrieveParams::ItemizableType] :itemizable_type One of `payment_orders` or `expected_payments`.
      #
      #   @option params [String] :itemizable_id The ID of the payment order or expected payment.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LineItem]
      def retrieve(id, params = {}, opts = {})
        parsed = ModernTreasury::Models::LineItemRetrieveParams.dump(params)
        itemizable_type = parsed.fetch(:itemizable_type) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        itemizable_id = parsed.fetch(:itemizable_id) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        req = {
          method: :get,
          path: ["api/%0s/%1s/line_items/%2s", itemizable_type, itemizable_id, id],
          model: ModernTreasury::Models::LineItem
        }
        @client.request(req, opts)
      end

      # update line item
      #
      # @param id [String] Path param: The ID of the line item.
      #
      # @param params [Hash{Symbol => Object}, ModernTreasury::Models::LineItemUpdateParams] Attributes to send in this request.
      #
      #   @option params [Symbol, ModernTreasury::Models::LineItemUpdateParams::ItemizableType] :itemizable_type Path param: One of `payment_orders` or `expected_payments`.
      #
      #   @option params [String] :itemizable_id Path param: The ID of the payment order or expected payment.
      #
      #   @option params [Hash{Symbol => String}, nil] :metadata Body param: Additional data represented as key-value pairs. Both the key and
      #     value must be strings.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LineItem]
      def update(id, params = {}, opts = {})
        parsed = ModernTreasury::Models::LineItemUpdateParams.dump(params)
        itemizable_type = parsed.fetch(:itemizable_type) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        itemizable_id = parsed.fetch(:itemizable_id) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        req = {
          method: :patch,
          path: ["api/%0s/%1s/line_items/%2s", itemizable_type, itemizable_id, id],
          body: parsed.except(:itemizable_type, :itemizable_id),
          model: ModernTreasury::Models::LineItem
        }
        @client.request(req, opts)
      end

      # Get a list of line items
      #
      # @param itemizable_id [String] Path param: The ID of the payment order or expected payment.
      #
      # @param params [Hash{Symbol => Object}, ModernTreasury::Models::LineItemListParams] Attributes to send in this request.
      #
      #   @option params [Symbol, ModernTreasury::Models::LineItemListParams::ItemizableType] :itemizable_type Path param: One of `payment_orders` or `expected_payments`.
      #
      #   @option params [String, nil] :after_cursor Query param:
      #
      #   @option params [Integer, nil] :per_page Query param:
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::LineItem>]
      def list(itemizable_id, params = {}, opts = {})
        parsed = ModernTreasury::Models::LineItemListParams.dump(params)
        itemizable_type = parsed.fetch(:itemizable_type) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        req = {
          method: :get,
          path: ["api/%0s/%1s/line_items", itemizable_type, itemizable_id],
          query: parsed.except(:itemizable_type),
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::LineItem
        }
        @client.request(req, opts)
      end
    end
  end
end
