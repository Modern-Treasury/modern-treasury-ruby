# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerAccountSettlements
      class AccountEntries
        # Add ledger entries to a draft ledger account settlement.
        #
        # @overload update(id, ledger_entry_ids:, request_options: {})
        #
        # @param id [String]
        # @param ledger_entry_ids [Array<String>, nil]
        # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see ModernTreasury::Models::LedgerAccountSettlements::AccountEntryUpdateParams
        def update(id, params)
          parsed, options =
            ModernTreasury::Models::LedgerAccountSettlements::AccountEntryUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["api/ledger_account_settlements/%1$s/ledger_entries", id],
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # Remove ledger entries from a draft ledger account settlement.
        #
        # @overload delete(id, ledger_entry_ids:, request_options: {})
        #
        # @param id [String]
        # @param ledger_entry_ids [Array<String>, nil]
        # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see ModernTreasury::Models::LedgerAccountSettlements::AccountEntryDeleteParams
        def delete(id, params)
          parsed, options =
            ModernTreasury::Models::LedgerAccountSettlements::AccountEntryDeleteParams.dump_request(params)
          @client.request(
            method: :delete,
            path: ["api/ledger_account_settlements/%1$s/ledger_entries", id],
            body: parsed,
            model: NilClass,
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
end
