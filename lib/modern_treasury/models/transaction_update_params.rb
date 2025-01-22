# frozen_string_literal: true

module ModernTreasury
  module Models
    class TransactionUpdateParams < ModernTreasury::BaseModel
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
      #   #
      #   def initialize(metadata: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
