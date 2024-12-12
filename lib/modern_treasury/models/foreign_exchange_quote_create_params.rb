# frozen_string_literal: true

module ModernTreasury
  module Models
    class ForeignExchangeQuoteCreateParams < ModernTreasury::BaseModel
      # @!attribute [rw] internal_account_id
      #   The ID for the `InternalAccount` this quote is associated with.
      #   @return [String]
      required :internal_account_id, String

      # @!attribute [rw] target_currency
      #   Currency to convert the `base_currency` to, often called the "buy" currency.
      #   @return [Symbol, ModernTreasury::Models::Currency]
      required :target_currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute [rw] base_amount
      #   Amount in the lowest denomination of the `base_currency` to convert, often called the "sell" amount.
      #   @return [Integer]
      optional :base_amount, Integer

      # @!attribute [rw] base_currency
      #   Currency to convert, often called the "sell" currency.
      #   @return [Symbol, ModernTreasury::Models::Currency]
      optional :base_currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute [rw] effective_at
      #   The timestamp until when the quoted rate is valid.
      #   @return [Time]
      optional :effective_at, Time

      # @!attribute [rw] target_amount
      #   Amount in the lowest denomination of the `target_currency`, often called the "buy" amount.
      #   @return [Integer]
      optional :target_amount, Integer
    end
  end
end
