# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountBalanceMonitorUpdateParams < ModernTreasury::BaseModel
      # @!attribute description
      #   An optional, free-form description for internal use.
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
