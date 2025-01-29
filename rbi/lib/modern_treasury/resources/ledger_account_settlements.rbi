# typed: strong

module ModernTreasury
  module Resources
    class LedgerAccountSettlements
      sig { returns(ModernTreasury::Resources::LedgerAccountSettlements::AccountEntries) }
      attr_reader :account_entries

      sig do
        params(
          params: T.any(
            ModernTreasury::Models::LedgerAccountSettlementCreateParams,
            T::Hash[Symbol, T.anything]
          ),
          contra_ledger_account_id: String,
          settled_ledger_account_id: String,
          allow_either_direction: T.nilable(T::Boolean),
          description: T.nilable(String),
          effective_at_upper_bound: T.nilable(Time),
          metadata: T::Hash[Symbol, String],
          skip_settlement_ledger_transaction: T.nilable(T::Boolean),
          status: T.nilable(Symbol),
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LedgerAccountSettlement)
      end
      def create(
        params,
        contra_ledger_account_id:,
        settled_ledger_account_id:,
        allow_either_direction:,
        description:,
        effective_at_upper_bound:,
        metadata:,
        skip_settlement_ledger_transaction:,
        status:,
        request_options: {}
      ); end

      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LedgerAccountSettlement)
      end
      def retrieve(id, request_options: {}); end

      sig do
        params(
          id: String,
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          status: Symbol,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LedgerAccountSettlement)
      end
      def update(id, description:, metadata:, status:, request_options: {}); end

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
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Page[ModernTreasury::Models::LedgerAccountSettlement])
      end
      def list(
        id:,
        after_cursor:,
        created_at:,
        ledger_id:,
        ledger_transaction_id:,
        metadata:,
        per_page:,
        settled_ledger_account_id:,
        settlement_entry_direction:,
        updated_at:,
        request_options: {}
      ); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
