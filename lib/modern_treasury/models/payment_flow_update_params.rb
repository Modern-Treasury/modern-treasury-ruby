# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::PaymentFlows#update
    class PaymentFlowUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute status
      #   Required. The updated status of the payment flow. Can only be used to mark a
      #   flow as `cancelled`.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentFlowUpdateParams::Status]
      required :status, enum: -> { ModernTreasury::PaymentFlowUpdateParams::Status }

      # @!method initialize(id:, status:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::PaymentFlowUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param status [Symbol, ModernTreasury::Models::PaymentFlowUpdateParams::Status] Required. The updated status of the payment flow. Can only be used to mark a flo
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # Required. The updated status of the payment flow. Can only be used to mark a
      # flow as `cancelled`.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        CANCELLED = :cancelled

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
