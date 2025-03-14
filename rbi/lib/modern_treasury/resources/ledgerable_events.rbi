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
      def create(
        # Name of the ledgerable event.
        name:,
        # Additionally data to be used by the Ledger Event Handler.
        custom_data: nil,
        # Description of the ledgerable event.
        description: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        metadata: nil,
        request_options: {}
      )
      end

      # Get details on a single ledgerable event.
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::LedgerableEvent)
      end
      def retrieve(
        # id
        id,
        request_options: {}
      )
      end

      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
