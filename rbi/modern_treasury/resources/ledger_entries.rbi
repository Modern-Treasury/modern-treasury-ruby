# typed: strong

module ModernTreasury
  module Resources
    class LedgerEntries
      # Get details on a single ledger entry.
      sig do
        params(
          id: String,
          show_balances: T::Boolean,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::LedgerEntry)
      end
      def retrieve(
        # id
        id,
        # If true, response will include the balances attached to the ledger entry. If
        # there is no balance available, null will be returned instead.
        show_balances: nil,
        request_options: {}
      )
      end

      # Update the details of a ledger entry.
      sig do
        params(
          id: String,
          metadata: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::LedgerEntry)
      end
      def update(
        # id
        id,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        request_options: {}
      )
      end

      # Get a list of all ledger entries.
      sig do
        params(
          id: T::Array[String],
          after_cursor: T.nilable(String),
          amount: ModernTreasury::LedgerEntryListParams::Amount::OrHash,
          as_of_lock_version: Integer,
          direction: ModernTreasury::TransactionDirection::OrSymbol,
          effective_at: T::Hash[Symbol, Time],
          effective_date: T::Hash[Symbol, Date],
          ledger_account_category_id: String,
          ledger_account_id: String,
          ledger_account_lock_version: T::Hash[Symbol, Integer],
          ledger_account_payout_id: String,
          ledger_account_settlement_id: String,
          ledger_account_statement_id: String,
          ledger_transaction_id: String,
          metadata: T::Hash[Symbol, String],
          order_by: ModernTreasury::LedgerEntryListParams::OrderBy::OrHash,
          per_page: Integer,
          show_balances: T::Boolean,
          show_deleted: T::Boolean,
          status:
            T::Array[ModernTreasury::LedgerEntryListParams::Status::OrSymbol],
          updated_at: T::Hash[Symbol, Time],
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::Internal::Page[ModernTreasury::LedgerEntry])
      end
      def list(
        # If you have specific IDs to retrieve in bulk, you can pass them as query
        # parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
        id: nil,
        after_cursor: nil,
        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by amount.
        amount: nil,
        # Shows all ledger entries that were present on a ledger account at a particular
        # `lock_version`. You must also specify `ledger_account_id`.
        as_of_lock_version: nil,
        # If true, response will include ledger entries that were deleted. When you update
        # a ledger transaction to specify a new set of entries, the previous entries are
        # deleted.
        direction: nil,
        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
        # transaction's effective time. Format ISO8601
        effective_at: nil,
        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
        # transaction's effective date. Format YYYY-MM-DD
        effective_date: nil,
        # Get all ledger entries that match the direction specified. One of `credit`,
        # `debit`.
        ledger_account_category_id: nil,
        ledger_account_id: nil,
        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
        # lock_version of a ledger account. For example, for all entries created at or
        # before before lock_version 1000 of a ledger account, use
        # `ledger_account_lock_version%5Blte%5D=1000`.
        ledger_account_lock_version: nil,
        ledger_account_payout_id: nil,
        ledger_account_settlement_id: nil,
        # Get all ledger entries that are included in the ledger account statement.
        ledger_account_statement_id: nil,
        ledger_transaction_id: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        # parameters.
        metadata: nil,
        # Order by `created_at` or `effective_at` in `asc` or `desc` order. For example,
        # to order by `effective_at asc`, use `order_by%5Beffective_at%5D=asc`. Ordering
        # by only one field at a time is supported.
        order_by: nil,
        per_page: nil,
        # If true, response will include the balances attached to the ledger entry. If
        # there is no balance available, null will be returned instead.
        show_balances: nil,
        # If true, response will include ledger entries that were deleted. When you update
        # a ledger transaction to specify a new set of entries, the previous entries are
        # deleted.
        show_deleted: nil,
        # Get all ledger entries that match the status specified. One of `pending`,
        # `posted`, or `archived`. For multiple statuses, use
        # `status[]=pending&status[]=posted`.
        status: nil,
        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
        # posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
        # updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
        updated_at: nil,
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
