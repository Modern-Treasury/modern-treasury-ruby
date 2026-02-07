# typed: strong

module ModernTreasury
  module Resources
    class LedgerAccountCategories
      # Create a ledger account category.
      sig do
        params(
          currency: String,
          ledger_id: String,
          name: String,
          normal_balance: ModernTreasury::TransactionDirection::OrSymbol,
          currency_exponent: T.nilable(Integer),
          description: T.nilable(String),
          external_id: T.nilable(String),
          ledger_account_category_ids: T::Array[String],
          metadata: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::LedgerAccountCategory)
      end
      def create(
        # The currency of the ledger account category.
        currency:,
        # The id of the ledger that this account category belongs to.
        ledger_id:,
        # The name of the ledger account category.
        name:,
        # The normal balance of the ledger account category.
        normal_balance:,
        # The currency exponent of the ledger account category.
        currency_exponent: nil,
        # The description of the ledger account category.
        description: nil,
        # An optional user-defined 180 character unique identifier.
        external_id: nil,
        # The array of ledger account category ids that this ledger account category
        # should be a child of.
        ledger_account_category_ids: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        request_options: {}
      )
      end

      # Get the details on a single ledger account category.
      sig do
        params(
          id: String,
          balances:
            ModernTreasury::LedgerAccountCategoryRetrieveParams::Balances::OrHash,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::LedgerAccountCategory)
      end
      def retrieve(
        # id
        id,
        # For example, if you want the balances as of a particular time (ISO8601), the
        # encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`.
        # The balances as of a time are inclusive of entries with that exact time, but
        # with respect to the ledger accounts that are currently present in the category.
        balances: nil,
        request_options: {}
      )
      end

      # Update the details of a ledger account category.
      sig do
        params(
          id: String,
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          name: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::LedgerAccountCategory)
      end
      def update(
        # id
        id,
        # The description of the ledger account category.
        description: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        # The name of the ledger account category.
        name: nil,
        request_options: {}
      )
      end

      # Get a list of ledger account categories.
      sig do
        params(
          id: T::Array[String],
          after_cursor: T.nilable(String),
          balances:
            ModernTreasury::LedgerAccountCategoryListParams::Balances::OrHash,
          currency: String,
          external_id: String,
          ledger_account_id: String,
          ledger_id: String,
          metadata: T::Hash[Symbol, String],
          name: T::Array[String],
          parent_ledger_account_category_id: String,
          per_page: Integer,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(
          ModernTreasury::Internal::Page[ModernTreasury::LedgerAccountCategory]
        )
      end
      def list(
        # If you have specific IDs to retrieve in bulk, you can pass them as query
        # parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
        id: nil,
        after_cursor: nil,
        # For example, if you want the balances as of a particular time (ISO8601), the
        # encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`.
        # The balances as of a time are inclusive of entries with that exact time, but
        # with respect to the ledger accounts that are currently present in the category.
        balances: nil,
        currency: nil,
        external_id: nil,
        # Query categories which contain a ledger account directly or through child
        # categories.
        ledger_account_id: nil,
        ledger_id: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        # parameters.
        metadata: nil,
        # If you have specific names to retrieve in bulk, you can pass them as query
        # parameters delimited with `name[]=`, for example `?name[]=123&name[]=abc`.
        name: nil,
        # Query categories that are nested underneath a parent category
        parent_ledger_account_category_id: nil,
        per_page: nil,
        request_options: {}
      )
      end

      # Delete a ledger account category.
      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::LedgerAccountCategory)
      end
      def delete(
        # id
        id,
        request_options: {}
      )
      end

      # Add a ledger account to a ledger account category.
      sig do
        params(
          ledger_account_id: String,
          id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).void
      end
      def add_ledger_account(
        # ledger_account_id
        ledger_account_id,
        # id
        id:,
        request_options: {}
      )
      end

      # Add a ledger account category to a ledger account category.
      sig do
        params(
          sub_category_id: String,
          id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).void
      end
      def add_nested_category(
        # sub_category_id
        sub_category_id,
        # id
        id:,
        request_options: {}
      )
      end

      # Remove a ledger account from a ledger account category.
      sig do
        params(
          ledger_account_id: String,
          id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).void
      end
      def remove_ledger_account(
        # ledger_account_id
        ledger_account_id,
        # id
        id:,
        request_options: {}
      )
      end

      # Delete a ledger account category from a ledger account category.
      sig do
        params(
          sub_category_id: String,
          id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).void
      end
      def remove_nested_category(
        # sub_category_id
        sub_category_id,
        # id
        id:,
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
