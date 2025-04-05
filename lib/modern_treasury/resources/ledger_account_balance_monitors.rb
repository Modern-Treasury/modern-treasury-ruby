# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerAccountBalanceMonitors
      # Create a ledger account balance monitor.
      #
      # @overload create(alert_condition:, ledger_account_id:, description: nil, metadata: nil, request_options: {})
      #
      # @param alert_condition [ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams::AlertCondition]
      # @param ledger_account_id [String]
      # @param description [String]
      # @param metadata [Hash{Symbol=>String}]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccountBalanceMonitor]
      #
      # @see ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams
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
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccountBalanceMonitor]
      #
      # @see ModernTreasury::Models::LedgerAccountBalanceMonitorRetrieveParams
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
      # @overload update(id, description: nil, metadata: nil, request_options: {})
      #
      # @param id [String]
      # @param description [String]
      # @param metadata [Hash{Symbol=>String}]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccountBalanceMonitor]
      #
      # @see ModernTreasury::Models::LedgerAccountBalanceMonitorUpdateParams
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
      # @overload list(id: nil, after_cursor: nil, ledger_account_id: nil, metadata: nil, per_page: nil, request_options: {})
      #
      # @param id [Array<String>]
      # @param after_cursor [String, nil]
      # @param ledger_account_id [String]
      # @param metadata [Hash{Symbol=>String}]
      # @param per_page [Integer]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::LedgerAccountBalanceMonitor>]
      #
      # @see ModernTreasury::Models::LedgerAccountBalanceMonitorListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::LedgerAccountBalanceMonitorListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/ledger_account_balance_monitors",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Models::LedgerAccountBalanceMonitor,
          options: options
        )
      end

      # Delete a ledger account balance monitor.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccountBalanceMonitor]
      #
      # @see ModernTreasury::Models::LedgerAccountBalanceMonitorDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/ledger_account_balance_monitors/%1$s", id],
          model: ModernTreasury::Models::LedgerAccountBalanceMonitor,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
