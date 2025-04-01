# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerEntries
      # Get details on a single ledger entry.
      #
      # @overload retrieve(id, show_balances: nil, request_options: {})
      #
      # @param id [String]
      # @param show_balances [Boolean]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerEntry]
      #
      # @see ModernTreasury::Models::LedgerEntryRetrieveParams
      def retrieve(id, params = {})
        parsed, options = ModernTreasury::Models::LedgerEntryRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/ledger_entries/%1$s", id],
          query: parsed,
          model: ModernTreasury::Models::LedgerEntry,
          options: options
        )
      end

      # Update the details of a ledger entry.
      #
      # @overload update(id, metadata: nil, request_options: {})
      #
      # @param id [String]
      # @param metadata [Hash{Symbol=>String}]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerEntry]
      #
      # @see ModernTreasury::Models::LedgerEntryUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::Models::LedgerEntryUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/ledger_entries/%1$s", id],
          body: parsed,
          model: ModernTreasury::Models::LedgerEntry,
          options: options
        )
      end

      # Get a list of all ledger entries.
      #
      # @overload list(id: nil, after_cursor: nil, as_of_lock_version: nil, direction: nil, effective_at: nil, effective_date: nil, ledger_account_category_id: nil, ledger_account_id: nil, ledger_account_lock_version: nil, ledger_account_payout_id: nil, ledger_account_settlement_id: nil, ledger_account_statement_id: nil, ledger_transaction_id: nil, metadata: nil, order_by: nil, per_page: nil, show_balances: nil, show_deleted: nil, status: nil, updated_at: nil, request_options: {})
      #
      # @param id [Array<String>]
      # @param after_cursor [String, nil]
      # @param as_of_lock_version [Integer]
      # @param direction [Symbol, ModernTreasury::Models::TransactionDirection]
      # @param effective_at [Hash{Symbol=>Time}]
      # @param effective_date [Hash{Symbol=>Date}]
      # @param ledger_account_category_id [String]
      # @param ledger_account_id [String]
      # @param ledger_account_lock_version [Hash{Symbol=>Integer}]
      # @param ledger_account_payout_id [String]
      # @param ledger_account_settlement_id [String]
      # @param ledger_account_statement_id [String]
      # @param ledger_transaction_id [String]
      # @param metadata [Hash{Symbol=>String}]
      # @param order_by [ModernTreasury::Models::LedgerEntryListParams::OrderBy]
      # @param per_page [Integer]
      # @param show_balances [Boolean]
      # @param show_deleted [Boolean]
      # @param status [Symbol, ModernTreasury::Models::LedgerEntryListParams::Status]
      # @param updated_at [Hash{Symbol=>Time}]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::LedgerEntry>]
      #
      # @see ModernTreasury::Models::LedgerEntryListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::LedgerEntryListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/ledger_entries",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::LedgerEntry,
          options: options
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
