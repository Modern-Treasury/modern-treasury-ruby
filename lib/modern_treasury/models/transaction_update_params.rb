# frozen_string_literal: true

module ModernTreasury
  module Models
    class TransactionUpdateParams < ModernTreasury::BaseModel
      # @!attribute metadata
      #   Additional data in the form of key-value pairs. Pairs can be removed by passing an empty string or `null` as the value.
      #
      #   @return [Hash]
      optional :metadata, Hash

      # @!parse
      #   # @param metadata [Hash, nil] Additional data in the form of key-value pairs. Pairs can be removed by passing
      #   #   an empty string or `null` as the value.
      #   #
      #   def initialize(metadata: nil) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
