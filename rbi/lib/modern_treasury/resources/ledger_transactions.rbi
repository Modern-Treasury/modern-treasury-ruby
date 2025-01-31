# typed: strong

module ModernTreasury
  module Resources
    class LedgerTransactions
      sig { returns(ModernTreasury::Resources::LedgerTransactions::Versions) }
      attr_reader :versions

      sig do
        params(
          ledger_entries: T::Array[ModernTreasury::Models::LedgerTransactionCreateParams::LedgerEntry],
          description: T.nilable(String),
          effective_at: Time,
          effective_date: Date,
          external_id: String,
          ledgerable_id: String,
          ledgerable_type: Symbol,
          metadata: T::Hash[Symbol, String],
          status: Symbol,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LedgerTransaction)
      end
      def create(
        ledger_entries:,
        description:,
        effective_at:,
        effective_date:,
        external_id:,
        ledgerable_id:,
        ledgerable_type:,
        metadata:,
        status:,
        request_options: {}
      ); end

      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LedgerTransaction)
      end
      def retrieve(id, request_options: {}); end

      sig do
        params(
          id: String,
          description: T.nilable(String),
          effective_at: Time,
          ledger_entries: T::Array[ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerEntry],
          ledgerable_id: String,
          ledgerable_type: Symbol,
          metadata: T::Hash[Symbol, String],
          status: Symbol,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LedgerTransaction)
      end
      def update(
        id,
        description:,
        effective_at:,
        ledger_entries:,
        ledgerable_id:,
        ledgerable_type:,
        metadata:,
        status:,
        request_options: {}
      ); end

      sig do
        params(
          id: T::Array[String],
          after_cursor: T.nilable(String),
          effective_at: T::Hash[Symbol, Time],
          effective_date: T::Hash[Symbol, Time],
          external_id: String,
          ledger_account_category_id: String,
          ledger_account_id: String,
          ledger_account_settlement_id: String,
          ledger_id: String,
          ledgerable_id: String,
          ledgerable_type: Symbol,
          metadata: T::Hash[Symbol, String],
          order_by: ModernTreasury::Models::LedgerTransactionListParams::OrderBy,
          partially_posts_ledger_transaction_id: String,
          per_page: Integer,
          posted_at: T::Hash[Symbol, Time],
          reverses_ledger_transaction_id: String,
          status: Symbol,
          updated_at: T::Hash[Symbol, Time],
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Page[ModernTreasury::Models::LedgerTransaction])
      end
      def list(
        id:,
        after_cursor:,
        effective_at:,
        effective_date:,
        external_id:,
        ledger_account_category_id:,
        ledger_account_id:,
        ledger_account_settlement_id:,
        ledger_id:,
        ledgerable_id:,
        ledgerable_type:,
        metadata:,
        order_by:,
        partially_posts_ledger_transaction_id:,
        per_page:,
        posted_at:,
        reverses_ledger_transaction_id:,
        status:,
        updated_at:,
        request_options: {}
      ); end

      sig do
        params(
          id: String,
          posted_ledger_entries: T::Array[ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry],
          description: String,
          effective_at: Time,
          metadata: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LedgerTransaction)
      end
      def create_partial_post(
        id,
        posted_ledger_entries:,
        description:,
        effective_at:,
        metadata:,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          description: String,
          effective_at: T.nilable(Time),
          external_id: String,
          ledgerable_id: String,
          ledgerable_type: Symbol,
          metadata: T::Hash[Symbol, String],
          status: Symbol,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LedgerTransaction)
      end
      def create_reversal(
        id,
        description:,
        effective_at:,
        external_id:,
        ledgerable_id:,
        ledgerable_type:,
        metadata:,
        status:,
        request_options: {}
      ); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
