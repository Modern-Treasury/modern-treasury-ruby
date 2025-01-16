# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerEntryUpdateParams < ModernTreasury::BaseModel
      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash{Symbol=>String}]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   def initialize(metadata: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
