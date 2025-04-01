# typed: strong

module ModernTreasury
  module Resources
    class LedgerTransactions
      class Versions
        # Get a list of ledger transaction versions.
        sig do
          params(
            after_cursor: T.nilable(String),
            created_at: T::Hash[Symbol, Time],
            ledger_account_statement_id: String,
            ledger_transaction_id: String,
            per_page: Integer,
            version: T::Hash[Symbol, Integer],
            request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
          )
            .returns(ModernTreasury::Page[ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion])
        end
        def list(
          after_cursor: nil,
          # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
          #   created_at timestamp. For example, for all dates after Jan 1 2000 12:00 UTC, use
          #   created_at%5Bgt%5D=2000-01-01T12:00:00Z.
          created_at: nil,
          # Get all ledger transaction versions that are included in the ledger account
          #   statement.
          ledger_account_statement_id: nil,
          # Get all the ledger transaction versions corresponding to the ID of a ledger
          #   transaction.
          ledger_transaction_id: nil,
          per_page: nil,
          # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
          #   version. For example, for all versions after 2, use version%5Bgt%5D=2.
          version: nil,
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
end
