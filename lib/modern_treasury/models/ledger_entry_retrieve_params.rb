# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerEntryRetrieveParams < ModernTreasury::BaseModel
      # @!attribute [r] show_balances
      #   If true, response will include the balances attached to the ledger entry. If there is no balance available, null will be returned instead.
      #
      #   @return [Boolean, nil]
      optional :show_balances, ModernTreasury::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :show_balances

      # @!parse
      #   # @param show_balances [Boolean] If true, response will include the balances attached to the ledger entry. If
      #   #   there is no balance available, null will be returned instead.
      #   #
      #   def initialize(show_balances: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
