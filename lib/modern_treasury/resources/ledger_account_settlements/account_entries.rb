# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LedgerAccountSettlements
      class AccountEntries
        # Some parameter documentations has been truncated, see
        # {ModernTreasury::Models::LedgerAccountSettlements::AccountEntryUpdateParams} for
        # more details.
        #
        # Add ledger entries to a draft ledger account settlement.
        #
        # @overload update(id, ledger_entry_ids:, request_options: {})
        #
        # @param id [String] id
        #
        # @param ledger_entry_ids [Array<String>, nil] The ids of the ledger entries that are to be added or removed from the ledger ac
        #
        # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see ModernTreasury::Models::LedgerAccountSettlements::AccountEntryUpdateParams
        def update(id, params)
          parsed, options = ModernTreasury::LedgerAccountSettlements::AccountEntryUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["api/ledger_account_settlements/%1$s/ledger_entries", id],
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {ModernTreasury::Models::LedgerAccountSettlements::AccountEntryDeleteParams} for
        # more details.
        #
        # Remove ledger entries from a draft ledger account settlement.
        #
        # @overload delete(id, ledger_entry_ids:, request_options: {})
        #
        # @param id [String] id
        #
        # @param ledger_entry_ids [Array<String>, nil] The ids of the ledger entries that are to be added or removed from the ledger ac
        #
        # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see ModernTreasury::Models::LedgerAccountSettlements::AccountEntryDeleteParams
        def delete(id, params)
          parsed, options = ModernTreasury::LedgerAccountSettlements::AccountEntryDeleteParams.dump_request(params)
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
