# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LineItems
      # Get a single line item
      #
      # @param id [String] The ID of the line item.
      #
      # @param params [ModernTreasury::Models::LineItemRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, ModernTreasury::Models::LineItemRetrieveParams::ItemizableType] :itemizable_type One of `payment_orders` or `expected_payments`.
      #
      #   @option params [String] :itemizable_id The ID of the payment order or expected payment.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::LineItem]
      #
      def retrieve(id, params)
        parsed, options = ModernTreasury::Models::LineItemRetrieveParams.dump_request(params)
        itemizable_type = parsed.fetch(:itemizable_type) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        itemizable_id = parsed.fetch(:itemizable_id) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        @client.request(
          method: :get,
          path: ["api/%0s/%1s/line_items/%2s", itemizable_type, itemizable_id, id],
          model: ModernTreasury::Models::LineItem,
          options: options
        )
      end

      # update line item
      #
      # @param id [String] Path param: The ID of the line item.
      #
      # @param params [ModernTreasury::Models::LineItemUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, ModernTreasury::Models::LineItemUpdateParams::ItemizableType] :itemizable_type Path param: One of `payment_orders` or `expected_payments`.
      #
      #   @option params [String] :itemizable_id Path param: The ID of the payment order or expected payment.
      #
      #   @option params [Hash{Symbol=>String}] :metadata Body param: Additional data represented as key-value pairs. Both the key and
      #     value must be strings.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::LineItem]
      #
      def update(id, params)
        parsed, options = ModernTreasury::Models::LineItemUpdateParams.dump_request(params)
        itemizable_type = parsed.fetch(:itemizable_type) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        itemizable_id = parsed.fetch(:itemizable_id) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        @client.request(
          method: :patch,
          path: ["api/%0s/%1s/line_items/%2s", itemizable_type, itemizable_id, id],
          body: parsed.except(:itemizable_type, :itemizable_id),
          model: ModernTreasury::Models::LineItem,
          options: options
        )
      end

      # Get a list of line items
      #
      # @param itemizable_id [String] Path param: The ID of the payment order or expected payment.
      #
      # @param params [ModernTreasury::Models::LineItemListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, ModernTreasury::Models::LineItemListParams::ItemizableType] :itemizable_type Path param: One of `payment_orders` or `expected_payments`.
      #
      #   @option params [String, nil] :after_cursor Query param:
      #
      #   @option params [Integer] :per_page Query param:
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::LineItem>]
      #
      def list(itemizable_id, params)
        parsed, options = ModernTreasury::Models::LineItemListParams.dump_request(params)
        itemizable_type = parsed.fetch(:itemizable_type) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        @client.request(
          method: :get,
          path: ["api/%0s/%1s/line_items", itemizable_type, itemizable_id],
          query: parsed.except(:itemizable_type),
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::LineItem,
          options: options
        )
      end

      # @param client [ModernTreasury::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
