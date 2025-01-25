# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerAccountSettlements
      class AccountEntries
        # Add ledger entries to a draft ledger account settlement.
        #
        # @param id [String] id
        #
        # @param params [ModernTreasury::Models::LedgerAccountSettlements::AccountEntryUpdateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :ledger_entry_ids The ids of the ledger entries that are to be added or removed from the ledger
        #     account settlement.
        #
        #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [nil]
        #
        def update(id, params)
          parsed, options = ModernTreasury::Models::LedgerAccountSettlements::AccountEntryUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["api/ledger_account_settlements/%0s/ledger_entries", id],
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # Remove ledger entries from a draft ledger account settlement.
        #
        # @param id [String] id
        #
        # @param params [ModernTreasury::Models::LedgerAccountSettlements::AccountEntryDeleteParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<Object>] :ledger_entry_ids The ids of the ledger entries that are to be added or removed from the ledger
        #     account settlement.
        #
        #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [nil]
        #
        def delete(id, params)
          parsed, options = ModernTreasury::Models::LedgerAccountSettlements::AccountEntryDeleteParams.dump_request(params)
          @client.request(
            method: :delete,
            path: ["api/ledger_account_settlements/%0s/ledger_entries", id],
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # @param client [ModernTreasury::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
