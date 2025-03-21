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
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
        )
          .returns(ModernTreasury::Models::LedgerAccountBalanceMonitor)
      end
      def create(
        # Describes the condition that must be satisfied for the monitor to be triggered.
        alert_condition:,
        # The ledger account associated with this balance monitor.
        ledger_account_id:,
        # An optional, free-form description for internal use.
        description: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        metadata: nil,
        request_options: {}
      )
      end

      # Get details on a single ledger account balance monitor.
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
        )
          .returns(ModernTreasury::Models::LedgerAccountBalanceMonitor)
      end
      def retrieve(
        # id
        id,
        request_options: {}
      )
      end

      # Update a ledger account balance monitor.
      sig do
        params(
          id: String,
          description: String,
          metadata: T::Hash[Symbol, String],
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
        )
          .returns(ModernTreasury::Models::LedgerAccountBalanceMonitor)
      end
      def update(
        # id
        id,
        # An optional, free-form description for internal use.
        description: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        metadata: nil,
        request_options: {}
      )
      end

      # Get a list of ledger account balance monitors.
      sig do
        params(
          id: T::Array[String],
          after_cursor: T.nilable(String),
          ledger_account_id: String,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
        )
          .returns(ModernTreasury::Page[ModernTreasury::Models::LedgerAccountBalanceMonitor])
      end
      def list(
        # If you have specific IDs to retrieve in bulk, you can pass them as query
        #   parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
        id: nil,
        after_cursor: nil,
        # Query the balance monitors for a single ledger account.
        ledger_account_id: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        #   parameters.
        metadata: nil,
        per_page: nil,
        request_options: {}
      )
      end

      # Delete a ledger account balance monitor.
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
        )
          .returns(ModernTreasury::Models::LedgerAccountBalanceMonitor)
      end
      def delete(
        # id
        id,
        request_options: {}
      )
      end

      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
