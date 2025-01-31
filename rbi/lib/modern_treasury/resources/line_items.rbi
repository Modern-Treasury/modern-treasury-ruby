# typed: strong

module ModernTreasury
  module Resources
    class LineItems
      sig do
        params(
          id: String,
          itemizable_type: Symbol,
          itemizable_id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LineItem)
      end
      def retrieve(id, itemizable_type:, itemizable_id:, request_options: {}); end

      sig do
        params(
          id: String,
          itemizable_type: Symbol,
          itemizable_id: String,
          metadata: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LineItem)
      end
      def update(id, itemizable_type:, itemizable_id:, metadata:, request_options: {}); end

      sig do
        params(
          itemizable_id: String,
          itemizable_type: Symbol,
          after_cursor: T.nilable(String),
          per_page: Integer,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Page[ModernTreasury::Models::LineItem])
      end
      def list(itemizable_id, itemizable_type:, after_cursor:, per_page:, request_options: {}); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
