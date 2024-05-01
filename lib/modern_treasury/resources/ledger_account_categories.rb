# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerAccountCategories
      def initialize(client:)
        @client = client
      end

      # Create a ledger account category.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :currency The currency of the ledger account category.
      # @option params [String] :ledger_id The id of the ledger that this account category belongs to.
      # @option params [String] :name The name of the ledger account category.
      # @option params [Symbol] :normal_balance The normal balance of the ledger account category.
      # @option params [Integer] :currency_exponent The currency exponent of the ledger account category.
      # @option params [String] :description The description of the ledger account category.
      # @option params [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerAccountCategory]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/api/ledger_account_categories"
        req[:body] = params
        req[:model] = ModernTreasury::Models::LedgerAccountCategory
        @client.request(req, opts)
      end

      # Get the details on a single ledger account category.
      #
      # @param id [String] id
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Balances] :balances For example, if you want the balances as of a particular time (ISO8601), the
      #   encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`.
      #   The balances as of a time are inclusive of entries with that exact time.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerAccountCategory]
      def retrieve(id, params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/ledger_account_categories/#{id}"
        req[:query] = params
        req[:model] = ModernTreasury::Models::LedgerAccountCategory
        @client.request(req, opts)
      end

      # Update the details of a ledger account category.
      #
      # @param id [String] id
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :description The description of the ledger account category.
      # @option params [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @option params [String] :name The name of the ledger account category.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerAccountCategory]
      def update(id, params = {}, opts = {})
        req = {}
        req[:method] = :patch
        req[:path] = "/api/ledger_account_categories/#{id}"
        req[:body] = params
        req[:model] = ModernTreasury::Models::LedgerAccountCategory
        @client.request(req, opts)
      end

      # Get a list of ledger account categories.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Array<String>] :id If you have specific IDs to retrieve in bulk, you can pass them as query
      #   parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      # @option params [String] :after_cursor
      # @option params [Balances] :balances For example, if you want the balances as of a particular time (ISO8601), the
      #   encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`.
      #   The balances as of a time are inclusive of entries with that exact time.
      # @option params [String] :ledger_account_id Query categories which contain a ledger account directly or through child
      #   categories.
      # @option params [String] :ledger_id
      # @option params [Hash] :metadata For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      # @option params [String] :name
      # @option params [String] :parent_ledger_account_category_id Query categories that are nested underneath a parent category
      # @option params [Integer] :per_page
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::LedgerAccountCategory>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/ledger_account_categories"
        req[:query] = params
        req[:page] = ModernTreasury::Page
        req[:model] = ModernTreasury::Models::LedgerAccountCategory
        @client.request(req, opts)
      end

      # Delete a ledger account category.
      #
      # @param id [String] id
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerAccountCategory]
      def delete(id, opts = {})
        req = {}
        req[:method] = :delete
        req[:path] = "/api/ledger_account_categories/#{id}"
        req[:model] = ModernTreasury::Models::LedgerAccountCategory
        @client.request(req, opts)
      end

      # Add a ledger account to a ledger account category.
      #
      # @param id [String] id
      # @param ledger_account_id [String] ledger_account_id
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      def add_ledger_account(id, ledger_account_id, opts = {})
        req = {}
        req[:method] = :put
        req[:path] = "/api/ledger_account_categories/#{id}/ledger_accounts/#{ledger_account_id}"
        req[:model] = NilClass
        @client.request(req, opts)
      end

      # Add a ledger account category to a ledger account category.
      #
      # @param id [String] id
      # @param sub_category_id [String] sub_category_id
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      def add_nested_category(id, sub_category_id, opts = {})
        req = {}
        req[:method] = :put
        req[:path] = "/api/ledger_account_categories/#{id}/ledger_account_categories/#{sub_category_id}"
        req[:model] = NilClass
        @client.request(req, opts)
      end

      # Remove a ledger account from a ledger account category.
      #
      # @param id [String] id
      # @param ledger_account_id [String] ledger_account_id
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      def remove_ledger_account(id, ledger_account_id, opts = {})
        req = {}
        req[:method] = :delete
        req[:path] = "/api/ledger_account_categories/#{id}/ledger_accounts/#{ledger_account_id}"
        req[:model] = NilClass
        @client.request(req, opts)
      end

      # Delete a ledger account category from a ledger account category.
      #
      # @param id [String] id
      # @param sub_category_id [String] sub_category_id
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      def remove_nested_category(id, sub_category_id, opts = {})
        req = {}
        req[:method] = :delete
        req[:path] = "/api/ledger_account_categories/#{id}/ledger_account_categories/#{sub_category_id}"
        req[:model] = NilClass
        @client.request(req, opts)
      end
    end
  end
end
