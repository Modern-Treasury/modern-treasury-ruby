# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerAccountSettlements
      # @return [ModernTreasury::Resources::LedgerAccountSettlements::AccountEntries]
      attr_reader :account_entries

      # Create a ledger account settlement.
      #
      # @overload create(contra_ledger_account_id:, settled_ledger_account_id:, allow_either_direction: nil, description: nil, effective_at_upper_bound: nil, metadata: nil, skip_settlement_ledger_transaction: nil, status: nil, request_options: {})
      #
      # @param contra_ledger_account_id [String]
      # @param settled_ledger_account_id [String]
      # @param allow_either_direction [Boolean, nil]
      # @param description [String, nil]
      # @param effective_at_upper_bound [Time, nil]
      # @param metadata [Hash{Symbol=>String}]
      # @param skip_settlement_ledger_transaction [Boolean, nil]
      # @param status [Symbol, ModernTreasury::Models::LedgerAccountSettlementCreateParams::Status, nil]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccountSettlement]
      #
      # @see ModernTreasury::Models::LedgerAccountSettlementCreateParams
      def create(params)
        parsed, options = ModernTreasury::Models::LedgerAccountSettlementCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/ledger_account_settlements",
          body: parsed,
          model: ModernTreasury::Models::LedgerAccountSettlement,
          options: options
        )
      end

      # Get details on a single ledger account settlement.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccountSettlement]
      #
      # @see ModernTreasury::Models::LedgerAccountSettlementRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/ledger_account_settlements/%1$s", id],
          model: ModernTreasury::Models::LedgerAccountSettlement,
          options: params[:request_options]
        )
      end

      # Update the details of a ledger account settlement.
      #
      # @overload update(id, description: nil, metadata: nil, status: nil, request_options: {})
      #
      # @param id [String]
      # @param description [String, nil]
      # @param metadata [Hash{Symbol=>String}]
      # @param status [Symbol, ModernTreasury::Models::LedgerAccountSettlementUpdateParams::Status]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccountSettlement]
      #
      # @see ModernTreasury::Models::LedgerAccountSettlementUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::Models::LedgerAccountSettlementUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/ledger_account_settlements/%1$s", id],
          body: parsed,
          model: ModernTreasury::Models::LedgerAccountSettlement,
          options: options
        )
      end

      # Get a list of ledger account settlements.
      #
      # @overload list(id: nil, after_cursor: nil, created_at: nil, ledger_id: nil, ledger_transaction_id: nil, metadata: nil, per_page: nil, settled_ledger_account_id: nil, settlement_entry_direction: nil, updated_at: nil, request_options: {})
      #
      # @param id [Array<String>]
      # @param after_cursor [String, nil]
      # @param created_at [Hash{Symbol=>Time}]
      # @param ledger_id [String]
      # @param ledger_transaction_id [String]
      # @param metadata [Hash{Symbol=>String}]
      # @param per_page [Integer]
      # @param settled_ledger_account_id [String]
      # @param settlement_entry_direction [String]
      # @param updated_at [Hash{Symbol=>Time}]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::LedgerAccountSettlement>]
      #
      # @see ModernTreasury::Models::LedgerAccountSettlementListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::LedgerAccountSettlementListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/ledger_account_settlements",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Models::LedgerAccountSettlement,
          options: options
        )
      end

      # @api private
      #
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
        @account_entries =
          ModernTreasury::Resources::LedgerAccountSettlements::AccountEntries.new(client: client)
      end
    end
  end
end
