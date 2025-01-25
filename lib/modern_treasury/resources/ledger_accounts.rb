# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerAccounts
      # Create a ledger account.
      #
      # @param params [ModernTreasury::Models::LedgerAccountCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :currency The currency of the ledger account.
      #
      #   @option params [String] :ledger_id The id of the ledger that this account belongs to.
      #
      #   @option params [String] :name The name of the ledger account.
      #
      #   @option params [Symbol, ModernTreasury::Models::TransactionDirection] :normal_balance The normal balance of the ledger account.
      #
      #   @option params [Integer, nil] :currency_exponent The currency exponent of the ledger account.
      #
      #   @option params [String, nil] :description The description of the ledger account.
      #
      #   @option params [Array<String>] :ledger_account_category_ids The array of ledger account category ids that this ledger account should be a
      #     child of.
      #
      #   @option params [String] :ledgerable_id If the ledger account links to another object in Modern Treasury, the id will be
      #     populated here, otherwise null.
      #
      #   @option params [Symbol, ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType] :ledgerable_type If the ledger account links to another object in Modern Treasury, the type will
      #     be populated here, otherwise null. The value is one of internal_account or
      #     external_account.
      #
      #   @option params [Hash{Symbol=>String}] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [ModernTreasury::Models::LedgerAccount]
      #
      def create(params)
        parsed, options = ModernTreasury::Models::LedgerAccountCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/ledger_accounts",
          body: parsed,
          model: ModernTreasury::Models::LedgerAccount,
          options: options
        )
      end

      # Get details on a single ledger account.
      #
      # @param id [String] id
      #
      # @param params [ModernTreasury::Models::LedgerAccountRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::Models::LedgerAccountRetrieveParams::Balances] :balances Use `balances[effective_at_lower_bound]` and
      #     `balances[effective_at_upper_bound]` to get the balances change between the two
      #     timestamps. The lower bound is inclusive while the upper bound is exclusive of
      #     the provided timestamps. If no value is supplied the balances will be retrieved
      #     not including that bound. Use `balances[as_of_lock_version]` to retrieve a
      #     balance as of a specific Ledger Account `lock_version`.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [ModernTreasury::Models::LedgerAccount]
      #
      def retrieve(id, params = {})
        parsed, options = ModernTreasury::Models::LedgerAccountRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/ledger_accounts/%0s", id],
          query: parsed,
          model: ModernTreasury::Models::LedgerAccount,
          options: options
        )
      end

      # Update the details of a ledger account.
      #
      # @param id [String] id
      #
      # @param params [ModernTreasury::Models::LedgerAccountUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :description The description of the ledger account.
      #
      #   @option params [Hash{Symbol=>String}] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @option params [String] :name The name of the ledger account.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [ModernTreasury::Models::LedgerAccount]
      #
      def update(id, params = {})
        parsed, options = ModernTreasury::Models::LedgerAccountUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/ledger_accounts/%0s", id],
          body: parsed,
          model: ModernTreasury::Models::LedgerAccount,
          options: options
        )
      end

      # Get a list of ledger accounts.
      #
      # @param params [ModernTreasury::Models::LedgerAccountListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<String>] :id If you have specific IDs to retrieve in bulk, you can pass them as query
      #     parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #
      #   @option params [String, nil] :after_cursor
      #
      #   @option params [ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount] :available_balance_amount Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
      #     filter by balance amount.
      #
      #   @option params [ModernTreasury::Models::LedgerAccountListParams::Balances] :balances Use `balances[effective_at_lower_bound]` and
      #     `balances[effective_at_upper_bound]` to get the balances change between the two
      #     timestamps. The lower bound is inclusive while the upper bound is exclusive of
      #     the provided timestamps. If no value is supplied the balances will be retrieved
      #     not including that bound.
      #
      #   @option params [Hash{Symbol=>Time}] :created_at Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #     created at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #     created_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      #   @option params [String] :currency
      #
      #   @option params [String] :ledger_account_category_id
      #
      #   @option params [String] :ledger_id
      #
      #   @option params [Hash{Symbol=>String}] :metadata For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #
      #   @option params [Array<String>] :name If you have specific names to retrieve in bulk, you can pass them as query
      #     parameters delimited with `name[]=`, for example `?name[]=123&name[]=abc`.
      #
      #   @option params [ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount] :pending_balance_amount Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
      #     filter by balance amount.
      #
      #   @option params [Integer] :per_page
      #
      #   @option params [ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount] :posted_balance_amount Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
      #     filter by balance amount.
      #
      #   @option params [Hash{Symbol=>Time}] :updated_at Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #     updated at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #     updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::LedgerAccount>]
      #
      def list(params = {})
        parsed, options = ModernTreasury::Models::LedgerAccountListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/ledger_accounts",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::LedgerAccount,
          options: options
        )
      end

      # Delete a ledger account.
      #
      # @param id [String] id
      #
      # @param params [ModernTreasury::Models::LedgerAccountDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [ModernTreasury::Models::LedgerAccount]
      #
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/ledger_accounts/%0s", id],
          model: ModernTreasury::Models::LedgerAccount,
          options: params[:request_options]
        )
      end

      # @param client [ModernTreasury::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
