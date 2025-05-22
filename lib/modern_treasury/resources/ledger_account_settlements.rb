# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerAccountSettlements
      # @return [ModernTreasury::Resources::LedgerAccountSettlements::AccountEntries]
      attr_reader :account_entries

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerAccountSettlementCreateParams} for more details.
      #
      # Create a ledger account settlement.
      #
      # @overload create(contra_ledger_account_id:, settled_ledger_account_id:, allow_either_direction: nil, description: nil, effective_at_upper_bound: nil, metadata: nil, skip_settlement_ledger_transaction: nil, status: nil, request_options: {})
      #
      # @param contra_ledger_account_id [String] The id of the contra ledger account that sends to or receives funds from the set
      #
      # @param settled_ledger_account_id [String] The id of the settled ledger account whose ledger entries are queried against, a
      #
      # @param allow_either_direction [Boolean, nil] If true, the settlement amount and settlement_entry_direction will bring the set
      #
      # @param description [String, nil] The description of the ledger account settlement.
      #
      # @param effective_at_upper_bound [Time, nil] The exclusive upper bound of the effective_at timestamp of the ledger entries to
      #
      # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      # @param skip_settlement_ledger_transaction [Boolean, nil] It is set to `false` by default. It should be set to `true` when migrating exist
      #
      # @param status [Symbol, ModernTreasury::Models::LedgerAccountSettlementCreateParams::Status, nil] The status of the ledger account settlement. It is set to `pending` by default.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccountSettlement]
      #
      # @see ModernTreasury::Models::LedgerAccountSettlementCreateParams
      def create(params)
        parsed, options = ModernTreasury::LedgerAccountSettlementCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/ledger_account_settlements",
          body: parsed,
          model: ModernTreasury::LedgerAccountSettlement,
          options: options
        )
      end

      # Get details on a single ledger account settlement.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccountSettlement]
      #
      # @see ModernTreasury::Models::LedgerAccountSettlementRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/ledger_account_settlements/%1$s", id],
          model: ModernTreasury::LedgerAccountSettlement,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerAccountSettlementUpdateParams} for more details.
      #
      # Update the details of a ledger account settlement.
      #
      # @overload update(id, description: nil, metadata: nil, status: nil, request_options: {})
      #
      # @param id [String] id
      #
      # @param description [String, nil] The description of the ledger account settlement.
      #
      # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      # @param status [Symbol, ModernTreasury::Models::LedgerAccountSettlementUpdateParams::Status] To post a pending ledger account settlement, use `posted`. To archive a pending
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LedgerAccountSettlement]
      #
      # @see ModernTreasury::Models::LedgerAccountSettlementUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::LedgerAccountSettlementUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/ledger_account_settlements/%1$s", id],
          body: parsed,
          model: ModernTreasury::LedgerAccountSettlement,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LedgerAccountSettlementListParams} for more details.
      #
      # Get a list of ledger account settlements.
      #
      # @overload list(id: nil, after_cursor: nil, created_at: nil, ledger_id: nil, ledger_transaction_id: nil, metadata: nil, per_page: nil, settled_ledger_account_id: nil, settlement_entry_direction: nil, updated_at: nil, request_options: {})
      #
      # @param id [Array<String>] If you have specific IDs to retrieve in bulk, you can pass them as query paramet
      #
      # @param after_cursor [String, nil]
      #
      # @param created_at [Hash{Symbol=>Time}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the cre
      #
      # @param ledger_id [String]
      #
      # @param ledger_transaction_id [String]
      #
      # @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #
      # @param per_page [Integer]
      #
      # @param settled_ledger_account_id [String]
      #
      # @param settlement_entry_direction [String]
      #
      # @param updated_at [Hash{Symbol=>Time}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the upd
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::LedgerAccountSettlement>]
      #
      # @see ModernTreasury::Models::LedgerAccountSettlementListParams
      def list(params = {})
        parsed, options = ModernTreasury::LedgerAccountSettlementListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/ledger_account_settlements",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::LedgerAccountSettlement,
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
