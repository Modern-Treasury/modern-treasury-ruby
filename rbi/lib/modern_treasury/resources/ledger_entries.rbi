# typed: strong

module ModernTreasury
  module Resources
    class LedgerEntries
      sig do
        params(
          id: String,
          show_balances: T::Boolean,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LedgerEntry)
      end
      def retrieve(id, show_balances:, request_options: {}); end

      sig do
        params(
          id: String,
          metadata: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LedgerEntry)
      end
      def update(id, metadata:, request_options: {}); end

      sig do
        params(
          id: T::Array[String],
          after_cursor: T.nilable(String),
          as_of_lock_version: Integer,
          direction: Symbol,
          effective_at: T::Hash[Symbol, Time],
          effective_date: T::Hash[Symbol, Date],
          ledger_account_category_id: String,
          ledger_account_id: String,
          ledger_account_lock_version: T::Hash[Symbol, Integer],
          ledger_account_payout_id: String,
          ledger_account_settlement_id: String,
          ledger_account_statement_id: String,
          ledger_transaction_id: String,
          metadata: T::Hash[Symbol, String],
          order_by: ModernTreasury::Models::LedgerEntryListParams::OrderBy,
          per_page: Integer,
          show_balances: T::Boolean,
          show_deleted: T::Boolean,
          status: Symbol,
          updated_at: T::Hash[Symbol, Time],
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Page[ModernTreasury::Models::LedgerEntry])
      end
      def list(
        id:,
        after_cursor:,
        as_of_lock_version:,
        direction:,
        effective_at:,
        effective_date:,
        ledger_account_category_id:,
        ledger_account_id:,
        ledger_account_lock_version:,
        ledger_account_payout_id:,
        ledger_account_settlement_id:,
        ledger_account_statement_id:,
        ledger_transaction_id:,
        metadata:,
        order_by:,
        per_page:,
        show_balances:,
        show_deleted:,
        status:,
        updated_at:,
        request_options: {}
      ); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
