# typed: strong

module ModernTreasury
  module Resources
    class VirtualAccounts
      sig do
        params(
          internal_account_id: String,
          name: String,
          account_details: T::Array[ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail],
          counterparty_id: String,
          credit_ledger_account_id: String,
          debit_ledger_account_id: String,
          description: String,
          ledger_account: ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount,
          metadata: T::Hash[Symbol, String],
          routing_details: T::Array[ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail],
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::VirtualAccount)
      end
      def create(
        internal_account_id:,
        name:,
        account_details:,
        counterparty_id:,
        credit_ledger_account_id:,
        debit_ledger_account_id:,
        description:,
        ledger_account:,
        metadata:,
        routing_details:,
        request_options: {}
      ); end

      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::VirtualAccount)
      end
      def retrieve(id, request_options: {}); end

      sig do
        params(
          id: String,
          counterparty_id: String,
          ledger_account_id: String,
          metadata: T::Hash[Symbol, String],
          name: T.nilable(String),
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::VirtualAccount)
      end
      def update(id, counterparty_id:, ledger_account_id:, metadata:, name:, request_options: {}); end

      sig do
        params(
          after_cursor: T.nilable(String),
          counterparty_id: String,
          internal_account_id: String,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Page[ModernTreasury::Models::VirtualAccount])
      end
      def list(
        after_cursor:,
        counterparty_id:,
        internal_account_id:,
        metadata:,
        per_page:,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::VirtualAccount)
      end
      def delete(id, request_options: {}); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
