# typed: strong

module ModernTreasury
  module Resources
    class LedgerableEvents
      sig do
        params(
          params: T.any(ModernTreasury::Models::LedgerableEventCreateParams, T::Hash[Symbol, T.anything]),
          name: String,
          custom_data: T.nilable(T.anything),
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LedgerableEvent)
      end
      def create(params, name:, custom_data:, description:, metadata:, request_options: {}); end

      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LedgerableEvent)
      end
      def retrieve(id, request_options: {}); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
