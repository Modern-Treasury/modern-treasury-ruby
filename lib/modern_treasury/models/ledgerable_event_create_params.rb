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
      #   @return [Object, nil]
      optional :custom_data, ModernTreasury::Unknown, nil?: true

      # @!attribute description
      #   Description of the ledgerable event.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute [r] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!parse
      #   # @param name [String] Name of the ledgerable event.
      #   #
      #   # @param custom_data [Object, nil] Additionally data to be used by the Ledger Event Handler.
      #   #
      #   # @param description [String, nil] Description of the ledgerable event.
      #   #
      #   # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   def initialize(name:, custom_data: nil, description: nil, metadata: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
