# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountCategoryAddLedgerAccountParams < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!parse
      #   # @param id [String]
      #   #
      #   def initialize(id:) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
