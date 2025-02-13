# typed: strong

module ModernTreasury
  module Resources
    class LedgerAccountSettlements
      sig { returns(ModernTreasury::Resources::LedgerAccountSettlements::AccountEntries) }
      def account_entries
      end

      sig do
        params(
          contra_ledger_account_id: String,
          settled_ledger_account_id: String,
          allow_either_direction: T.nilable(T::Boolean),
          description: T.nilable(String),
          effective_at_upper_bound: T.nilable(Time),
          metadata: T::Hash[Symbol, String],
          skip_settlement_ledger_transaction: T.nilable(T::Boolean),
          status: T.nilable(Symbol),
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Models::LedgerAccountSettlement)
      end
      def create(
        contra_ledger_account_id:,
        settled_ledger_account_id:,
        allow_either_direction: nil,
        description: nil,
        effective_at_upper_bound: nil,
        metadata: nil,
        skip_settlement_ledger_transaction: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Models::LedgerAccountSettlement)
      end
      def retrieve(id, request_options: {})
      end

      sig do
        params(
          id: String,
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          status: Symbol,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Models::LedgerAccountSettlement)
      end
      def update(id, description: nil, metadata: nil, status: nil, request_options: {})
      end

      sig do
        params(
          id: T::Array[String],
          after_cursor: T.nilable(String),
          created_at: T::Hash[Symbol, Time],
          ledger_id: String,
          ledger_transaction_id: String,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          settled_ledger_account_id: String,
          settlement_entry_direction: String,
          updated_at: T::Hash[Symbol, Time],
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Page[ModernTreasury::Models::LedgerAccountSettlement])
      end
      def list(
        id: nil,
        after_cursor: nil,
        created_at: nil,
        ledger_id: nil,
        ledger_transaction_id: nil,
        metadata: nil,
        per_page: nil,
        settled_ledger_account_id: nil,
        settlement_entry_direction: nil,
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
