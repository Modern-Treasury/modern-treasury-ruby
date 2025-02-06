# typed: strong

module ModernTreasury
  module Resources
    class LedgerAccounts
      sig do
        params(
          currency: String,
          ledger_id: String,
          name: String,
          normal_balance: Symbol,
          currency_exponent: T.nilable(Integer),
          description: T.nilable(String),
          ledger_account_category_ids: T::Array[String],
          ledgerable_id: String,
          ledgerable_type: Symbol,
          metadata: T::Hash[Symbol, String],
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Models::LedgerAccount)
      end
      def create(
        currency:,
        ledger_id:,
        name:,
        normal_balance:,
        currency_exponent: nil,
        description: nil,
        ledger_account_category_ids: nil,
        ledgerable_id: nil,
        ledgerable_type: nil,
        metadata: nil,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          balances: ModernTreasury::Models::LedgerAccountRetrieveParams::Balances,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Models::LedgerAccount)
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
        ).returns(ModernTreasury::Models::LedgerAccount)
      end
      def update(id, description: nil, metadata: nil, name: nil, request_options: {})
      end

      sig do
        params(
          id: T::Array[String],
          after_cursor: T.nilable(String),
          available_balance_amount: ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount,
          balances: ModernTreasury::Models::LedgerAccountListParams::Balances,
          created_at: T::Hash[Symbol, Time],
          currency: String,
          ledger_account_category_id: String,
          ledger_id: String,
          metadata: T::Hash[Symbol, String],
          name: T::Array[String],
          pending_balance_amount: ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount,
          per_page: Integer,
          posted_balance_amount: ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount,
          updated_at: T::Hash[Symbol, Time],
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Page[ModernTreasury::Models::LedgerAccount])
      end
      def list(
        id: nil,
        after_cursor: nil,
        available_balance_amount: nil,
        balances: nil,
        created_at: nil,
        currency: nil,
        ledger_account_category_id: nil,
        ledger_id: nil,
        metadata: nil,
        name: nil,
        pending_balance_amount: nil,
        per_page: nil,
        posted_balance_amount: nil,
        updated_at: nil,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Models::LedgerAccount)
      end
      def delete(id, request_options: {})
      end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:)
      end
    end
  end
end
