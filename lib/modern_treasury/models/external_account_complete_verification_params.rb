# frozen_string_literal: true

module ModernTreasury
  module Models
    class ExternalAccountCompleteVerificationParams < ModernTreasury::BaseModel
      # @!attribute amounts
      #
      #   @return [Array<Integer>]
      optional :amounts, ModernTreasury::ArrayOf.new(Integer)
    end
  end
end
