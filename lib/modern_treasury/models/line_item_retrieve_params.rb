# frozen_string_literal: true

module ModernTreasury
  module Models
    class LineItemRetrieveParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute itemizable_type
      #
      #   @return [Symbol, ModernTreasury::Models::LineItemRetrieveParams::ItemizableType]
      required :itemizable_type, enum: -> { ModernTreasury::Models::LineItemRetrieveParams::ItemizableType }

      # @!attribute itemizable_id
      #
      #   @return [String]
      required :itemizable_id, String

      # @!parse
      #   # @param itemizable_type [Symbol, ModernTreasury::Models::LineItemRetrieveParams::ItemizableType]
      #   # @param itemizable_id [String]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(itemizable_type:, itemizable_id:, request_options: {}, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @abstract
      class ItemizableType < ModernTreasury::Enum
        EXPECTED_PAYMENTS = :expected_payments
        PAYMENT_ORDERS = :payment_orders

        finalize!
      end
    end
  end
end
