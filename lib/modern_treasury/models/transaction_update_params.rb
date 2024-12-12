# frozen_string_literal: true

module ModernTreasury
  module Models
    class TransactionUpdateParams < ModernTreasury::BaseModel
      # @!attribute [rw] metadata
      #   Additional data in the form of key-value pairs. Pairs can be removed by passing an empty string or `null` as the value.
      #   @return [Hash]
      optional :metadata, Hash
    end
  end
end
