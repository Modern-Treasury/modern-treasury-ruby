# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountCategoryUpdateParams < ModernTreasury::BaseModel
      # @!attribute description
      #   The description of the ledger account category.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute [r] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!attribute [r] name
      #   The name of the ledger account category.
      #
      #   @return [String, nil]
      optional :name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :name

      # @!parse
      #   # @param description [String, nil]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param name [String]
      #   #
      #   def initialize(description: nil, metadata: nil, name: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
