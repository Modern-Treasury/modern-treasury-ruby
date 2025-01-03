# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountUpdateParams < ModernTreasury::BaseModel
      # @!attribute description
      #   The description of the ledger account.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash{Symbol => String}]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!attribute name
      #   The name of the ledger account.
      #
      #   @return [String]
      optional :name, String

      # @!parse
      #   # @param description [String, nil] The description of the ledger account.
      #   #
      #   # @param metadata [Hash{Symbol => String}] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   # @param name [String] The name of the ledger account.
      #   #
      #   def initialize(description: nil, metadata: nil, name: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
