# typed: strong

module ModernTreasury
  module Resources
    class LineItems
      sig do
        params(
          id: String,
          params: T.any(ModernTreasury::Models::LineItemRetrieveParams, T::Hash[Symbol, T.anything]),
          itemizable_type: Symbol,
          itemizable_id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LineItem)
      end
      def retrieve(id, params, itemizable_type:, itemizable_id:, request_options: {}); end

      sig do
        params(
          id: String,
          params: T.any(ModernTreasury::Models::LineItemUpdateParams, T::Hash[Symbol, T.anything]),
          itemizable_type: Symbol,
          itemizable_id: String,
          metadata: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LineItem)
      end
      def update(id, params, itemizable_type:, itemizable_id:, metadata:, request_options: {}); end

      sig do
        params(
          itemizable_id: String,
          params: T.any(ModernTreasury::Models::LineItemListParams, T::Hash[Symbol, T.anything]),
          itemizable_type: Symbol,
          after_cursor: T.nilable(String),
          per_page: Integer,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Page[ModernTreasury::Models::LineItem])
      end
      def list(itemizable_id, params, itemizable_type:, after_cursor:, per_page:, request_options: {}); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
