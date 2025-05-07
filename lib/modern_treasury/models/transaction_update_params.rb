# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Transactions#update
    class TransactionUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute metadata
      #   Additional data in the form of key-value pairs. Pairs can be removed by passing
      #   an empty string or `null` as the value.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!method initialize(metadata: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::TransactionUpdateParams} for more details.
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data in the form of key-value pairs. Pairs can be removed by passing
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
