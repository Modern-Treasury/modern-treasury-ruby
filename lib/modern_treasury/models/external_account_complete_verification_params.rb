# frozen_string_literal: true

module ModernTreasury
  module Models
    class ExternalAccountCompleteVerificationParams < ModernTreasury::BaseModel
      # @!attribute amounts
      #
      #   @return [Array<Integer>]
      optional :amounts, ModernTreasury::ArrayOf.new(Integer)

      # @!parse
      #   # @param amounts [Array<Integer>, nil]
      #   #
      #   def initialize(amounts: nil) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
