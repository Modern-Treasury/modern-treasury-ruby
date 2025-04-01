# frozen_string_literal: true

module ModernTreasury
  module Models
    module LedgerAccountSettlements
      # @see ModernTreasury::Resources::LedgerAccountSettlements::AccountEntries#update
      class AccountEntryUpdateParams < ModernTreasury::BaseModel
        # @!parse
        #   extend ModernTreasury::Type::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        # @!attribute ledger_entry_ids
        #   The ids of the ledger entries that are to be added or removed from the ledger
        #     account settlement.
        #
        #   @return [Array<String>, nil]
        required :ledger_entry_ids, ModernTreasury::ArrayOf[String], nil?: true

        # @!parse
        #   # @param ledger_entry_ids [Array<String>, nil]
        #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(ledger_entry_ids:, request_options: {}, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end
    end
  end
end
