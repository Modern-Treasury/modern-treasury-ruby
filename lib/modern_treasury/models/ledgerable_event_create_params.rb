# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerableEventCreateParams < ModernTreasury::BaseModel
      # @!attribute name
      #   Name of the ledgerable event.
      #
      #   @return [String]
      required :name, String

      # @!attribute custom_data
      #   Additionally data to be used by the Ledger Event Handler.
      #
      #   @return [Object]
      optional :custom_data, ModernTreasury::Unknown

      # @!attribute description
      #   Description of the ledgerable event.
      #
      #   @return [String]
      optional :description, String

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash{Symbol => String}]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @param name [String] Name of the ledgerable event.
      #   #
      #   # @param custom_data [Object, nil] Additionally data to be used by the Ledger Event Handler.
      #   #
      #   # @param description [String, nil] Description of the ledgerable event.
      #   #
      #   # @param metadata [Hash{Symbol => String}, nil] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   def initialize(name:, custom_data: nil, description: nil, metadata: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
