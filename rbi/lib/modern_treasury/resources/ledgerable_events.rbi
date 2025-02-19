# typed: strong

module ModernTreasury
  module Resources
    class LedgerableEvents
      sig do
        params(
          name: String,
          custom_data: T.nilable(T.anything),
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::LedgerableEvent)
      end
      def create(name:, custom_data: nil, description: nil, metadata: nil, request_options: {})
      end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::LedgerableEvent)
      end
      def retrieve(id, request_options: {})
      end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:)
      end
    end
  end
end
