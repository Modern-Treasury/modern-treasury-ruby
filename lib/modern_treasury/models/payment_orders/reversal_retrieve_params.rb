# frozen_string_literal: true

module ModernTreasury
  module Models
    module PaymentOrders
      class ReversalRetrieveParams < ModernTreasury::BaseModel
        # @!attribute payment_order_id
        #   @return [String]
        required :payment_order_id, String
      end
    end
  end
end
