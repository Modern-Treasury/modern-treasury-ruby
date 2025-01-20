# frozen_string_literal: true

module ModernTreasury
  module Models
    class ExternalAccountCompleteVerificationParams < ModernTreasury::BaseModel
      # @!attribute [r] amounts
      #
      #   @return [Array<Integer>]
      optional :amounts, ModernTreasury::ArrayOf[Integer]

      # @!parse
      #   # @return [Array<Integer>]
      #   attr_writer :amounts

      # @!parse
      #   # @param amounts [Array<Integer>]
      #   #
      #   def initialize(amounts: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
