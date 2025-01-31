# typed: strong

module ModernTreasury
  module Resources
    class LedgerEventHandlers
      sig do
        params(
          ledger_transaction_template: ModernTreasury::Models::LedgerEventHandlerCreateParams::LedgerTransactionTemplate,
          name: String,
          conditions: T.nilable(ModernTreasury::Models::LedgerEventHandlerCreateParams::Conditions),
          description: T.nilable(String),
          ledger_id: String,
          metadata: T.nilable(T::Hash[Symbol, String]),
          variables: T.nilable(T::Hash[Symbol, ModernTreasury::Models::LedgerEventHandlerVariable]),
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LedgerEventHandler)
      end
      def create(
        ledger_transaction_template:,
        name:,
        conditions:,
        description:,
        ledger_id:,
        metadata:,
        variables:,
        request_options: {}
      ); end

      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LedgerEventHandler)
      end
      def retrieve(id, request_options: {}); end

      sig do
        params(
          after_cursor: T.nilable(String),
          created_at: T::Hash[Symbol, Time],
          metadata: T::Hash[Symbol, String],
          name: String,
          per_page: Integer,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Page[ModernTreasury::Models::LedgerEventHandler])
      end
      def list(after_cursor:, created_at:, metadata:, name:, per_page:, request_options: {}); end

      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LedgerEventHandler)
      end
      def delete(id, request_options: {}); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
