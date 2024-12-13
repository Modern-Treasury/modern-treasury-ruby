# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerAccounts
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end

      # Create a ledger account.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :currency The currency of the ledger account.
      #   @option params [String] :ledger_id The id of the ledger that this account belongs to.
      #   @option params [String] :name The name of the ledger account.
      #   @option params [Symbol, ModernTreasury::Models::TransactionDirection] :normal_balance The normal balance of the ledger account.
      #   @option params [Integer, nil] :currency_exponent The currency exponent of the ledger account.
      #   @option params [String, nil] :description The description of the ledger account.
      #   @option params [Array<String>, nil] :ledger_account_category_ids The array of ledger account category ids that this ledger account should be a
      #     child of.
      #   @option params [String, nil] :ledgerable_id If the ledger account links to another object in Modern Treasury, the id will be
      #     populated here, otherwise null.
      #   @option params [Symbol, ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType, nil] :ledgerable_type If the ledger account links to another object in Modern Treasury, the type will
      #     be populated here, otherwise null. The value is one of internal_account or
      #     external_account.
      #   @option params [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerAccount]
      def create(params = {}, opts = {})
        parsed = ModernTreasury::Models::LedgerAccountCreateParams.dump(params)
        req = {
          method: :post,
          path: "/api/ledger_accounts",
          body: parsed,
          model: ModernTreasury::Models::LedgerAccount
        }
        @client.request(req, opts)
      end

      # Get details on a single ledger account.
      #
      # @param id [String] id
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [ModernTreasury::Models::LedgerAccountRetrieveParams::Balances, nil] :balances Use `balances[effective_at_lower_bound]` and
      #     `balances[effective_at_upper_bound]` to get the balances change between the two
      #     timestamps. The lower bound is inclusive while the upper bound is exclusive of
      #     the provided timestamps. If no value is supplied the balances will be retrieved
      #     not including that bound. Use `balances[as_of_lock_version]` to retrieve a
      #     balance as of a specific Ledger Account `lock_version`.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerAccount]
      def retrieve(id, params = {}, opts = {})
        parsed = ModernTreasury::Models::LedgerAccountRetrieveParams.dump(params)
        req = {
          method: :get,
          path: "/api/ledger_accounts/#{id}",
          query: parsed,
          model: ModernTreasury::Models::LedgerAccount
        }
        @client.request(req, opts)
      end

      # Update the details of a ledger account.
      #
      # @param id [String] id
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String, nil] :description The description of the ledger account.
      #   @option params [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #   @option params [String, nil] :name The name of the ledger account.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerAccount]
      def update(id, params = {}, opts = {})
        parsed = ModernTreasury::Models::LedgerAccountUpdateParams.dump(params)
        req = {
          method: :patch,
          path: "/api/ledger_accounts/#{id}",
          body: parsed,
          model: ModernTreasury::Models::LedgerAccount
        }
        @client.request(req, opts)
      end

      # Get a list of ledger accounts.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Array<String>, nil] :id If you have specific IDs to retrieve in bulk, you can pass them as query
      #     parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #   @option params [String, nil] :after_cursor
      #   @option params [ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount, nil] :available_balance_amount Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
      #     filter by balance amount.
      #   @option params [ModernTreasury::Models::LedgerAccountListParams::Balances, nil] :balances Use `balances[effective_at_lower_bound]` and
      #     `balances[effective_at_upper_bound]` to get the balances change between the two
      #     timestamps. The lower bound is inclusive while the upper bound is exclusive of
      #     the provided timestamps. If no value is supplied the balances will be retrieved
      #     not including that bound.
      #   @option params [Hash, nil] :created_at Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #     created at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #     created_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #   @option params [String, nil] :currency
      #   @option params [String, nil] :ledger_account_category_id
      #   @option params [String, nil] :ledger_id
      #   @option params [Hash, nil] :metadata For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #   @option params [Array<String>, nil] :name If you have specific names to retrieve in bulk, you can pass them as query
      #     parameters delimited with `name[]=`, for example `?name[]=123&name[]=abc`.
      #   @option params [ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount, nil] :pending_balance_amount Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
      #     filter by balance amount.
      #   @option params [Integer, nil] :per_page
      #   @option params [ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount, nil] :posted_balance_amount Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
      #     filter by balance amount.
      #   @option params [Hash, nil] :updated_at Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #     updated at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #     updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::LedgerAccount>]
      def list(params = {}, opts = {})
        parsed = ModernTreasury::Models::LedgerAccountListParams.dump(params)
        req = {
          method: :get,
          path: "/api/ledger_accounts",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::LedgerAccount
        }
        @client.request(req, opts)
      end

      # Delete a ledger account.
      #
      # @param id [String] id
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerAccount]
      def delete(id, opts = {})
        req = {
          method: :delete,
          path: "/api/ledger_accounts/#{id}",
          model: ModernTreasury::Models::LedgerAccount
        }
        @client.request(req, opts)
      end
    end
  end
end
