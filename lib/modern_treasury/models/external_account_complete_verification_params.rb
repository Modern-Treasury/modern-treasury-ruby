# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::ExternalAccounts#complete_verification
    class ExternalAccountCompleteVerificationParams < ModernTreasury::Internal::Type::BaseModel
      # @!parse
      #   extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute [r] amounts
      #
      #   @return [Array<Integer>, nil]
      optional :amounts, ModernTreasury::Internal::Type::ArrayOf[Integer]

      # @!parse
      #   # @return [Array<Integer>]
      #   attr_writer :amounts

      # @!parse
      #   # @param amounts [Array<Integer>]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(amounts: nil, request_options: {}, **) = super

      # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void
    end
  end
end
