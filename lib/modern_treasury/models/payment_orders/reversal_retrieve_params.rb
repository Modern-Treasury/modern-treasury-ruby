# frozen_string_literal: true

module ModernTreasury
  module Models
    module PaymentOrders
      class ReversalRetrieveParams < ModernTreasury::BaseModel
        # @!attribute payment_order_id
        #
        #   @return [String]
        required :payment_order_id, String

        # @!parse
        #   # @param payment_order_id [String]
        #   #
        #   def initialize(payment_order_id:) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end
    end
  end
end
