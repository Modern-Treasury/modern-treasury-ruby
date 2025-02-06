# typed: strong

module ModernTreasury
  module Resources
    class BulkRequests
      sig do
        params(
          action_type: Symbol,
          resource_type: Symbol,
          resources: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::Variants],
          metadata: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::BulkRequest)
      end
      def create(action_type:, resource_type:, resources:, metadata: nil, request_options: {}); end

      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::BulkRequest)
      end
      def retrieve(id, request_options: {}); end

      sig do
        params(
          action_type: Symbol,
          after_cursor: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          resource_type: Symbol,
          status: Symbol,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Page[ModernTreasury::Models::BulkRequest])
      end
      def list(
        action_type: nil,
        after_cursor: nil,
        metadata: nil,
        per_page: nil,
        resource_type: nil,
        status: nil,
        request_options: {}
      ); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
