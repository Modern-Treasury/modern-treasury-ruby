# typed: strong

module ModernTreasury
  module Models
    class PaymentFlowUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

      # Required. The updated status of the payment flow. Can only be used to mark a
      # flow as `cancelled`.
      sig { returns(ModernTreasury::PaymentFlowUpdateParams::Status::OrSymbol) }
      attr_accessor :status

      sig do
        params(
          status: ModernTreasury::PaymentFlowUpdateParams::Status::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Required. The updated status of the payment flow. Can only be used to mark a
        # flow as `cancelled`.
        status:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            status: ModernTreasury::PaymentFlowUpdateParams::Status::OrSymbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Required. The updated status of the payment flow. Can only be used to mark a
      # flow as `cancelled`.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::PaymentFlowUpdateParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CANCELLED =
          T.let(
            :cancelled,
            ModernTreasury::PaymentFlowUpdateParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::PaymentFlowUpdateParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
