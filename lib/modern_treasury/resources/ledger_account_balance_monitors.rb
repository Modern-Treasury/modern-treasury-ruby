# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerAccountBalanceMonitors
      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams} for more
      # details.
      #
      # Create a ledger account balance monitor.
      #
      # @overload create(alert_condition:, ledger_account_id:, description: nil, metadata: nil, request_options: {})
      #
      # @param alert_condition [ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams::AlertCondition] Describes the condition that must be satisfied for the monitor to be triggered.
      #
      # @param ledger_account_id [String] The ledger account associated with this balance monitor.
      #
      # @param description [String] An optional, free-form description for internal use.
      #
      # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccountBalanceMonitor]
      #
      # @see ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams
      def create(params)
        parsed, options = ModernTreasury::LedgerAccountBalanceMonitorCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/ledger_account_balance_monitors",
          body: parsed,
          model: ModernTreasury::LedgerAccountBalanceMonitor,
          options: options
        )
      end

      # Get details on a single ledger account balance monitor.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccountBalanceMonitor]
      #
      # @see ModernTreasury::Models::LedgerAccountBalanceMonitorRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/ledger_account_balance_monitors/%1$s", id],
          model: ModernTreasury::LedgerAccountBalanceMonitor,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerAccountBalanceMonitorUpdateParams} for more
      # details.
      #
      # Update a ledger account balance monitor.
      #
      # @overload update(id, description: nil, metadata: nil, request_options: {})
      #
      # @param id [String] id
      #
      # @param description [String] An optional, free-form description for internal use.
      #
      # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccountBalanceMonitor]
      #
      # @see ModernTreasury::Models::LedgerAccountBalanceMonitorUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::LedgerAccountBalanceMonitorUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/ledger_account_balance_monitors/%1$s", id],
          body: parsed,
          model: ModernTreasury::LedgerAccountBalanceMonitor,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerAccountBalanceMonitorListParams} for more
      # details.
      #
      # Get a list of ledger account balance monitors.
      #
      # @overload list(id: nil, after_cursor: nil, ledger_account_id: nil, metadata: nil, per_page: nil, request_options: {})
      #
      # @param id [Array<String>] If you have specific IDs to retrieve in bulk, you can pass them as query paramet
      #
      # @param after_cursor [String, nil]
      #
      # @param ledger_account_id [String] Query the balance monitors for a single ledger account.
      #
      # @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #
      # @param per_page [Integer]
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::LedgerAccountBalanceMonitor>]
      #
      # @see ModernTreasury::Models::LedgerAccountBalanceMonitorListParams
      def list(params = {})
        parsed, options = ModernTreasury::LedgerAccountBalanceMonitorListParams.dump_request(params)
        query = ModernTreasury::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "api/ledger_account_balance_monitors",
          query: query,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::LedgerAccountBalanceMonitor,
          options: options
        )
      end

      # Delete a ledger account balance monitor.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccountBalanceMonitor]
      #
      # @see ModernTreasury::Models::LedgerAccountBalanceMonitorDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/ledger_account_balance_monitors/%1$s", id],
          model: ModernTreasury::LedgerAccountBalanceMonitor,
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
