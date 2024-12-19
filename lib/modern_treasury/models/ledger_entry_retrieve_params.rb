# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerEntryRetrieveParams < ModernTreasury::BaseModel
      # @!attribute show_balances
      #   If true, response will include the balances attached to the ledger entry. If there is no balance available, null will be returned instead.
      #
      #   @return [Boolean]
      optional :show_balances, ModernTreasury::BooleanModel

      # @!parse
      #   # @param show_balances [Boolean, nil] If true, response will include the balances attached to the ledger entry. If
      #   #   there is no balance available, null will be returned instead.
      #   #
      #   def initialize(show_balances: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
