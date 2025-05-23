# typed: strong

module ModernTreasury
  module Models
    class PaymentActionUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::PaymentActionUpdateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # Optional. Set the status of the payment action to `cancelled` to cancel the
      # payment action. This will only work if the payment action is in a `pending`
      # state.
      sig do
        returns(ModernTreasury::PaymentActionUpdateParams::Status::OrSymbol)
      end
      attr_accessor :status

      sig do
        params(
          status: ModernTreasury::PaymentActionUpdateParams::Status::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Optional. Set the status of the payment action to `cancelled` to cancel the
        # payment action. This will only work if the payment action is in a `pending`
        # state.
        status:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            status: ModernTreasury::PaymentActionUpdateParams::Status::OrSymbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Optional. Set the status of the payment action to `cancelled` to cancel the
      # payment action. This will only work if the payment action is in a `pending`
      # state.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::PaymentActionUpdateParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            ModernTreasury::PaymentActionUpdateParams::Status::TaggedSymbol
          )
        PROCESSABLE =
          T.let(
            :processable,
            ModernTreasury::PaymentActionUpdateParams::Status::TaggedSymbol
          )
        PROCESSING =
          T.let(
            :processing,
            ModernTreasury::PaymentActionUpdateParams::Status::TaggedSymbol
          )
        SENT =
          T.let(
            :sent,
            ModernTreasury::PaymentActionUpdateParams::Status::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            ModernTreasury::PaymentActionUpdateParams::Status::TaggedSymbol
          )
        CANCELLED =
          T.let(
            :cancelled,
            ModernTreasury::PaymentActionUpdateParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::PaymentActionUpdateParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
