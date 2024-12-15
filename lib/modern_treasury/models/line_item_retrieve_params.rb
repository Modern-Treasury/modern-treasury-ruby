# frozen_string_literal: true

module ModernTreasury
  module Models
    class LineItemRetrieveParams < ModernTreasury::BaseModel
      # @!attribute itemizable_type
      #
      #   @return [Symbol, ModernTreasury::Models::LineItemRetrieveParams::ItemizableType]
      required :itemizable_type, enum: -> { ModernTreasury::Models::LineItemRetrieveParams::ItemizableType }

      # @!attribute itemizable_id
      #
      #   @return [String]
      required :itemizable_id, String

      class ItemizableType < ModernTreasury::Enum
        EXPECTED_PAYMENTS = :expected_payments
        PAYMENT_ORDERS = :payment_orders
      end
    end
  end
end
