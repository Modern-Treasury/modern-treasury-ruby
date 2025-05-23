# typed: strong

module ModernTreasury
  module Models
    class PaymentActionCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::PaymentActionCreateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # Required. The type of the payment action. Determines the action to be taken.
      sig { returns(String) }
      attr_accessor :type

      # Optional. The ID of the associated actionable object.
      sig { returns(T.nilable(String)) }
      attr_reader :actionable_id

      sig { params(actionable_id: String).void }
      attr_writer :actionable_id

      # Optional. The type of the associated actionable object. One of `payment_order`,
      # `expected_payment`. Required if `actionable_id` is passed.
      sig { returns(T.nilable(String)) }
      attr_reader :actionable_type

      sig { params(actionable_type: String).void }
      attr_writer :actionable_type

      # Optional. The specifc details of the payment action based on type.
      sig { returns(T.nilable(T.anything)) }
      attr_reader :details

      sig { params(details: T.anything).void }
      attr_writer :details

      # Optional. The ID of one of your organization's internal accounts. Required if
      # `actionable_id` is not passed.
      sig { returns(T.nilable(String)) }
      attr_reader :internal_account_id

      sig { params(internal_account_id: String).void }
      attr_writer :internal_account_id

      sig do
        params(
          type: String,
          actionable_id: String,
          actionable_type: String,
          details: T.anything,
          internal_account_id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Required. The type of the payment action. Determines the action to be taken.
        type:,
        # Optional. The ID of the associated actionable object.
        actionable_id: nil,
        # Optional. The type of the associated actionable object. One of `payment_order`,
        # `expected_payment`. Required if `actionable_id` is passed.
        actionable_type: nil,
        # Optional. The specifc details of the payment action based on type.
        details: nil,
        # Optional. The ID of one of your organization's internal accounts. Required if
        # `actionable_id` is not passed.
        internal_account_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            type: String,
            actionable_id: String,
            actionable_type: String,
            details: T.anything,
            internal_account_id: String,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
