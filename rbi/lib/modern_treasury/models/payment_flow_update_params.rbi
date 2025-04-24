# typed: strong

module ModernTreasury
  module Models
    class PaymentFlowUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # Required. The updated status of the payment flow. Can only be used to mark a
      # flow as `cancelled`.
      sig { returns(ModernTreasury::Models::PaymentFlowUpdateParams::Status::OrSymbol) }
      attr_accessor :status

      sig do
        params(
          status: ModernTreasury::Models::PaymentFlowUpdateParams::Status::OrSymbol,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # Required. The updated status of the payment flow. Can only be used to mark a
        # flow as `cancelled`.
        status:,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              status: ModernTreasury::Models::PaymentFlowUpdateParams::Status::OrSymbol,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash; end

      # Required. The updated status of the payment flow. Can only be used to mark a
      # flow as `cancelled`.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::PaymentFlowUpdateParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CANCELLED = T.let(:cancelled, ModernTreasury::Models::PaymentFlowUpdateParams::Status::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::PaymentFlowUpdateParams::Status::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
