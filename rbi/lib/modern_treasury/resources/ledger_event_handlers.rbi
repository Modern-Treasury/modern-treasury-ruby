# typed: strong

module ModernTreasury
  module Resources
    class LedgerEventHandlers
      # create ledger_event_handler
      sig do
        params(
          ledger_transaction_template: ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate,
          name: String,
          conditions: T.nilable(ModernTreasury::Models::LedgerEventHandlerCreateParams::Conditions),
          description: T.nilable(String),
          ledger_id: String,
          metadata: T.nilable(T::Hash[Symbol, String]),
          variables: T.nilable(T::Hash[Symbol, ModernTreasury::Models::LedgerEventHandlerVariable]),
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::LedgerEventHandler)
      end
      def create(
        ledger_transaction_template:,
        # Name of the ledger event handler.
        name:,
        conditions: nil,
        # An optional description.
        description: nil,
        # The id of the ledger that this account belongs to.
        ledger_id: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        metadata: nil,
        variables: nil,
        request_options: {}
      )
      end

      # Get details on a single ledger event handler.
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::LedgerEventHandler)
      end
      def retrieve(
        # id
        id,
        request_options: {}
      )
      end

      # Get a list of ledger event handlers.
      sig do
        params(
          after_cursor: T.nilable(String),
          created_at: T::Hash[Symbol, Time],
          metadata: T::Hash[Symbol, String],
          name: String,
          per_page: Integer,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Page[ModernTreasury::Models::LedgerEventHandler])
      end
      def list(
        after_cursor: nil,
        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
        #   posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
        #   created_at%5Bgt%5D=2000-01-01T12:00:00Z.
        created_at: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        #   parameters.
        metadata: nil,
        name: nil,
        per_page: nil,
        request_options: {}
      )
      end

      # Archive a ledger event handler.
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::LedgerEventHandler)
      end
      def delete(
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
