# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerAccountSettlements
      class AccountEntries
        # Add ledger entries to a draft ledger account settlement.
        #
        # @param id [String] id
        #
        # @param params [ModernTreasury::Models::LedgerAccountSettlements::AccountEntryUpdateParams, Hash{Symbol=>Object}] Attributes to send in this request.
        #
        #   @option params [Array<String>] :ledger_entry_ids The ids of the ledger entries that are to be added or removed from the ledger
        #     account settlement.
        #
        # @param opts [Hash{Symbol=>Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [nil]
        #
        def update(id, params = {}, opts = {})
          parsed = ModernTreasury::Models::LedgerAccountSettlements::AccountEntryUpdateParams.dump(params)
          req = {
            method: :patch,
            path: ["api/ledger_account_settlements/%0s/ledger_entries", id],
            body: parsed,
            model: NilClass
          }
          @client.request(req, opts)
        end

        # Remove ledger entries from a draft ledger account settlement.
        #
        # @param id [String] id
        #
        # @param params [ModernTreasury::Models::LedgerAccountSettlements::AccountEntryDeleteParams, Hash{Symbol=>Object}] Attributes to send in this request.
        #
        #   @option params [Array<Object>] :ledger_entry_ids The ids of the ledger entries that are to be added or removed from the ledger
        #     account settlement.
        #
        # @param opts [Hash{Symbol=>Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [nil]
        #
        def delete(id, params = {}, opts = {})
          parsed = ModernTreasury::Models::LedgerAccountSettlements::AccountEntryDeleteParams.dump(params)
          req = {
            method: :delete,
            path: ["api/ledger_account_settlements/%0s/ledger_entries", id],
            body: parsed,
            model: NilClass
          }
          @client.request(req, opts)
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
