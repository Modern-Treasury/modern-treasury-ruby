# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerEntryUpdateParams < ModernTreasury::BaseModel
      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash]
      optional :metadata, Hash
    end
  end
end
