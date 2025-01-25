# frozen_string_literal: true

module ModernTreasury
  module Models
    class PaymentFlowUpdateParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute status
      #   Required. The updated status of the payment flow. Can only be used to mark a
      #     flow as `cancelled`.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentFlowUpdateParams::Status]
      required :status, enum: -> { ModernTreasury::Models::PaymentFlowUpdateParams::Status }

      # @!parse
      #   # @param status [String]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(status:, request_options: {}, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # Required. The updated status of the payment flow. Can only be used to mark a
      #   flow as `cancelled`.
      #
      # @example
      # ```ruby
      # case status
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
