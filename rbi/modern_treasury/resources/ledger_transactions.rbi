# typed: strong

module ModernTreasury
  module Resources
    class LedgerTransactions
      sig { returns(ModernTreasury::Resources::LedgerTransactions::Versions) }
      attr_reader :versions

      # Create a ledger transaction.
      sig do
        params(
          ledger_entries:
            T::Array[
              ModernTreasury::LedgerTransactionCreateParams::LedgerEntry::OrHash
            ],
          description: T.nilable(String),
          effective_at: Time,
          effective_date: Date,
          external_id: String,
          ledgerable_id: String,
          ledgerable_type:
            ModernTreasury::LedgerTransactionCreateParams::LedgerableType::OrSymbol,
          metadata: T::Hash[Symbol, String],
          status:
            ModernTreasury::LedgerTransactionCreateParams::Status::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::LedgerTransaction)
      end
      def create(
        # An array of ledger entry objects.
        ledger_entries:,
        # An optional description for internal use.
        description: nil,
        # The timestamp (ISO8601 format) at which the ledger transaction happened for
        # reporting purposes.
        effective_at: nil,
        # The date (YYYY-MM-DD) on which the ledger transaction happened for reporting
        # purposes.
        effective_date: nil,
        # A unique string to represent the ledger transaction. Only one pending or posted
        # ledger transaction may have this ID in the ledger.
        external_id: nil,
        # If the ledger transaction can be reconciled to another object in Modern
        # Treasury, the id will be populated here, otherwise null.
        ledgerable_id: nil,
        # If the ledger transaction can be reconciled to another object in Modern
        # Treasury, the type will be populated here, otherwise null. This can be one of
        # payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
        # reversal.
        ledgerable_type: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        # To post a ledger transaction at creation, use `posted`.
        status: nil,
        request_options: {}
      )
      end

      # Get details on a single ledger transaction.
      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::LedgerTransaction)
      end
      def retrieve(
        # id
        id,
        request_options: {}
      )
      end

      # Update the details of a ledger transaction.
      sig do
        params(
          id: String,
          description: T.nilable(String),
          effective_at: Time,
          ledger_entries:
            T::Array[
              ModernTreasury::LedgerTransactionUpdateParams::LedgerEntry::OrHash
            ],
          ledgerable_id: String,
          ledgerable_type:
            ModernTreasury::LedgerTransactionUpdateParams::LedgerableType::OrSymbol,
          metadata: T::Hash[Symbol, String],
          status:
            ModernTreasury::LedgerTransactionUpdateParams::Status::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::LedgerTransaction)
      end
      def update(
        # id
        id,
        # An optional description for internal use.
        description: nil,
        # The timestamp (ISO8601 format) at which the ledger transaction happened for
        # reporting purposes.
        effective_at: nil,
        # An array of ledger entry objects.
        ledger_entries: nil,
        # If the ledger transaction can be reconciled to another object in Modern
        # Treasury, the id will be populated here, otherwise null.
        ledgerable_id: nil,
        # If the ledger transaction can be reconciled to another object in Modern
        # Treasury, the type will be populated here, otherwise null. This can be one of
        # payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
        # reversal.
        ledgerable_type: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        # To post a ledger transaction at creation, use `posted`.
        status: nil,
        request_options: {}
      )
      end

      # Get a list of ledger transactions.
      sig do
        params(
          id: T::Array[String],
          after_cursor: T.nilable(String),
          effective_at: T::Hash[Symbol, Time],
          effective_date: T::Hash[Symbol, Time],
          external_id: String,
          ledger_account_category_id: String,
          ledger_account_id: String,
          ledger_account_settlement_id: String,
          ledger_id: String,
          ledgerable_id: String,
          ledgerable_type:
            ModernTreasury::LedgerTransactionListParams::LedgerableType::OrSymbol,
          metadata: T::Hash[Symbol, String],
          order_by:
            ModernTreasury::LedgerTransactionListParams::OrderBy::OrHash,
          partially_posts_ledger_transaction_id: String,
          per_page: Integer,
          posted_at: T::Hash[Symbol, Time],
          reverses_ledger_transaction_id: String,
          status: ModernTreasury::LedgerTransactionListParams::Status::OrSymbol,
          updated_at: T::Hash[Symbol, Time],
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(
          ModernTreasury::Internal::Page[ModernTreasury::LedgerTransaction]
        )
      end
      def list(
        # If you have specific IDs to retrieve in bulk, you can pass them as query
        # parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
        id: nil,
        after_cursor: nil,
        # Use "gt" (>), "gte" (>=), "lt" (<), "lte" (<=), or "eq" (=) to filter by
        # effective at. For example, for all transactions after Jan 1 2000, use
        # effective_at%5Bgt%5D=2000-01-01T00:00:00:00.000Z.
        effective_at: nil,
        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by
        # effective date. For example, for all dates after Jan 1 2000, use
        # effective_date%5Bgt%5D=2000-01-01.
        effective_date: nil,
        external_id: nil,
        ledger_account_category_id: nil,
        ledger_account_id: nil,
        ledger_account_settlement_id: nil,
        ledger_id: nil,
        ledgerable_id: nil,
        ledgerable_type: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        # parameters.
        metadata: nil,
        # Order by `created_at` or `effective_at` in `asc` or `desc` order. For example,
        # to order by `effective_at asc`, use `order_by%5Beffective_at%5D=asc`. Ordering
        # by only one field at a time is supported.
        order_by: nil,
        partially_posts_ledger_transaction_id: nil,
        per_page: nil,
        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
        # posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
        # posted_at%5Bgt%5D=2000-01-01T12:00:00Z.
        posted_at: nil,
        reverses_ledger_transaction_id: nil,
        status: nil,
        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
        # posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
        # updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
        updated_at: nil,
        request_options: {}
      )
      end

      # Create a ledger transaction that partially posts another ledger transaction.
      sig do
        params(
          id: String,
          posted_ledger_entries:
            T::Array[
              ModernTreasury::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry::OrHash
            ],
          description: String,
          effective_at: Time,
          metadata: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::LedgerTransaction)
      end
      def create_partial_post(
        # The ID of the ledger transaction to partially post.
        id,
        # An array of ledger entry objects to be set on the posted ledger transaction.
        # There must be one entry for each of the existing entries with a lesser amount
        # than the existing entry.
        posted_ledger_entries:,
        # An optional free-form description for the posted ledger transaction. Maximum of
        # 1000 characters allowed.
        description: nil,
        # The timestamp (IS08601 format) at which the posted ledger transaction happened
        # for reporting purposes.
        effective_at: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        request_options: {}
      )
      end

      # Create a ledger transaction reversal.
      sig do
        params(
          id: String,
          description: String,
          effective_at: T.nilable(Time),
          external_id: String,
          ledgerable_id: String,
          ledgerable_type:
            ModernTreasury::LedgerTransactionCreateReversalParams::LedgerableType::OrSymbol,
          metadata: T::Hash[Symbol, String],
          status:
            ModernTreasury::LedgerTransactionCreateReversalParams::Status::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::LedgerTransaction)
      end
      def create_reversal(
        # The id of ledger transaction to reverse.
        id,
        # An optional free-form description for the reversal ledger transaction. Maximum
        # of 1000 characters allowed.
        description: nil,
        # The timestamp (ISO8601 format) at which the reversal ledger transaction happened
        # for reporting purposes. It defaults to the `effective_at` of the original ledger
        # transaction if not provided.
        effective_at: nil,
        # Must be unique within the ledger.
        external_id: nil,
        # Specify this if you'd like to link the reversal ledger transaction to a Payment
        # object like Return or Reversal.
        ledgerable_id: nil,
        # Specify this if you'd like to link the reversal ledger transaction to a Payment
        # object like Return or Reversal.
        ledgerable_type: nil,
        # Additional data to be added to the reversal ledger transaction as key-value
        # pairs. Both the key and value must be strings.
        metadata: nil,
        # Status of the reversal ledger transaction. It defaults to `posted` if not
        # provided.
        status: nil,
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
