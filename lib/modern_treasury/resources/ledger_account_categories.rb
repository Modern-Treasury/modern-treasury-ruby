# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerAccountCategories
      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerAccountCategoryCreateParams} for more details.
      #
      # Create a ledger account category.
      #
      # @overload create(currency:, ledger_id:, name:, normal_balance:, currency_exponent: nil, description: nil, ledger_account_category_ids: nil, metadata: nil, request_options: {})
      #
      # @param currency [String] The currency of the ledger account category.
      #
      # @param ledger_id [String] The id of the ledger that this account category belongs to.
      #
      # @param name [String] The name of the ledger account category.
      #
      # @param normal_balance [Symbol, ModernTreasury::Models::TransactionDirection] The normal balance of the ledger account category.
      #
      # @param currency_exponent [Integer, nil] The currency exponent of the ledger account category.
      #
      # @param description [String, nil] The description of the ledger account category.
      #
      # @param ledger_account_category_ids [Array<String>] The array of ledger account category ids that this ledger account category shoul
      #
      # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccountCategory]
      #
      # @see ModernTreasury::Models::LedgerAccountCategoryCreateParams
      def create(params)
        parsed, options = ModernTreasury::LedgerAccountCategoryCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/ledger_account_categories",
          body: parsed,
          model: ModernTreasury::LedgerAccountCategory,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerAccountCategoryRetrieveParams} for more details.
      #
      # Get the details on a single ledger account category.
      #
      # @overload retrieve(id, balances: nil, request_options: {})
      #
      # @param id [String] id
      #
      # @param balances [ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances] For example, if you want the balances as of a particular time (ISO8601), the enc
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccountCategory]
      #
      # @see ModernTreasury::Models::LedgerAccountCategoryRetrieveParams
      def retrieve(id, params = {})
        parsed, options = ModernTreasury::LedgerAccountCategoryRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/ledger_account_categories/%1$s", id],
          query: parsed,
          model: ModernTreasury::LedgerAccountCategory,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerAccountCategoryUpdateParams} for more details.
      #
      # Update the details of a ledger account category.
      #
      # @overload update(id, description: nil, metadata: nil, name: nil, request_options: {})
      #
      # @param id [String] id
      #
      # @param description [String, nil] The description of the ledger account category.
      #
      # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      # @param name [String] The name of the ledger account category.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccountCategory]
      #
      # @see ModernTreasury::Models::LedgerAccountCategoryUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::LedgerAccountCategoryUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/ledger_account_categories/%1$s", id],
          body: parsed,
          model: ModernTreasury::LedgerAccountCategory,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerAccountCategoryListParams} for more details.
      #
      # Get a list of ledger account categories.
      #
      # @overload list(id: nil, after_cursor: nil, balances: nil, currency: nil, ledger_account_id: nil, ledger_id: nil, metadata: nil, name: nil, parent_ledger_account_category_id: nil, per_page: nil, request_options: {})
      #
      # @param id [Array<String>] If you have specific IDs to retrieve in bulk, you can pass them as query paramet
      #
      # @param after_cursor [String, nil]
      #
      # @param balances [ModernTreasury::Models::LedgerAccountCategoryListParams::Balances] For example, if you want the balances as of a particular time (ISO8601), the enc
      #
      # @param currency [String]
      #
      # @param ledger_account_id [String] Query categories which contain a ledger account directly or through child catego
      #
      # @param ledger_id [String]
      #
      # @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #
      # @param name [String]
      #
      # @param parent_ledger_account_category_id [String] Query categories that are nested underneath a parent category
      #
      # @param per_page [Integer]
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::LedgerAccountCategory>]
      #
      # @see ModernTreasury::Models::LedgerAccountCategoryListParams
      def list(params = {})
        parsed, options = ModernTreasury::LedgerAccountCategoryListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/ledger_account_categories",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::LedgerAccountCategory,
          options: options
        )
      end

      # Delete a ledger account category.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccountCategory]
      #
      # @see ModernTreasury::Models::LedgerAccountCategoryDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/ledger_account_categories/%1$s", id],
          model: ModernTreasury::LedgerAccountCategory,
          options: params[:request_options]
        )
      end

      # Add a ledger account to a ledger account category.
      #
      # @overload add_ledger_account(ledger_account_id, id:, request_options: {})
      #
      # @param ledger_account_id [String] ledger_account_id
      #
      # @param id [String] id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see ModernTreasury::Models::LedgerAccountCategoryAddLedgerAccountParams
      def add_ledger_account(ledger_account_id, params)
        parsed, options = ModernTreasury::LedgerAccountCategoryAddLedgerAccountParams.dump_request(params)
        id =
          parsed.delete(:id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :put,
          path: ["api/ledger_account_categories/%1$s/ledger_accounts/%2$s", id, ledger_account_id],
          model: NilClass,
          options: options
        )
      end

      # Add a ledger account category to a ledger account category.
      #
      # @overload add_nested_category(sub_category_id, id:, request_options: {})
      #
      # @param sub_category_id [String] sub_category_id
      #
      # @param id [String] id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see ModernTreasury::Models::LedgerAccountCategoryAddNestedCategoryParams
      def add_nested_category(sub_category_id, params)
        parsed, options = ModernTreasury::LedgerAccountCategoryAddNestedCategoryParams.dump_request(params)
        id =
          parsed.delete(:id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :put,
          path: ["api/ledger_account_categories/%1$s/ledger_account_categories/%2$s", id, sub_category_id],
          model: NilClass,
          options: options
        )
      end

      # Remove a ledger account from a ledger account category.
      #
      # @overload remove_ledger_account(ledger_account_id, id:, request_options: {})
      #
      # @param ledger_account_id [String] ledger_account_id
      #
      # @param id [String] id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see ModernTreasury::Models::LedgerAccountCategoryRemoveLedgerAccountParams
      def remove_ledger_account(ledger_account_id, params)
        parsed, options = ModernTreasury::LedgerAccountCategoryRemoveLedgerAccountParams.dump_request(params)
        id =
          parsed.delete(:id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/ledger_account_categories/%1$s/ledger_accounts/%2$s", id, ledger_account_id],
          model: NilClass,
          options: options
        )
      end

      # Delete a ledger account category from a ledger account category.
      #
      # @overload remove_nested_category(sub_category_id, id:, request_options: {})
      #
      # @param sub_category_id [String] sub_category_id
      #
      # @param id [String] id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see ModernTreasury::Models::LedgerAccountCategoryRemoveNestedCategoryParams
      def remove_nested_category(sub_category_id, params)
        parsed, options = ModernTreasury::LedgerAccountCategoryRemoveNestedCategoryParams.dump_request(params)
        id =
          parsed.delete(:id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/ledger_account_categories/%1$s/ledger_account_categories/%2$s", id, sub_category_id],
          model: NilClass,
          options: options
        )
      end

      # @api private
      #
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
