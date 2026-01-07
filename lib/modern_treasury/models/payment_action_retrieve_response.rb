# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::PaymentActions#retrieve
    class PaymentActionRetrieveResponse < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute actionable_id
      #   The ID of the associated actionable object.
      #
      #   @return [String, nil]
      required :actionable_id, String, nil?: true

      # @!attribute actionable_type
      #   The type of the associated actionable object. One of `payment_order`,
      #   `expected_payment`.
      #
      #   @return [String, nil]
      required :actionable_type, String, nil?: true

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute details
      #   The specifc details of the payment action based on type.
      #
      #   @return [Object]
      required :details, ModernTreasury::Internal::Type::Unknown

      # @!attribute internal_account_id
      #   The ID of the internal account associated with the payment action.
      #
      #   @return [String]
      required :internal_account_id, String

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute status
      #   The current status of the payment action. One of `pending`, `processing`,
      #   `sent`, `acknowledged`, `cancelled`, or `failed`.
      #
      #   @return [String]
      required :status, String

      # @!attribute type
      #   The type of the payment action. Determines the action to be taken.
      #
      #   @return [String]
      required :type, String

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, actionable_id:, actionable_type:, created_at:, details:, internal_account_id:, live_mode:, object:, status:, type:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::PaymentActionRetrieveResponse} for more details.
      #
      #   @param id [String]
      #
      #   @param actionable_id [String, nil] The ID of the associated actionable object.
      #
      #   @param actionable_type [String, nil] The type of the associated actionable object. One of `payment_order`,
      #   `expected\_
      #
      #   @param created_at [Time]
      #
      #   @param details [Object] The specifc details of the payment action based on type.
      #
      #   @param internal_account_id [String] The ID of the internal account associated with the payment action.
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param object [String]
      #
      #   @param status [String] The current status of the payment action. One of `pending`, `processing`, `sent`
      #
      #   @param type [String] The type of the payment action. Determines the action to be taken.
      #
      #   @param updated_at [Time]
    end
  end
end
