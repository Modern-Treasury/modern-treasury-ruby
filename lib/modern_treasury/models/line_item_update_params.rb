# frozen_string_literal: true

module ModernTreasury
  module Models
    class LineItemUpdateParams < ModernTreasury::BaseModel
      # @!attribute itemizable_type
      #
      #   @return [Symbol, ModernTreasury::Models::LineItemUpdateParams::ItemizableType]
      required :itemizable_type, enum: -> { ModernTreasury::Models::LineItemUpdateParams::ItemizableType }

      # @!attribute itemizable_id
      #
      #   @return [String]
      required :itemizable_id, String

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash{Symbol=>String}]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @param itemizable_type [String]
      #   #
      #   # @param itemizable_id [String]
      #   #
      #   # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   def initialize(itemizable_type:, itemizable_id:, metadata: nil, **) = super

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
