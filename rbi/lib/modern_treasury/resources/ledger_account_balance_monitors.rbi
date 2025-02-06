# typed: strong

module ModernTreasury
  module Resources
    class LedgerAccountBalanceMonitors
      sig do
        params(
          alert_condition: ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams::AlertCondition,
          ledger_account_id: String,
          description: String,
          metadata: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LedgerAccountBalanceMonitor)
      end
      def create(alert_condition:, ledger_account_id:, description: nil, metadata: nil, request_options: {})
      end

      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LedgerAccountBalanceMonitor)
      end
      def retrieve(id, request_options: {}); end

      sig do
        params(
          id: String,
          description: String,
          metadata: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LedgerAccountBalanceMonitor)
      end
      def update(id, description: nil, metadata: nil, request_options: {}); end

      sig do
        params(
          id: T::Array[String],
          after_cursor: T.nilable(String),
          ledger_account_id: String,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Page[ModernTreasury::Models::LedgerAccountBalanceMonitor])
      end
      def list(
        id: nil,
        after_cursor: nil,
        ledger_account_id: nil,
        metadata: nil,
        per_page: nil,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LedgerAccountBalanceMonitor)
      end
      def delete(id, request_options: {}); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
