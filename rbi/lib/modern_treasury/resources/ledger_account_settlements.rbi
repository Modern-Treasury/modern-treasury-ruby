# typed: strong

module ModernTreasury
  module Resources
    class LedgerAccountSettlements
      sig { returns(ModernTreasury::Resources::LedgerAccountSettlements::AccountEntries) }
      def account_entries
      end

      # Create a ledger account settlement.
      sig do
        params(
          contra_ledger_account_id: String,
          settled_ledger_account_id: String,
          allow_either_direction: T.nilable(T::Boolean),
          description: T.nilable(String),
          effective_at_upper_bound: T.nilable(Time),
          metadata: T::Hash[Symbol, String],
          skip_settlement_ledger_transaction: T.nilable(T::Boolean),
          status: T.nilable(ModernTreasury::Models::LedgerAccountSettlementCreateParams::Status::OrSymbol),
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
        )
          .returns(ModernTreasury::Models::LedgerAccountSettlement)
      end
      def create(
        # The id of the contra ledger account that sends to or receives funds from the
        #   settled ledger account.
        contra_ledger_account_id:,
        # The id of the settled ledger account whose ledger entries are queried against,
        #   and its balance is reduced as a result.
        settled_ledger_account_id:,
        # If true, the settlement amount and settlement_entry_direction will bring the
        #   settlement ledger account's balance closer to zero, even if the balance is
        #   negative.
        allow_either_direction: nil,
        # The description of the ledger account settlement.
        description: nil,
        # The exclusive upper bound of the effective_at timestamp of the ledger entries to
        #   be included in the ledger account settlement. The default value is the
        #   created_at timestamp of the ledger account settlement.
        effective_at_upper_bound: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        metadata: nil,
        # It is set to `false` by default. It should be set to `true` when migrating
        #   existing settlements.
        skip_settlement_ledger_transaction: nil,
        # The status of the ledger account settlement. It is set to `pending` by default.
        #   To post a ledger account settlement at creation, use `posted`.
        status: nil,
        request_options: {}
      )
      end

      # Get details on a single ledger account settlement.
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
        )
          .returns(ModernTreasury::Models::LedgerAccountSettlement)
      end
      def retrieve(
        # id
        id,
        request_options: {}
      )
      end

      # Update the details of a ledger account settlement.
      sig do
        params(
          id: String,
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          status: ModernTreasury::Models::LedgerAccountSettlementUpdateParams::Status::OrSymbol,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
        )
          .returns(ModernTreasury::Models::LedgerAccountSettlement)
      end
      def update(
        # id
        id,
        # The description of the ledger account settlement.
        description: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        metadata: nil,
        # To post a pending ledger account settlement, use `posted`. To archive a pending
        #   ledger transaction, use `archived`.
        status: nil,
        request_options: {}
      )
      end

      # Get a list of ledger account settlements.
      sig do
        params(
          id: T::Array[String],
          after_cursor: T.nilable(String),
          created_at: T::Hash[Symbol, Time],
          ledger_id: String,
          ledger_transaction_id: String,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          settled_ledger_account_id: String,
          settlement_entry_direction: String,
          updated_at: T::Hash[Symbol, Time],
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
        )
          .returns(ModernTreasury::Page[ModernTreasury::Models::LedgerAccountSettlement])
      end
      def list(
        # If you have specific IDs to retrieve in bulk, you can pass them as query
        #   parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
        id: nil,
        after_cursor: nil,
        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
        #   created at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
        #   created_at%5Bgt%5D=2000-01-01T12:00:00Z.
        created_at: nil,
        ledger_id: nil,
        ledger_transaction_id: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        #   parameters.
        metadata: nil,
        per_page: nil,
        settled_ledger_account_id: nil,
        settlement_entry_direction: nil,
        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
        #   updated at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
        #   updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
        updated_at: nil,
        request_options: {}
      )
      end

      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
