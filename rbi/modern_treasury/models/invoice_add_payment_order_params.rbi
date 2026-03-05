# typed: strong

module ModernTreasury
  module Models
    class InvoiceAddPaymentOrderParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::InvoiceAddPaymentOrderParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :payment_order_id

      sig do
        params(
          id: String,
          payment_order_id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(id:, payment_order_id:, request_options: {})
      end

      sig do
        override.returns(
          {
            id: String,
            payment_order_id: String,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
