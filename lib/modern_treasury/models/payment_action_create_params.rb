# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::PaymentActions#create
    class PaymentActionCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute type
      #   Required. The type of the payment action. Determines the action to be taken.
      #
      #   @return [String]
      required :type, String

      # @!attribute actionable_id
      #   Optional. The ID of the associated actionable object.
      #
      #   @return [String, nil]
      optional :actionable_id, String

      # @!attribute actionable_type
      #   Optional. The type of the associated actionable object. One of `payment_order`,
      #   `expected_payment`. Required if `actionable_id` is passed.
      #
      #   @return [String, nil]
      optional :actionable_type, String

      # @!attribute details
      #   Optional. The specifc details of the payment action based on type.
      #
      #   @return [Object, nil]
      optional :details, ModernTreasury::Internal::Type::Unknown

      # @!attribute internal_account_id
      #   Optional. The ID of one of your organization's internal accounts. Required if
      #   `actionable_id` is not passed.
      #
      #   @return [String, nil]
      optional :internal_account_id, String

      # @!method initialize(type:, actionable_id: nil, actionable_type: nil, details: nil, internal_account_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::PaymentActionCreateParams} for more details.
      #
      #   @param type [String] Required. The type of the payment action. Determines the action to be taken.
      #
      #   @param actionable_id [String] Optional. The ID of the associated actionable object.
      #
      #   @param actionable_type [String] Optional. The type of the associated actionable object. One of `payment_order`,
      #
      #   @param details [Object] Optional. The specifc details of the payment action based on type.
      #
      #   @param internal_account_id [String] Optional. The ID of one of your organization's internal accounts. Required if `a
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
