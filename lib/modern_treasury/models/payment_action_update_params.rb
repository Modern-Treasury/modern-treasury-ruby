# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::PaymentActions#update
    class PaymentActionUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute status
      #   Optional. Set the status of the payment action to `cancelled` to cancel the
      #   payment action. This will only work if the payment action is in a `pending`
      #   state.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentActionUpdateParams::Status]
      required :status, enum: -> { ModernTreasury::PaymentActionUpdateParams::Status }

      # @!method initialize(status:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::PaymentActionUpdateParams} for more details.
      #
      #   @param status [Symbol, ModernTreasury::Models::PaymentActionUpdateParams::Status] Optional. Set the status of the payment action to `cancelled` to cancel the paym
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # Optional. Set the status of the payment action to `cancelled` to cancel the
      # payment action. This will only work if the payment action is in a `pending`
      # state.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        PENDING = :pending
        PROCESSABLE = :processable
        PROCESSING = :processing
        SENT = :sent
        ACKNOWLEDGED = :acknowledged
        FAILED = :failed
        CANCELLED = :cancelled

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
