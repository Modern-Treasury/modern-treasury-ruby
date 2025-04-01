# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::ExternalAccounts#complete_verification
    class ExternalAccountCompleteVerificationParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute [r] amounts
      #
      #   @return [Array<Integer>, nil]
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
