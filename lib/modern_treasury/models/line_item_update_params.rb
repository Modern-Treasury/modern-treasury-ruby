# frozen_string_literal: true

module ModernTreasury
  module Models
    class LineItemUpdateParams < ModernTreasury::BaseModel
      # @!attribute itemizable_type
      #   @return [Symbol, ModernTreasury::Models::LineItemUpdateParams::ItemizableType]
      required :itemizable_type, enum: -> { ModernTreasury::Models::LineItemUpdateParams::ItemizableType }

      # @!attribute itemizable_id
      #   @return [String]
      required :itemizable_id, String

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      optional :metadata, Hash

      class ItemizableType < ModernTreasury::Enum
        EXPECTED_PAYMENTS = :expected_payments
        PAYMENT_ORDERS = :payment_orders
      end
    end
  end
end
