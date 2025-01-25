# frozen_string_literal: true

module ModernTreasury
  module Models
    class ExternalAccountCompleteVerificationParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute [r] amounts
      #
      #   @return [Array<Integer>]
      optional :amounts, ModernTreasury::ArrayOf[Integer]

      # @!parse
      #   # @return [Array<Integer>]
      #   attr_writer :amounts

      # @!parse
      #   # @param amounts [Array<Integer>]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(amounts: nil, request_options: {}, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
