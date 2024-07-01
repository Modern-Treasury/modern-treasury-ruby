# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerAccounts
      def initialize(client:)
        @client = client
      end

      # Create a ledger account.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :currency The currency of the ledger account.
      # @option params [String] :ledger_id The id of the ledger that this account belongs to.
      # @option params [String] :name The name of the ledger account.
      # @option params [Symbol] :normal_balance The normal balance of the ledger account.
      # @option params [Integer] :currency_exponent The currency exponent of the ledger account.
      # @option params [String] :description The description of the ledger account.
      # @option params [Array<String>] :ledger_account_category_ids The array of ledger account category ids that this ledger account should be a
      #   child of.
      # @option params [String] :ledgerable_id If the ledger account links to another object in Modern Treasury, the id will be
      #   populated here, otherwise null.
      # @option params [Symbol] :ledgerable_type If the ledger account links to another object in Modern Treasury, the type will
      #   be populated here, otherwise null. The value is one of internal_account or
      #   external_account.
      # @option params [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerAccount]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/api/ledger_accounts"
        req[:body] = params
        req[:model] = ModernTreasury::Models::LedgerAccount
        @client.request(req, opts)
      end

      # Get details on a single ledger account.
      #
      # @param id [String] id
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Balances] :balances Use `balances[effective_at_lower_bound]` and
      #   `balances[effective_at_upper_bound]` to get the balances change between the two
      #   timestamps. The lower bound is inclusive while the upper bound is exclusive of
      #   the provided timestamps. If no value is supplied the balances will be retrieved
      #   not including that bound. Use `balances[as_of_lock_version]` to retrieve a
      #   balance as of a specific Ledger Account `lock_version`.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerAccount]
      def retrieve(id, params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/ledger_accounts/#{id}"
        req[:query] = params
        req[:model] = ModernTreasury::Models::LedgerAccount
        @client.request(req, opts)
      end

      # Update the details of a ledger account.
      #
      # @param id [String] id
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :description The description of the ledger account.
      # @option params [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @option params [String] :name The name of the ledger account.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerAccount]
      def update(id, params = {}, opts = {})
        req = {}
        req[:method] = :patch
        req[:path] = "/api/ledger_accounts/#{id}"
        req[:body] = params
        req[:model] = ModernTreasury::Models::LedgerAccount
        @client.request(req, opts)
      end

      # Get a list of ledger accounts.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Array<String>] :id If you have specific IDs to retrieve in bulk, you can pass them as query
      #   parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      # @option params [String] :after_cursor
      # @option params [AvailableBalanceAmount] :available_balance_amount Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
      #   filter by balance amount.
      # @option params [Balances] :balances Use `balances[effective_at_lower_bound]` and
      #   `balances[effective_at_upper_bound]` to get the balances change between the two
      #   timestamps. The lower bound is inclusive while the upper bound is exclusive of
      #   the provided timestamps. If no value is supplied the balances will be retrieved
      #   not including that bound.
      # @option params [Hash] :created_at Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   created at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   created_at%5Bgt%5D=2000-01-01T12:00:00Z.
      # @option params [String] :currency
      # @option params [String] :ledger_account_category_id
      # @option params [String] :ledger_id
      # @option params [Hash] :metadata For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      # @option params [Array<String>] :name If you have specific names to retrieve in bulk, you can pass them as query
      #   parameters delimited with `name[]=`, for example `?name[]=123&name[]=abc`.
      # @option params [PendingBalanceAmount] :pending_balance_amount Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
      #   filter by balance amount.
      # @option params [Integer] :per_page
      # @option params [PostedBalanceAmount] :posted_balance_amount Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), `eq` (=), or `not_eq` (!=) to
      #   filter by balance amount.
      # @option params [Hash] :updated_at Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   updated at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::LedgerAccount>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/ledger_accounts"
        req[:query] = params
        req[:page] = ModernTreasury::Page
        req[:model] = ModernTreasury::Models::LedgerAccount
        @client.request(req, opts)
      end

      # Delete a ledger account.
      #
      # @param id [String] id
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerAccount]
      def delete(id, opts = {})
        req = {}
        req[:method] = :delete
        req[:path] = "/api/ledger_accounts/#{id}"
        req[:model] = ModernTreasury::Models::LedgerAccount
        @client.request(req, opts)
      end
    end
  end
end
