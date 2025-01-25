# frozen_string_literal: true

module ModernTreasury
  module Models
    module LedgerAccountSettlements
      class AccountEntryDeleteParams < ModernTreasury::BaseModel
        # @!parse
        #   extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        # @!attribute ledger_entry_ids
        #   The ids of the ledger entries that are to be added or removed from the ledger
        #     account settlement.
        #
        #   @return [Array<Object>]
        required :ledger_entry_ids, ModernTreasury::ArrayOf[ModernTreasury::Unknown], nil?: true

        # @!parse
        #   # @param ledger_entry_ids [Array<Object>]
        #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(ledger_entry_ids:, request_options: {}, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end
    end
  end
end
