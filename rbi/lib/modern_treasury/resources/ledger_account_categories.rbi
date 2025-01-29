# typed: strong

module ModernTreasury
  module Resources
    class LedgerAccountCategories
      sig do
        params(
          params: T.any(
            ModernTreasury::Models::LedgerAccountCategoryCreateParams,
            T::Hash[Symbol, T.anything]
          ),
          currency: String,
          ledger_id: String,
          name: String,
          normal_balance: Symbol,
          currency_exponent: T.nilable(Integer),
          description: T.nilable(String),
          ledger_account_category_ids: T::Array[String],
          metadata: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LedgerAccountCategory)
      end
      def create(
        params,
        currency:,
        ledger_id:,
        name:,
        normal_balance:,
        currency_exponent:,
        description:,
        ledger_account_category_ids:,
        metadata:,
        request_options: {}
      ); end

      sig do
        params(
          id: String,
          balances: ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LedgerAccountCategory)
      end
      def retrieve(id, balances:, request_options: {}); end

      sig do
        params(
          id: String,
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          name: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LedgerAccountCategory)
      end
      def update(id, description:, metadata:, name:, request_options: {}); end

      sig do
        params(
          id: T::Array[String],
          after_cursor: T.nilable(String),
          balances: ModernTreasury::Models::LedgerAccountCategoryListParams::Balances,
          currency: String,
          ledger_account_id: String,
          ledger_id: String,
          metadata: T::Hash[Symbol, String],
          name: String,
          parent_ledger_account_category_id: String,
          per_page: Integer,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Page[ModernTreasury::Models::LedgerAccountCategory])
      end
      def list(
        id:,
        after_cursor:,
        balances:,
        currency:,
        ledger_account_id:,
        ledger_id:,
        metadata:,
        name:,
        parent_ledger_account_category_id:,
        per_page:,
        request_options: {}
      ); end

      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LedgerAccountCategory)
      end
      def delete(id, request_options: {}); end

      sig do
        params(
          ledger_account_id: String,
          params: T.any(
            ModernTreasury::Models::LedgerAccountCategoryAddLedgerAccountParams,
            T::Hash[Symbol, T.anything]
          ),
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(NilClass)
      end
      def add_ledger_account(ledger_account_id, params, id:, request_options: {}); end

      sig do
        params(
          sub_category_id: String,
          params: T.any(
            ModernTreasury::Models::LedgerAccountCategoryAddNestedCategoryParams,
            T::Hash[Symbol, T.anything]
          ),
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(NilClass)
      end
      def add_nested_category(sub_category_id, params, id:, request_options: {}); end

      sig do
        params(
          ledger_account_id: String,
          params: T.any(
            ModernTreasury::Models::LedgerAccountCategoryRemoveLedgerAccountParams,
            T::Hash[Symbol, T.anything]
          ),
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(NilClass)
      end
      def remove_ledger_account(ledger_account_id, params, id:, request_options: {}); end

      sig do
        params(
          sub_category_id: String,
          params: T.any(
            ModernTreasury::Models::LedgerAccountCategoryRemoveNestedCategoryParams,
            T::Hash[Symbol, T.anything]
          ),
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(NilClass)
      end
      def remove_nested_category(sub_category_id, params, id:, request_options: {}); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
