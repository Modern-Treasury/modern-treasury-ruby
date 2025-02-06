# typed: strong

module ModernTreasury
  module Models
    module PaymentOrders
      class ReversalRetrieveParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        sig { returns(String) }
        attr_accessor :payment_order_id

        sig do
          params(
            payment_order_id: String,
            request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(payment_order_id:, request_options: {})
        end

        sig { override.returns({payment_order_id: String, request_options: ModernTreasury::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
