# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerAccountCategories
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end

      # Create a ledger account category.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :currency The currency of the ledger account category.
      #   @option params [String] :ledger_id The id of the ledger that this account category belongs to.
      #   @option params [String] :name The name of the ledger account category.
      #   @option params [Symbol, ModernTreasury::Models::TransactionDirection] :normal_balance The normal balance of the ledger account category.
      #   @option params [Integer, nil] :currency_exponent The currency exponent of the ledger account category.
      #   @option params [String, nil] :description The description of the ledger account category.
      #   @option params [Array<String>, nil] :ledger_account_category_ids The array of ledger account category ids that this ledger account category
      #     should be a child of.
      #   @option params [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerAccountCategory]
      def create(params = {}, opts = {})
        parsed = ModernTreasury::Models::LedgerAccountCategoryCreateParams.dump(params)
        req = {
          method: :post,
          path: "/api/ledger_account_categories",
          headers: {"Content-Type" => "application/json"},
          body: parsed,
          model: ModernTreasury::Models::LedgerAccountCategory
        }
        @client.request(req, opts)
      end

      # Get the details on a single ledger account category.
      #
      # @param id [String] id
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances, nil] :balances For example, if you want the balances as of a particular time (ISO8601), the
      #     encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`.
      #     The balances as of a time are inclusive of entries with that exact time.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerAccountCategory]
      def retrieve(id, params = {}, opts = {})
        parsed = ModernTreasury::Models::LedgerAccountCategoryRetrieveParams.dump(params)
        req = {
          method: :get,
          path: "/api/ledger_account_categories/#{id}",
          query: parsed,
          model: ModernTreasury::Models::LedgerAccountCategory
        }
        @client.request(req, opts)
      end

      # Update the details of a ledger account category.
      #
      # @param id [String] id
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String, nil] :description The description of the ledger account category.
      #   @option params [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #   @option params [String, nil] :name The name of the ledger account category.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerAccountCategory]
      def update(id, params = {}, opts = {})
        parsed = ModernTreasury::Models::LedgerAccountCategoryUpdateParams.dump(params)
        req = {
          method: :patch,
          path: "/api/ledger_account_categories/#{id}",
          headers: {"Content-Type" => "application/json"},
          body: parsed,
          model: ModernTreasury::Models::LedgerAccountCategory
        }
        @client.request(req, opts)
      end

      # Get a list of ledger account categories.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Array<String>, nil] :id If you have specific IDs to retrieve in bulk, you can pass them as query
      #     parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #   @option params [String, nil] :after_cursor
      #   @option params [ModernTreasury::Models::LedgerAccountCategoryListParams::Balances, nil] :balances For example, if you want the balances as of a particular time (ISO8601), the
      #     encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`.
      #     The balances as of a time are inclusive of entries with that exact time.
      #   @option params [String, nil] :currency
      #   @option params [String, nil] :ledger_account_id Query categories which contain a ledger account directly or through child
      #     categories.
      #   @option params [String, nil] :ledger_id
      #   @option params [Hash, nil] :metadata For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #   @option params [String, nil] :name
      #   @option params [String, nil] :parent_ledger_account_category_id Query categories that are nested underneath a parent category
      #   @option params [Integer, nil] :per_page
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::LedgerAccountCategory>]
      def list(params = {}, opts = {})
        parsed = ModernTreasury::Models::LedgerAccountCategoryListParams.dump(params)
        req = {
          method: :get,
          path: "/api/ledger_account_categories",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::LedgerAccountCategory
        }
        @client.request(req, opts)
      end

      # Delete a ledger account category.
      #
      # @param id [String] id
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerAccountCategory]
      def delete(id, opts = {})
        req = {
          method: :delete,
          path: "/api/ledger_account_categories/#{id}",
          model: ModernTreasury::Models::LedgerAccountCategory
        }
        @client.request(req, opts)
      end

      # Add a ledger account to a ledger account category.
      #
      # @param ledger_account_id [String] ledger_account_id
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :id id
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      def add_ledger_account(ledger_account_id, params = {}, opts = {})
        ModernTreasury::Models::LedgerAccountCategoryAddLedgerAccountParams.dump(params)
        id = params.fetch(:id) do
          raise ArgumentError, "missing required path argument :id"
        end
        req = {
          method: :put,
          path: "/api/ledger_account_categories/#{id}/ledger_accounts/#{ledger_account_id}",
          model: NilClass
        }
        @client.request(req, opts)
      end

      # Add a ledger account category to a ledger account category.
      #
      # @param sub_category_id [String] sub_category_id
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :id id
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      def add_nested_category(sub_category_id, params = {}, opts = {})
        ModernTreasury::Models::LedgerAccountCategoryAddNestedCategoryParams.dump(params)
        id = params.fetch(:id) do
          raise ArgumentError, "missing required path argument :id"
        end
        req = {
          method: :put,
          path: "/api/ledger_account_categories/#{id}/ledger_account_categories/#{sub_category_id}",
          model: NilClass
        }
        @client.request(req, opts)
      end

      # Remove a ledger account from a ledger account category.
      #
      # @param ledger_account_id [String] ledger_account_id
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :id id
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      def remove_ledger_account(ledger_account_id, params = {}, opts = {})
        ModernTreasury::Models::LedgerAccountCategoryRemoveLedgerAccountParams.dump(params)
        id = params.fetch(:id) do
          raise ArgumentError, "missing required path argument :id"
        end
        req = {
          method: :delete,
          path: "/api/ledger_account_categories/#{id}/ledger_accounts/#{ledger_account_id}",
          model: NilClass
        }
        @client.request(req, opts)
      end

      # Delete a ledger account category from a ledger account category.
      #
      # @param sub_category_id [String] sub_category_id
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :id id
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      def remove_nested_category(sub_category_id, params = {}, opts = {})
        ModernTreasury::Models::LedgerAccountCategoryRemoveNestedCategoryParams.dump(params)
        id = params.fetch(:id) do
          raise ArgumentError, "missing required path argument :id"
        end
        req = {
          method: :delete,
          path: "/api/ledger_account_categories/#{id}/ledger_account_categories/#{sub_category_id}",
          model: NilClass
        }
        @client.request(req, opts)
      end
    end
  end
end
