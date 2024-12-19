# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerAccountSettlements
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end

      # Create a ledger account settlement.
      #
      # @param params [Hash{Symbol => Object}, ModernTreasury::Models::LedgerAccountSettlementCreateParams] Attributes to send in this request.
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
      #   @option params [Hash{Symbol => String}, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @option params [Boolean, nil] :skip_settlement_ledger_transaction It is set to `false` by default. It should be set to `true` when migrating
      #     existing settlements.
      #
      #   @option params [Symbol, ModernTreasury::Models::LedgerAccountSettlementCreateParams::Status, nil] :status The status of the ledger account settlement. It is set to `pending` by default.
      #     To post a ledger account settlement at creation, use `posted`.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerAccountSettlement]
      def create(params = {}, opts = {})
        parsed = ModernTreasury::Models::LedgerAccountSettlementCreateParams.dump(params)
        req = {
          method: :post,
          path: "/api/ledger_account_settlements",
          body: parsed,
          model: ModernTreasury::Models::LedgerAccountSettlement
        }
        @client.request(req, opts)
      end

      # Get details on a single ledger account settlement.
      #
      # @param id [String] id
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerAccountSettlement]
      def retrieve(id, opts = {})
        req = {
          method: :get,
          path: "/api/ledger_account_settlements/#{id}",
          model: ModernTreasury::Models::LedgerAccountSettlement
        }
        @client.request(req, opts)
      end

      # Update the details of a ledger account settlement.
      #
      # @param id [String] id
      #
      # @param params [Hash{Symbol => Object}, ModernTreasury::Models::LedgerAccountSettlementUpdateParams] Attributes to send in this request.
      #
      #   @option params [String, nil] :description The description of the ledger account settlement.
      #
      #   @option params [Hash{Symbol => String}, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @option params [Symbol, ModernTreasury::Models::LedgerAccountSettlementUpdateParams::Status, nil] :status To post a pending ledger account settlement, use `posted`. To archive a pending
      #     ledger transaction, use `archived`.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LedgerAccountSettlement]
      def update(id, params = {}, opts = {})
        parsed = ModernTreasury::Models::LedgerAccountSettlementUpdateParams.dump(params)
        req = {
          method: :patch,
          path: "/api/ledger_account_settlements/#{id}",
          body: parsed,
          model: ModernTreasury::Models::LedgerAccountSettlement
        }
        @client.request(req, opts)
      end

      # Get a list of ledger account settlements.
      #
      # @param params [Hash{Symbol => Object}, ModernTreasury::Models::LedgerAccountSettlementListParams] Attributes to send in this request.
      #
      #   @option params [Array<String>, nil] :id If you have specific IDs to retrieve in bulk, you can pass them as query
      #     parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #
      #   @option params [String, nil] :after_cursor
      #
      #   @option params [Hash{Symbol => Time}, nil] :created_at Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #     created at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #     created_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      #   @option params [String, nil] :ledger_id
      #
      #   @option params [String, nil] :ledger_transaction_id
      #
      #   @option params [Hash{Symbol => String}, nil] :metadata For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #
      #   @option params [Integer, nil] :per_page
      #
      #   @option params [String, nil] :settled_ledger_account_id
      #
      #   @option params [String, nil] :settlement_entry_direction
      #
      #   @option params [Hash{Symbol => Time}, nil] :updated_at Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #     updated at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #     updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::LedgerAccountSettlement>]
      def list(params = {}, opts = {})
        parsed = ModernTreasury::Models::LedgerAccountSettlementListParams.dump(params)
        req = {
          method: :get,
          path: "/api/ledger_account_settlements",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::LedgerAccountSettlement
        }
        @client.request(req, opts)
      end
    end
  end
end
