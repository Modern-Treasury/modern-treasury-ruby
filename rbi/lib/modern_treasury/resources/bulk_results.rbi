# typed: strong

module ModernTreasury
  module Resources
    class BulkResults
      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::BulkResult)
      end
      def retrieve(id, request_options: {}); end

      sig do
        params(
          after_cursor: T.nilable(String),
          entity_id: String,
          entity_type: Symbol,
          per_page: Integer,
          request_id: String,
          request_type: Symbol,
          status: Symbol,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Page[ModernTreasury::Models::BulkResult])
      end
      def list(
        after_cursor:,
        entity_id:,
        entity_type:,
        per_page:,
        request_id:,
        request_type:,
        status:,
        request_options: {}
      ); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
