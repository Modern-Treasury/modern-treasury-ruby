# typed: strong

module ModernTreasury
  module Resources
    class LedgerAccountCategories
      sig do
        params(
          currency: String,
          ledger_id: String,
          name: String,
          normal_balance: Symbol,
          currency_exponent: T.nilable(Integer),
          description: T.nilable(String),
          ledger_account_category_ids: T::Array[String],
          metadata: T::Hash[Symbol, String],
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Models::LedgerAccountCategory)
      end
      def create(
        currency:,
        ledger_id:,
        name:,
        normal_balance:,
        currency_exponent: nil,
        description: nil,
        ledger_account_category_ids: nil,
        metadata: nil,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          balances: ModernTreasury::Models::LedgerAccountCategoryRetrieveParams::Balances,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Models::LedgerAccountCategory)
      end
      def retrieve(id, balances: nil, request_options: {})
      end

      sig do
        params(
          id: String,
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          name: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Models::LedgerAccountCategory)
      end
      def update(id, description: nil, metadata: nil, name: nil, request_options: {})
      end

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
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Page[ModernTreasury::Models::LedgerAccountCategory])
      end
      def list(
        id: nil,
        after_cursor: nil,
        balances: nil,
        currency: nil,
        ledger_account_id: nil,
        ledger_id: nil,
        metadata: nil,
        name: nil,
        parent_ledger_account_category_id: nil,
        per_page: nil,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Models::LedgerAccountCategory)
      end
      def delete(id, request_options: {})
      end

      sig do
        params(
          ledger_account_id: String,
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).void
      end
      def add_ledger_account(ledger_account_id, id:, request_options: {})
      end

      sig do
        params(
          sub_category_id: String,
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).void
      end
      def add_nested_category(sub_category_id, id:, request_options: {})
      end

      sig do
        params(
          ledger_account_id: String,
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).void
      end
      def remove_ledger_account(ledger_account_id, id:, request_options: {})
      end

      sig do
        params(
          sub_category_id: String,
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).void
      end
      def remove_nested_category(sub_category_id, id:, request_options: {})
      end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:)
      end
    end
  end
end
