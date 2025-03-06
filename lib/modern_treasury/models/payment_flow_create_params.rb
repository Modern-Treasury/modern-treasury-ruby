# frozen_string_literal: true

module ModernTreasury
  module Models
    class PaymentFlowCreateParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute amount
      #   Required. Value in specified currency's smallest unit. e.g. $10 would be
      #     represented as 1000. Can be any integer up to 36 digits.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute counterparty_id
      #   Required. The ID of a counterparty associated with the payment. As part of the
      #     payment workflow an external account will be associated with this model.
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
      #     be `debit`. A `debit` pulls money from someone else's account to your own.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentFlowCreateParams::Direction]
      required :direction, enum: -> { ModernTreasury::Models::PaymentFlowCreateParams::Direction }

      # @!attribute originating_account_id
      #   Required. The ID of one of your organization's internal accounts.
      #
      #   @return [String]
      required :originating_account_id, String

      # @!attribute [r] due_date
      #   Optional. Can only be passed in when `effective_date_selection_enabled` is
      #     `true`. When set, the due date is shown to your end-user in the pre-built UI as
      #     they are selecting a payment `effective_date`.
      #
      #   @return [Date, nil]
      optional :due_date, Date

      # @!parse
      #   # @return [Date]
      #   attr_writer :due_date

      # @!parse
      #   # @param amount [Integer]
      #   # @param counterparty_id [String]
      #   # @param currency [String]
      #   # @param direction [Symbol, ModernTreasury::Models::PaymentFlowCreateParams::Direction]
      #   # @param originating_account_id [String]
      #   # @param due_date [Date]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     amount:,
      #     counterparty_id:,
      #     currency:,
      #     direction:,
      #     originating_account_id:,
      #     due_date: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @abstract
      #
      # Required. Describes the direction money is flowing in the transaction. Can only
      #   be `debit`. A `debit` pulls money from someone else's account to your own.
      class Direction < ModernTreasury::Enum
        CREDIT = :credit
        DEBIT = :debit

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
