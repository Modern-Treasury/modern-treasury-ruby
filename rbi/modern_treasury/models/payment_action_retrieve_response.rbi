# typed: strong

module ModernTreasury
  module Models
    class PaymentActionRetrieveResponse < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::Models::PaymentActionRetrieveResponse,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # The ID of the associated actionable object.
      sig { returns(T.nilable(String)) }
      attr_accessor :actionable_id

      # The type of the associated actionable object. One of `payment_order`,
      # `expected_payment`.
      sig { returns(T.nilable(String)) }
      attr_accessor :actionable_type

      sig { returns(Time) }
      attr_accessor :created_at

      # The specifc details of the payment action based on type.
      sig { returns(T.anything) }
      attr_accessor :details

      # The ID of the internal account associated with the payment action.
      sig { returns(String) }
      attr_accessor :internal_account_id

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      # The current status of the payment action. One of `pending`, `processing`,
      # `sent`, `acknowledged`, `cancelled`, or `failed`.
      sig { returns(String) }
      attr_accessor :status

      # The type of the payment action. Determines the action to be taken.
      sig { returns(String) }
      attr_accessor :type

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          actionable_id: T.nilable(String),
          actionable_type: T.nilable(String),
          created_at: Time,
          details: T.anything,
          internal_account_id: String,
          live_mode: T::Boolean,
          object: String,
          status: String,
          type: String,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The ID of the associated actionable object.
        actionable_id:,
        # The type of the associated actionable object. One of `payment_order`,
        # `expected_payment`.
        actionable_type:,
        created_at:,
        # The specifc details of the payment action based on type.
        details:,
        # The ID of the internal account associated with the payment action.
        internal_account_id:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        object:,
        # The current status of the payment action. One of `pending`, `processing`,
        # `sent`, `acknowledged`, `cancelled`, or `failed`.
        status:,
        # The type of the payment action. Determines the action to be taken.
        type:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            actionable_id: T.nilable(String),
            actionable_type: T.nilable(String),
            created_at: Time,
            details: T.anything,
            internal_account_id: String,
            live_mode: T::Boolean,
            object: String,
            status: String,
            type: String,
            updated_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
