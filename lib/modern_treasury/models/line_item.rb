# frozen_string_literal: true

module ModernTreasury
  module Models
    class LineItem < ModernTreasury::Internal::Type::BaseModel
      # @!attribute amount
      #   Value in specified currency's smallest unit. e.g. $10 would be represented
      #   as 1000.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute accounting_category_id
      #   The ID of one of your accounting categories. Note that these will only be
      #   accessible if your accounting system has been connected.
      #
      #   @return [String, nil]
      optional :accounting_category_id, String, nil?: true

      # @!attribute description
      #   A free-form description of the line item.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!method initialize(amount:, accounting_category_id: nil, description: nil, metadata: nil)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LineItem} for more details.
      #
      #   @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented as 10
      #
      #   @param accounting_category_id [String, nil] The ID of one of your accounting categories. Note that these will only be access
      #
      #   @param description [String, nil] A free-form description of the line item.
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
    end
  end
end
