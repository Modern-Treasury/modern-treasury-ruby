# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerAccountBalanceMonitors
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end

      # Create a ledger account balance monitor.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [AlertCondition] :alert_condition Describes the condition that must be satisfied for the monitor to be triggered.
      # @option params [String] :ledger_account_id The ledger account associated with this balance monitor.
      # @option params [String, nil] :description An optional, free-form description for internal use.
      # @option params [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerAccountBalanceMonitor]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/api/ledger_account_balance_monitors",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: ModernTreasury::Models::LedgerAccountBalanceMonitor
        }
        @client.request(req, opts)
      end

      # Get details on a single ledger account balance monitor.
      #
      # @param id [String] id
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerAccountBalanceMonitor]
      def retrieve(id, opts = {})
        req = {
          method: :get,
          path: "/api/ledger_account_balance_monitors/#{id}",
          model: ModernTreasury::Models::LedgerAccountBalanceMonitor
        }
        @client.request(req, opts)
      end

      # Update a ledger account balance monitor.
      #
      # @param id [String] id
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :description An optional, free-form description for internal use.
      # @option params [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerAccountBalanceMonitor]
      def update(id, params = {}, opts = {})
        req = {
          method: :patch,
          path: "/api/ledger_account_balance_monitors/#{id}",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: ModernTreasury::Models::LedgerAccountBalanceMonitor
        }
        @client.request(req, opts)
      end

      # Get a list of ledger account balance monitors.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Array<String>, nil] :id If you have specific IDs to retrieve in bulk, you can pass them as query
      #   parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      # @option params [String, nil] :after_cursor
      # @option params [String, nil] :ledger_account_id Query the balance monitors for a single ledger account.
      # @option params [Hash, nil] :metadata For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      # @option params [Integer, nil] :per_page
      #
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::LedgerAccountBalanceMonitor>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/api/ledger_account_balance_monitors",
          query: params,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::LedgerAccountBalanceMonitor
        }
        @client.request(req, opts)
      end

      # Delete a ledger account balance monitor.
      #
      # @param id [String] id
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerAccountBalanceMonitor]
      def delete(id, opts = {})
        req = {
          method: :delete,
          path: "/api/ledger_account_balance_monitors/#{id}",
          model: ModernTreasury::Models::LedgerAccountBalanceMonitor
        }
        @client.request(req, opts)
      end
    end
  end
end
