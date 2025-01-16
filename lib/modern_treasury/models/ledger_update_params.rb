# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerUpdateParams < ModernTreasury::BaseModel
      # @!attribute description
      #   An optional free-form description for internal use.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash{Symbol=>String}]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!attribute name
      #   The name of the ledger.
      #
      #   @return [String]
      optional :name, String

      # @!parse
      #   # @param description [String, nil] An optional free-form description for internal use.
      #   #
      #   # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   # @param name [String] The name of the ledger.
      #   #
      #   def initialize(description: nil, metadata: nil, name: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
