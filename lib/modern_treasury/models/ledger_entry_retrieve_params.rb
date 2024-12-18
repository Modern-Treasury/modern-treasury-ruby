# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerEntryRetrieveParams < ModernTreasury::BaseModel
      # @!attribute show_balances
      #   If true, response will include the balances attached to the ledger entry. If there is no balance available, null will be returned instead.
      #   @return [Boolean]
      optional :show_balances, ModernTreasury::BooleanModel
    end
  end
end
