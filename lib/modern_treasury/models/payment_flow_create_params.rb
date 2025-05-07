# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::PaymentFlows#create
    class PaymentFlowCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute amount
      #   Required. Value in specified currency's smallest unit. e.g. $10 would be
      #   represented as 1000. Can be any integer up to 36 digits.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute counterparty_id
      #   Required. The ID of a counterparty associated with the payment. As part of the
      #   payment workflow an external account will be associated with this model.
      #
      #   @return [String]
      required :counterparty_id, String

      # @!attribute currency
      #   Required. The currency of the payment.
      #
      #   @return [String]
      required :currency, String

      # @!attribute direction
      #   Required. Describes the direction money is flowing in the transaction. Can only
      #   be `debit`. A `debit` pulls money from someone else's account to your own.
      #
      #   @return [Symbol, ModernTreasury::PaymentFlowCreateParams::Direction]
      required :direction, enum: -> { ModernTreasury::PaymentFlowCreateParams::Direction }

      # @!attribute originating_account_id
      #   Required. The ID of one of your organization's internal accounts.
      #
      #   @return [String]
      required :originating_account_id, String

      # @!attribute due_date
      #   Optional. Can only be passed in when `effective_date_selection_enabled` is
      #   `true`. When set, the due date is shown to your end-user in the pre-built UI as
      #   they are selecting a payment `effective_date`.
      #
      #   @return [Date, nil]
      optional :due_date, Date

      # @!method initialize(amount:, counterparty_id:, currency:, direction:, originating_account_id:, due_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::PaymentFlowCreateParams} for more details.
      #
      #   @param amount [Integer] Required. Value in specified currency's smallest unit. e.g. $10 would be represe
      #
      #   @param counterparty_id [String] Required. The ID of a counterparty associated with the payment. As part of the p
      #
      #   @param currency [String] Required. The currency of the payment.
      #
      #   @param direction [Symbol, ModernTreasury::PaymentFlowCreateParams::Direction] Required. Describes the direction money is flowing in the transaction. Can only
      #
      #   @param originating_account_id [String] Required. The ID of one of your organization's internal accounts.
      #
      #   @param due_date [Date] Optional. Can only be passed in when `effective_date_selection_enabled` is `true
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # Required. Describes the direction money is flowing in the transaction. Can only
      # be `debit`. A `debit` pulls money from someone else's account to your own.
      module Direction
        extend ModernTreasury::Internal::Type::Enum

        CREDIT = :credit
        DEBIT = :debit

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
