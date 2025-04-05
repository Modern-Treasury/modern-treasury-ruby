# typed: strong

module ModernTreasury
  module Models
    module PaymentOrders
      class ReversalRetrieveParams < ModernTreasury::Internal::Type::BaseModel
        extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

        sig { returns(String) }
        attr_accessor :payment_order_id

        sig do
          params(
            payment_order_id: String,
            request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(payment_order_id:, request_options: {}); end

        sig { override.returns({payment_order_id: String, request_options: ModernTreasury::RequestOptions}) }
        def to_hash; end
      end
    end
  end
end
