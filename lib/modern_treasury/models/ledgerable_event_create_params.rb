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
      #   @return [Hash]
      optional :metadata, Hash
    end
  end
end
