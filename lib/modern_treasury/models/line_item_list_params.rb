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
      #   @return [String, nil]
      optional :after_cursor, String

      # @!attribute per_page
      #
      #   @return [Integer]
      optional :per_page, Integer

      # @!parse
      #   # @param itemizable_type [String]
      #   # @param after_cursor [String, nil]
      #   # @param per_page [Integer]
      #   #
      #   def initialize(itemizable_type:, after_cursor: nil, per_page: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @example
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
