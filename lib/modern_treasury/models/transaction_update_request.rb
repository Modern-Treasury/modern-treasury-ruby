# frozen_string_literal: true

module ModernTreasury
  module Models
    class TransactionUpdateRequest < ModernTreasury::Internal::Type::BaseModel
      # @!attribute metadata
      #   Additional data in the form of key-value pairs. Pairs can be removed by passing
      #   an empty string or `null` as the value.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!method initialize(metadata: nil)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::TransactionUpdateRequest} for more details.
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data in the form of key-value pairs. Pairs can be removed by passing
    end
  end
end
