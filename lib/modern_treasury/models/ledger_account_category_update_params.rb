# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountCategoryUpdateParams < ModernTreasury::BaseModel
      # @!attribute description
      #   The description of the ledger account category.
      #
      #   @return [String]
      optional :description, String

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute name
      #   The name of the ledger account category.
      #
      #   @return [String]
      optional :name, String

      # @!parse
      #   # @param description [String, nil] The description of the ledger account category.
      #   #
      #   # @param metadata [Hash, nil] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   # @param name [String, nil] The name of the ledger account category.
      #   #
      #   def initialize(description: nil, metadata: nil, name: nil) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
