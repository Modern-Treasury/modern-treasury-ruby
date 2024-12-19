# frozen_string_literal: true

module ModernTreasury
  module Models
    class ForeignExchangeQuoteCreateParams < ModernTreasury::BaseModel
      # @!attribute internal_account_id
      #   The ID for the `InternalAccount` this quote is associated with.
      #
      #   @return [String]
      required :internal_account_id, String

      # @!attribute target_currency
      #   Currency to convert the `base_currency` to, often called the "buy" currency.
      #
      #   @return [Symbol, ModernTreasury::Models::Currency]
      required :target_currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute base_amount
      #   Amount in the lowest denomination of the `base_currency` to convert, often called the "sell" amount.
      #
      #   @return [Integer]
      optional :base_amount, Integer

      # @!attribute base_currency
      #   Currency to convert, often called the "sell" currency.
      #
      #   @return [Symbol, ModernTreasury::Models::Currency]
      optional :base_currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute effective_at
      #   The timestamp until when the quoted rate is valid.
      #
      #   @return [Time]
      optional :effective_at, Time

      # @!attribute target_amount
      #   Amount in the lowest denomination of the `target_currency`, often called the "buy" amount.
      #
      #   @return [Integer]
      optional :target_amount, Integer

      # @!parse
      #   # @param internal_account_id [String] The ID for the `InternalAccount` this quote is associated with.
      #   #
      #   # @param target_currency [String] Currency to convert the `base_currency` to, often called the "buy" currency.
      #   #
      #   # @param base_amount [Integer, nil] Amount in the lowest denomination of the `base_currency` to convert, often
      #   #   called the "sell" amount.
      #   #
      #   # @param base_currency [String, nil] Currency to convert, often called the "sell" currency.
      #   #
      #   # @param effective_at [String, nil] The timestamp until when the quoted rate is valid.
      #   #
      #   # @param target_amount [Integer, nil] Amount in the lowest denomination of the `target_currency`, often called the
      #   #   "buy" amount.
      #   #
      #   def initialize(
      #     internal_account_id:,
      #     target_currency:,
      #     base_amount: nil,
      #     base_currency: nil,
      #     effective_at: nil,
      #     target_amount: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
