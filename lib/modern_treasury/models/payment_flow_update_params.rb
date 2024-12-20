# frozen_string_literal: true

module ModernTreasury
  module Models
    class PaymentFlowUpdateParams < ModernTreasury::BaseModel
      # @!attribute status
      #   Required. The updated status of the payment flow. Can only be used to mark a flow as `cancelled`.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentFlowUpdateParams::Status]
      required :status, enum: -> { ModernTreasury::Models::PaymentFlowUpdateParams::Status }

      # @!parse
      #   # @param status [String] Required. The updated status of the payment flow. Can only be used to mark a
      #   #   flow as `cancelled`.
      #   #
      #   def initialize(status:, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # Required. The updated status of the payment flow. Can only be used to mark a flow as `cancelled`.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :cancelled
      #   # ...
      # end
      # ```
      class Status < ModernTreasury::Enum
        CANCELLED = :cancelled

        finalize!
      end
    end
  end
end
