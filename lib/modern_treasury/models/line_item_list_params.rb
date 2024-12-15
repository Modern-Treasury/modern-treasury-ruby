# frozen_string_literal: true

module ModernTreasury
  module Models
    class LineItemListParams < ModernTreasury::BaseModel
      # @!attribute itemizable_type
      #
      #   @return [Symbol, ModernTreasury::Models::LineItemListParams::ItemizableType]
      required :itemizable_type, enum: -> { ModernTreasury::Models::LineItemListParams::ItemizableType }

      # @!attribute after_cursor
      #
      #   @return [String]
      optional :after_cursor, String

      # @!attribute per_page
      #
      #   @return [Integer]
      optional :per_page, Integer

      class ItemizableType < ModernTreasury::Enum
        EXPECTED_PAYMENTS = :expected_payments
        PAYMENT_ORDERS = :payment_orders
      end
    end
  end
end
