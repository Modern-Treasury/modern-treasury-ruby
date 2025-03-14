# typed: strong

module ModernTreasury
  module Resources
    class LedgerableEvents
      # Create a ledgerable event.
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

      # Get details on a single ledgerable event.
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::LedgerableEvent)
      end
      def retrieve(id, request_options: {})
      end

      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
