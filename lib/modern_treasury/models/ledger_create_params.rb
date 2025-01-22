# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerCreateParams < ModernTreasury::BaseModel
      # @!attribute name
      #   The name of the ledger.
      #
      #   @return [String]
      required :name, String

      # @!attribute description
      #   An optional free-form description for internal use.
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

      # @!parse
      #   # @param name [String]
      #   # @param description [String, nil]
      #   # @param metadata [Hash{Symbol=>String}]
      #   #
      #   def initialize(name:, description: nil, metadata: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
