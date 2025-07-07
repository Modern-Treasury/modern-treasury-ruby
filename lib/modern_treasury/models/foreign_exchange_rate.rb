# frozen_string_literal: true

module ModernTreasury
  module Models
    class ForeignExchangeRate < ModernTreasury::Internal::Type::BaseModel
      # @!attribute base_amount
      #   Amount in the lowest denomination of the `base_currency` to convert, often
      #   called the "sell" amount.
      #
      #   @return [Integer]
      required :base_amount, Integer

      # @!attribute base_currency
      #   Currency to convert, often called the "sell" currency.
      #
      #   @return [Symbol, ModernTreasury::Models::Currency]
      required :base_currency, enum: -> { ModernTreasury::Currency }

      # @!attribute exponent
      #   The exponent component of the rate. The decimal is calculated as `value` / (10 ^
      #   `exponent`).
      #
      #   @return [Integer]
      required :exponent, Integer

      # @!attribute rate_string
      #   A string representation of the rate.
      #
      #   @return [String]
      required :rate_string, String

      # @!attribute target_amount
      #   Amount in the lowest denomination of the `target_currency`, often called the
      #   "buy" amount.
      #
      #   @return [Integer]
      required :target_amount, Integer

      # @!attribute target_currency
      #   Currency to convert the `base_currency` to, often called the "buy" currency.
      #
      #   @return [Symbol, ModernTreasury::Models::Currency]
      required :target_currency, enum: -> { ModernTreasury::Currency }

      # @!attribute value
      #   The whole number component of the rate. The decimal is calculated as `value` /
      #   (10 ^ `exponent`).
      #
      #   @return [Integer]
      required :value, Integer

      # @!method initialize(base_amount:, base_currency:, exponent:, rate_string:, target_amount:, target_currency:, value:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::ForeignExchangeRate} for more details.
      #
      #   @param base_amount [Integer] Amount in the lowest denomination of the `base_currency` to convert, often calle
      #
      #   @param base_currency [Symbol, ModernTreasury::Models::Currency] Currency to convert, often called the "sell" currency.
      #
      #   @param exponent [Integer] The exponent component of the rate. The decimal is calculated as `value` / (10 ^
      #
      #   @param rate_string [String] A string representation of the rate.
      #
      #   @param target_amount [Integer] Amount in the lowest denomination of the `target_currency`, often called the "bu
      #
      #   @param target_currency [Symbol, ModernTreasury::Models::Currency] Currency to convert the `base_currency` to, often called the "buy" currency.
      #
      #   @param value [Integer] The whole number component of the rate. The decimal is calculated as `value` / (
    end
  end
end
