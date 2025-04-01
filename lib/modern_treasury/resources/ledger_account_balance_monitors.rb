# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerAccountBalanceMonitors
      # Create a ledger account balance monitor.
      #
      # @param params [ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams::AlertCondition] :alert_condition Describes the condition that must be satisfied for the monitor to be triggered.
      #
      #   @option params [String] :ledger_account_id The ledger account associated with this balance monitor.
      #
      #   @option params [String] :description An optional, free-form description for internal use.
      #
      #   @option params [Hash{Symbol=>String}] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::LedgerAccountBalanceMonitor]
      def create(params)
        parsed, options = ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/ledger_account_balance_monitors",
          body: parsed,
          model: ModernTreasury::Models::LedgerAccountBalanceMonitor,
          options: options
        )
      end

      # Get details on a single ledger account balance monitor.
      #
      # @param id [String] id
      #
      # @param params [ModernTreasury::Models::LedgerAccountBalanceMonitorRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::LedgerAccountBalanceMonitor]
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/ledger_account_balance_monitors/%1$s", id],
          model: ModernTreasury::Models::LedgerAccountBalanceMonitor,
          options: params[:request_options]
        )
      end

      # Update a ledger account balance monitor.
      #
      # @param id [String] id
      #
      # @param params [ModernTreasury::Models::LedgerAccountBalanceMonitorUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :description An optional, free-form description for internal use.
      #
      #   @option params [Hash{Symbol=>String}] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::LedgerAccountBalanceMonitor]
      def update(id, params = {})
        parsed, options = ModernTreasury::Models::LedgerAccountBalanceMonitorUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/ledger_account_balance_monitors/%1$s", id],
          body: parsed,
          model: ModernTreasury::Models::LedgerAccountBalanceMonitor,
          options: options
        )
      end

      # Get a list of ledger account balance monitors.
      #
      # @param params [ModernTreasury::Models::LedgerAccountBalanceMonitorListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<String>] :id If you have specific IDs to retrieve in bulk, you can pass them as query
      #     parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #
      #   @option params [String, nil] :after_cursor
      #
      #   @option params [String] :ledger_account_id Query the balance monitors for a single ledger account.
      #
      #   @option params [Hash{Symbol=>String}] :metadata For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #
      #   @option params [Integer] :per_page
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::LedgerAccountBalanceMonitor>]
      def list(params = {})
        parsed, options = ModernTreasury::Models::LedgerAccountBalanceMonitorListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/ledger_account_balance_monitors",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::LedgerAccountBalanceMonitor,
          options: options
        )
      end

      # Delete a ledger account balance monitor.
      #
      # @param id [String] id
      #
      # @param params [ModernTreasury::Models::LedgerAccountBalanceMonitorDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::LedgerAccountBalanceMonitor]
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/ledger_account_balance_monitors/%1$s", id],
          model: ModernTreasury::Models::LedgerAccountBalanceMonitor,
          options: params[:request_options]
        )
      end

      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
