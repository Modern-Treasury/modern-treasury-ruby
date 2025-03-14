# typed: strong

module ModernTreasury
  module Resources
    class LedgerAccountBalanceMonitors
      # Create a ledger account balance monitor.
      sig do
        params(
          alert_condition: ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams::AlertCondition,
          ledger_account_id: String,
          description: String,
          metadata: T::Hash[Symbol, String],
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::LedgerAccountBalanceMonitor)
      end
      def create(alert_condition:, ledger_account_id:, description: nil, metadata: nil, request_options: {})
      end

      # Get details on a single ledger account balance monitor.
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::LedgerAccountBalanceMonitor)
      end
      def retrieve(id, request_options: {})
      end

      # Update a ledger account balance monitor.
      sig do
        params(
          id: String,
          description: String,
          metadata: T::Hash[Symbol, String],
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::LedgerAccountBalanceMonitor)
      end
      def update(id, description: nil, metadata: nil, request_options: {})
      end

      # Get a list of ledger account balance monitors.
      sig do
        params(
          id: T::Array[String],
          after_cursor: T.nilable(String),
          ledger_account_id: String,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Page[ModernTreasury::Models::LedgerAccountBalanceMonitor])
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

      # Delete a ledger account balance monitor.
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::LedgerAccountBalanceMonitor)
      end
      def delete(id, request_options: {})
      end

      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
