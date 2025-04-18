# frozen_string_literal: true

module ModernTreasury
  module Models
    module PaymentOrders
      # @see ModernTreasury::Resources::PaymentOrders::Reversals#retrieve
      class ReversalRetrieveParams < ModernTreasury::Internal::Type::BaseModel
        # @!parse
        #   extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

        # @!attribute payment_order_id
        #
        #   @return [String]
        required :payment_order_id, String

        # @!method initialize(payment_order_id:, request_options: {})
        #   @param payment_order_id [String]
        #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
