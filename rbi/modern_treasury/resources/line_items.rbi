# typed: strong

module ModernTreasury
  module Resources
    class LineItems
      # Get a single line item
      sig do
        params(
          id: String,
          itemizable_type: ModernTreasury::Models::LineItemRetrieveParams::ItemizableType::OrSymbol,
          itemizable_id: String,
          request_options: ModernTreasury::RequestOpts
        )
          .returns(ModernTreasury::Models::LineItem)
      end
      def retrieve(
        # The ID of the line item.
        id,
        # One of `payment_orders` or `expected_payments`.
        itemizable_type:,
        # The ID of the payment order or expected payment.
        itemizable_id:,
        request_options: {}
      ); end
      # update line item
      sig do
        params(
          id: String,
          itemizable_type: ModernTreasury::Models::LineItemUpdateParams::ItemizableType::OrSymbol,
          itemizable_id: String,
          metadata: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOpts
        )
          .returns(ModernTreasury::Models::LineItem)
      end
      def update(
        # Path param: The ID of the line item.
        id,
        # Path param: One of `payment_orders` or `expected_payments`.
        itemizable_type:,
        # Path param: The ID of the payment order or expected payment.
        itemizable_id:,
        # Body param: Additional data represented as key-value pairs. Both the key and
        # value must be strings.
        metadata: nil,
        request_options: {}
      ); end
      # Get a list of line items
      sig do
        params(
          itemizable_id: String,
          itemizable_type: ModernTreasury::Models::LineItemListParams::ItemizableType::OrSymbol,
          after_cursor: T.nilable(String),
          per_page: Integer,
          request_options: ModernTreasury::RequestOpts
        )
          .returns(ModernTreasury::Internal::Page[ModernTreasury::Models::LineItem])
      end
      def list(
        # Path param: The ID of the payment order or expected payment.
        itemizable_id,
        # Path param: One of `payment_orders` or `expected_payments`.
        itemizable_type:,
        # Query param:
        after_cursor: nil,
        # Query param:
        per_page: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
