# frozen_string_literal: true

module ModernTreasury
  module Models
    module LedgerAccountSettlements
      class AccountEntryUpdateParams < ModernTreasury::BaseModel
        # @!attribute ledger_entry_ids
        #   The ids of the ledger entries that are to be added or removed from the ledger
        #     account settlement.
        #
        #   @return [Array<String>]
        required :ledger_entry_ids, ModernTreasury::ArrayOf[String], nil?: true

        # @!parse
        #   # @param ledger_entry_ids [Array<String>]
        #   #
        #   def initialize(ledger_entry_ids:, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end
    end
  end
end
