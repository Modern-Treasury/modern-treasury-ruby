# typed: strong

module ModernTreasury
  module Resources
    class Ledgers
      # Create a ledger.
      sig do
        params(
          name: String,
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::Ledger)
      end
      def create(
        # The name of the ledger.
        name:,
        # An optional free-form description for internal use.
        description: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        request_options: {}
      )
      end

      # Get details on a single ledger.
      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::Ledger)
      end
      def retrieve(
        # id
        id,
        request_options: {}
      )
      end

      # Update the details of a ledger.
      sig do
        params(
          id: String,
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          name: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::Ledger)
      end
      def update(
        # id
        id,
        # An optional free-form description for internal use.
        description: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        # The name of the ledger.
        name: nil,
        request_options: {}
      )
      end

      # Get a list of ledgers.
      sig do
        params(
          id: T::Array[String],
          after_cursor: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          updated_at: T::Hash[Symbol, Time],
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::Internal::Page[ModernTreasury::Ledger])
      end
      def list(
        # If you have specific IDs to retrieve in bulk, you can pass them as query
        # parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
        id: nil,
        after_cursor: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        # parameters.
        metadata: nil,
        per_page: nil,
        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
        # posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
        # updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
        updated_at: nil,
        request_options: {}
      )
      end

      # Delete a ledger.
      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::Ledger)
      end
      def delete(
        # id
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
