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

      # @!parse
      #   # @param itemizable_type [String]
      #   # @param itemizable_id [String]
      #   #
      #   def initialize(itemizable_type:, itemizable_id:, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @example
      #
      # ```ruby
      # case itemizable_type
      # in :expected_payments
      #   # ...
      # in :payment_orders
      #   # ...
      # end
      # ```
      class ItemizableType < ModernTreasury::Enum
        EXPECTED_PAYMENTS = :expected_payments
        PAYMENT_ORDERS = :payment_orders

        finalize!
      end
    end
  end
end
