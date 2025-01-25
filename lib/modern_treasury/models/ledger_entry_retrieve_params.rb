# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerEntryRetrieveParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute [r] show_balances
      #   If true, response will include the balances attached to the ledger entry. If
      #     there is no balance available, null will be returned instead.
      #
      #   @return [Boolean, nil]
      optional :show_balances, ModernTreasury::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :show_balances

      # @!parse
      #   # @param show_balances [Boolean]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(show_balances: nil, request_options: {}, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
