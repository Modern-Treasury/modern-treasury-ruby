# typed: strong

module ModernTreasury
  module Resources
    class LedgerAccounts
      # Create a ledger account.
      sig do
        params(
          currency: String,
          ledger_id: String,
          name: String,
          normal_balance: ModernTreasury::Models::TransactionDirection::OrSymbol,
          currency_exponent: T.nilable(Integer),
          description: T.nilable(String),
          ledger_account_category_ids: T::Array[String],
          ledgerable_id: String,
          ledgerable_type: ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType::OrSymbol,
          metadata: T::Hash[Symbol, String],
          request_options: T.nilable(
            T.any(
              ModernTreasury::RequestOptions,
              ModernTreasury::Internal::Util::AnyHash
            )
          )
        )
          .returns(ModernTreasury::Models::LedgerAccount)
      end
      def create(
        # The currency of the ledger account.
        currency:,
        # The id of the ledger that this account belongs to.
        ledger_id:,
        # The name of the ledger account.
        name:,
        # The normal balance of the ledger account.
        normal_balance:,
        # The currency exponent of the ledger account.
        currency_exponent: nil,
        # The description of the ledger account.
        description: nil,
        # The array of ledger account category ids that this ledger account should be a
        #   child of.
        ledger_account_category_ids: nil,
        # If the ledger account links to another object in Modern Treasury, the id will be
        #   populated here, otherwise null.
        ledgerable_id: nil,
        # If the ledger account links to another object in Modern Treasury, the type will
        #   be populated here, otherwise null. The value is one of internal_account or
        #   external_account.
        ledgerable_type: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        metadata: nil,
        request_options: {}
      )
      end

      # Get details on a single ledger account.
      sig do
        params(
          id: String,
          balances: T.any(
            ModernTreasury::Models::LedgerAccountRetrieveParams::Balances,
            ModernTreasury::Internal::Util::AnyHash
          ),
          request_options: T.nilable(
            T.any(
              ModernTreasury::RequestOptions,
              ModernTreasury::Internal::Util::AnyHash
            )
          )
        )
          .returns(ModernTreasury::Models::LedgerAccount)
      end
      def retrieve(
        # id
        id,
        # Use `balances[effective_at_lower_bound]` and
        #   `balances[effective_at_upper_bound]` to get the balances change between the two
        #   timestamps. The lower bound is inclusive while the upper bound is exclusive of
        #   the provided timestamps. If no value is supplied the balances will be retrieved
        #   not including that bound. Use `balances[as_of_lock_version]` to retrieve a
        #   balance as of a specific Ledger Account `lock_version`.
        balances: nil,
        request_options: {}
      )
      end

      # Update the details of a ledger account.
      sig do
        params(
          id: String,
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          name: String,
          request_options: T.nilable(
            T.any(
              ModernTreasury::RequestOptions,
              ModernTreasury::Internal::Util::AnyHash
            )
          )
        )
          .returns(ModernTreasury::Models::LedgerAccount)
      end
      def update(
        # id
        id,
        # The description of the ledger account.
        description: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        metadata: nil,
        # The name of the ledger account.
        name: nil,
        request_options: {}
      )
      end

      # Get a list of ledger accounts.
      sig do
        params(
          id: T::Array[String],
          after_cursor: T.nilable(String),
          available_balance_amount: T.any(
            ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount,
            ModernTreasury::Internal::Util::AnyHash
          ),
          balances: T.any(ModernTreasury::Models::LedgerAccountListParams::Balances, ModernTreasury::Internal::Util::AnyHash),
          created_at: T::Hash[Symbol, Time],
          currency: String,
          ledger_account_category_id: String,
          ledger_id: String,
          metadata: T::Hash[Symbol, String],
          name: T::Array[String],
          pending_balance_amount: T.any(
            ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount,
            ModernTreasury::Internal::Util::AnyHash
          ),
          per_page: Integer,
          posted_balance_amount: T.any(
            ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount,
            ModernTreasury::Internal::Util::AnyHash
          ),
          updated_at: T::Hash[Symbol, Time],
          request_options: T.nilable(
            T.any(
              ModernTreasury::RequestOptions,
              ModernTreasury::Internal::Util::AnyHash
            )
          )
        )
          .returns(ModernTreasury::Internal::Page[ModernTreasury::Models::LedgerAccount])
      end
      def list(
        # If you have specific IDs to retrieve in bulk, you can pass them as query
        #   parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
        id: nil,
        after_cursor: nil,
        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
        #   filter by balance amount.
        available_balance_amount: nil,
        # Use `balances[effective_at_lower_bound]` and
        #   `balances[effective_at_upper_bound]` to get the balances change between the two
        #   timestamps. The lower bound is inclusive while the upper bound is exclusive of
        #   the provided timestamps. If no value is supplied the balances will be retrieved
        #   not including that bound.
        balances: nil,
        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
        #   created at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
        #   created_at%5Bgt%5D=2000-01-01T12:00:00Z.
        created_at: nil,
        currency: nil,
        ledger_account_category_id: nil,
        ledger_id: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        #   parameters.
        metadata: nil,
        # If you have specific names to retrieve in bulk, you can pass them as query
        #   parameters delimited with `name[]=`, for example `?name[]=123&name[]=abc`.
        name: nil,
        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
        #   filter by balance amount.
        pending_balance_amount: nil,
        per_page: nil,
        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
        #   filter by balance amount.
        posted_balance_amount: nil,
        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
        #   updated at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
        #   updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
        updated_at: nil,
        request_options: {}
      )
      end

      # Delete a ledger account.
      sig do
        params(
          id: String,
          request_options: T.nilable(
            T.any(
              ModernTreasury::RequestOptions,
              ModernTreasury::Internal::Util::AnyHash
            )
          )
        )
          .returns(ModernTreasury::Models::LedgerAccount)
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
