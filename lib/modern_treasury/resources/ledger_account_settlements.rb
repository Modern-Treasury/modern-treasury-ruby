# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerAccountSettlements
      # @return [ModernTreasury::Resources::LedgerAccountSettlements::AccountEntries]
      attr_reader :account_entries

      # Create a ledger account settlement.
      #
      # @param params [ModernTreasury::Models::LedgerAccountSettlementCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :contra_ledger_account_id The id of the contra ledger account that sends to or receives funds from the
      #     settled ledger account.
      #
      #   @option params [String] :settled_ledger_account_id The id of the settled ledger account whose ledger entries are queried against,
      #     and its balance is reduced as a result.
      #
      #   @option params [Boolean, nil] :allow_either_direction If true, the settlement amount and settlement_entry_direction will bring the
      #     settlement ledger account's balance closer to zero, even if the balance is
      #     negative.
      #
      #   @option params [String, nil] :description The description of the ledger account settlement.
      #
      #   @option params [Time, nil] :effective_at_upper_bound The exclusive upper bound of the effective_at timestamp of the ledger entries to
      #     be included in the ledger account settlement. The default value is the
      #     created_at timestamp of the ledger account settlement.
      #
      #   @option params [Hash{Symbol=>String}] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @option params [Boolean, nil] :skip_settlement_ledger_transaction It is set to `false` by default. It should be set to `true` when migrating
      #     existing settlements.
      #
      #   @option params [Symbol, ModernTreasury::Models::LedgerAccountSettlementCreateParams::Status, nil] :status The status of the ledger account settlement. It is set to `pending` by default.
      #     To post a ledger account settlement at creation, use `posted`.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::LedgerAccountSettlement]
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
      # @param id [String] id
      #
      # @param params [ModernTreasury::Models::LedgerAccountSettlementRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::LedgerAccountSettlement]
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/ledger_account_settlements/%0s", id],
          model: ModernTreasury::Models::LedgerAccountSettlement,
          options: params[:request_options]
        )
      end

      # Update the details of a ledger account settlement.
      #
      # @param id [String] id
      #
      # @param params [ModernTreasury::Models::LedgerAccountSettlementUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :description The description of the ledger account settlement.
      #
      #   @option params [Hash{Symbol=>String}] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @option params [Symbol, ModernTreasury::Models::LedgerAccountSettlementUpdateParams::Status] :status To post a pending ledger account settlement, use `posted`. To archive a pending
      #     ledger transaction, use `archived`.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::LedgerAccountSettlement]
      def update(id, params = {})
        parsed, options = ModernTreasury::Models::LedgerAccountSettlementUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/ledger_account_settlements/%0s", id],
          body: parsed,
          model: ModernTreasury::Models::LedgerAccountSettlement,
          options: options
        )
      end

      # Get a list of ledger account settlements.
      #
      # @param params [ModernTreasury::Models::LedgerAccountSettlementListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<String>] :id If you have specific IDs to retrieve in bulk, you can pass them as query
      #     parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #
      #   @option params [String, nil] :after_cursor
      #
      #   @option params [Hash{Symbol=>Time}] :created_at Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #     created at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #     created_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      #   @option params [String] :ledger_id
      #
      #   @option params [String] :ledger_transaction_id
      #
      #   @option params [Hash{Symbol=>String}] :metadata For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #
      #   @option params [Integer] :per_page
      #
      #   @option params [String] :settled_ledger_account_id
      #
      #   @option params [String] :settlement_entry_direction
      #
      #   @option params [Hash{Symbol=>Time}] :updated_at Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #     updated at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #     updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::LedgerAccountSettlement>]
      def list(params = {})
        parsed, options = ModernTreasury::Models::LedgerAccountSettlementListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/ledger_account_settlements",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::LedgerAccountSettlement,
          options: options
        )
      end

      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
        @account_entries =
          ModernTreasury::Resources::LedgerAccountSettlements::AccountEntries.new(client: client)
      end
    end
  end
end
