# frozen_string_literal: true

module ModernTreasury
  module Models
    class IncomingPaymentDetailUpdateParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute [r] metadata
      #   Additional data in the form of key-value pairs. Pairs can be removed by passing
      #     an empty string or `null` as the value.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!parse
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(metadata: nil, request_options: {}, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
