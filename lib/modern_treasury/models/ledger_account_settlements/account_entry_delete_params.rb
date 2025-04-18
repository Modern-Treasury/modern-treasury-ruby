# frozen_string_literal: true

module ModernTreasury
  module Models
    module LedgerAccountSettlements
      # @see ModernTreasury::Resources::LedgerAccountSettlements::AccountEntries#delete
      class AccountEntryDeleteParams < ModernTreasury::Internal::Type::BaseModel
        # @!parse
        #   extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

        # @!attribute ledger_entry_ids
        #   The ids of the ledger entries that are to be added or removed from the ledger
        #   account settlement.
        #
        #   @return [Array<String>, nil]
        required :ledger_entry_ids, ModernTreasury::Internal::Type::ArrayOf[String], nil?: true

        # @!method initialize(ledger_entry_ids:, request_options: {})
        #   @param ledger_entry_ids [Array<String>, nil]
        #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
