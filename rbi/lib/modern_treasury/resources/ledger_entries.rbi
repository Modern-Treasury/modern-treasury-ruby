# typed: strong

module ModernTreasury
  module Resources
    class LedgerEntries
      sig do
        params(
          id: String,
          show_balances: T::Boolean,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::LedgerEntry)
      end
      def retrieve(id, show_balances: nil, request_options: {})
      end

      sig do
        params(
          id: String,
          metadata: T::Hash[Symbol, String],
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::LedgerEntry)
      end
      def update(id, metadata: nil, request_options: {})
      end

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
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Page[ModernTreasury::Models::LedgerEntry])
      end
      def list(
        id: nil,
        after_cursor: nil,
        as_of_lock_version: nil,
        direction: nil,
        effective_at: nil,
        effective_date: nil,
        ledger_account_category_id: nil,
        ledger_account_id: nil,
        ledger_account_lock_version: nil,
        ledger_account_payout_id: nil,
        ledger_account_settlement_id: nil,
        ledger_account_statement_id: nil,
        ledger_transaction_id: nil,
        metadata: nil,
        order_by: nil,
        per_page: nil,
        show_balances: nil,
        show_deleted: nil,
        status: nil,
        updated_at: nil,
        request_options: {}
      )
      end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:)
      end
    end
  end
end
