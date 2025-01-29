# typed: strong

module ModernTreasury
  module Models
    module PaymentOrders
      class ReversalRetrieveParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        Shape = T.type_alias { T.all({payment_order_id: String}, ModernTreasury::RequestParameters::Shape) }

        sig { returns(String) }
        attr_accessor :payment_order_id

        sig { params(payment_order_id: String, request_options: ModernTreasury::RequestOpts).void }
        def initialize(payment_order_id:, request_options: {}); end

        sig { returns(ModernTreasury::Models::PaymentOrders::ReversalRetrieveParams::Shape) }
        def to_h; end
      end
    end
  end
end
