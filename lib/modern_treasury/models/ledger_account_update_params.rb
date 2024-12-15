# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountUpdateParams < ModernTreasury::BaseModel
      # @!attribute description
      #   The description of the ledger account.
      #
      #   @return [String]
      optional :description, String

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute name
      #   The name of the ledger account.
      #
      #   @return [String]
      optional :name, String
    end
  end
end
