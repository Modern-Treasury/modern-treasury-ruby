# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerAccountCategories
      # Create a ledger account category.
      #
      # @overload create(currency:, ledger_id:, name:, normal_balance:, currency_exponent: nil, description: nil, ledger_account_category_ids: nil, metadata: nil, request_options: {})
      #
      # @param currency [String]
      # @param ledger_id [String]
      # @param name [String]
      # @param normal_balance [Symbol, ModernTreasury::Models::TransactionDirection]
      # @param currency_exponent [Integer, nil]
      # @param description [String, nil]
      # @param ledger_account_category_ids [Array<String>]
      # @param metadata [Hash{Symbol=>String}]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccountCategory]
      #
      # @see ModernTreasury::Models::LedgerAccountCategoryCreateParams
      def create(params)
        parsed, options = ModernTreasury::Models::LedgerAccountCategoryCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/ledger_account_categories",
          body: parsed,
          model: ModernTreasury::Models::LedgerAccountCategory,
          options: options
        )
      end

      # Get the details on a single ledger account category.
      #
      # @overload retrieve(id, balances: nil, request_options: {})
      #
      # @param id [String]
      # @param balances [ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccountCategory]
      #
      # @see ModernTreasury::Models::LedgerAccountCategoryRetrieveParams
      def retrieve(id, params = {})
        parsed, options = ModernTreasury::Models::LedgerAccountCategoryRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/ledger_account_categories/%1$s", id],
          query: parsed,
          model: ModernTreasury::Models::LedgerAccountCategory,
          options: options
        )
      end

      # Update the details of a ledger account category.
      #
      # @overload update(id, description: nil, metadata: nil, name: nil, request_options: {})
      #
      # @param id [String]
      # @param description [String, nil]
      # @param metadata [Hash{Symbol=>String}]
      # @param name [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccountCategory]
      #
      # @see ModernTreasury::Models::LedgerAccountCategoryUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::Models::LedgerAccountCategoryUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/ledger_account_categories/%1$s", id],
          body: parsed,
          model: ModernTreasury::Models::LedgerAccountCategory,
          options: options
        )
      end

      # Get a list of ledger account categories.
      #
      # @overload list(id: nil, after_cursor: nil, balances: nil, currency: nil, ledger_account_id: nil, ledger_id: nil, metadata: nil, name: nil, parent_ledger_account_category_id: nil, per_page: nil, request_options: {})
      #
      # @param id [Array<String>]
      # @param after_cursor [String, nil]
      # @param balances [ModernTreasury::Models::LedgerAccountCategoryListParams::Balances]
      # @param currency [String]
      # @param ledger_account_id [String]
      # @param ledger_id [String]
      # @param metadata [Hash{Symbol=>String}]
      # @param name [String]
      # @param parent_ledger_account_category_id [String]
      # @param per_page [Integer]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::LedgerAccountCategory>]
      #
      # @see ModernTreasury::Models::LedgerAccountCategoryListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::LedgerAccountCategoryListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/ledger_account_categories",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::LedgerAccountCategory,
          options: options
        )
      end

      # Delete a ledger account category.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccountCategory]
      #
      # @see ModernTreasury::Models::LedgerAccountCategoryDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/ledger_account_categories/%1$s", id],
          model: ModernTreasury::Models::LedgerAccountCategory,
          options: params[:request_options]
        )
      end

      # Add a ledger account to a ledger account category.
      #
      # @overload add_ledger_account(ledger_account_id, id:, request_options: {})
      #
      # @param ledger_account_id [String]
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see ModernTreasury::Models::LedgerAccountCategoryAddLedgerAccountParams
      def add_ledger_account(ledger_account_id, params)
        parsed, options =
          ModernTreasury::Models::LedgerAccountCategoryAddLedgerAccountParams.dump_request(params)
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
      # @param sub_category_id [String]
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see ModernTreasury::Models::LedgerAccountCategoryAddNestedCategoryParams
      def add_nested_category(sub_category_id, params)
        parsed, options =
          ModernTreasury::Models::LedgerAccountCategoryAddNestedCategoryParams.dump_request(params)
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
      # @param ledger_account_id [String]
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see ModernTreasury::Models::LedgerAccountCategoryRemoveLedgerAccountParams
      def remove_ledger_account(ledger_account_id, params)
        parsed, options =
          ModernTreasury::Models::LedgerAccountCategoryRemoveLedgerAccountParams.dump_request(params)
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
      # @param sub_category_id [String]
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see ModernTreasury::Models::LedgerAccountCategoryRemoveNestedCategoryParams
      def remove_nested_category(sub_category_id, params)
        parsed, options =
          ModernTreasury::Models::LedgerAccountCategoryRemoveNestedCategoryParams.dump_request(params)
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
