# typed: strong

module ModernTreasury
  module Resources
    class LedgerAccounts
      sig do
        params(
          params: T.any(ModernTreasury::Models::LedgerAccountCreateParams, T::Hash[Symbol, T.anything]),
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
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LedgerAccount)
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
        ledgerable_id:,
        ledgerable_type:,
        metadata:,
        request_options: {}
      ); end

      sig do
        params(
          id: String,
          balances: ModernTreasury::Models::LedgerAccountRetrieveParams::Balances,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LedgerAccount)
      end
      def retrieve(id, balances:, request_options: {}); end

      sig do
        params(
          id: String,
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          name: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LedgerAccount)
      end
      def update(id, description:, metadata:, name:, request_options: {}); end

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
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Page[ModernTreasury::Models::LedgerAccount])
      end
      def list(
        id:,
        after_cursor:,
        available_balance_amount:,
        balances:,
        created_at:,
        currency:,
        ledger_account_category_id:,
        ledger_id:,
        metadata:,
        name:,
        pending_balance_amount:,
        per_page:,
        posted_balance_amount:,
        updated_at:,
        request_options: {}
      ); end

      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LedgerAccount)
      end
      def delete(id, request_options: {}); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
