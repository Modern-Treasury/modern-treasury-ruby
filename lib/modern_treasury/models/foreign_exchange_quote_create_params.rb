# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::ForeignExchangeQuotes#create
    class ForeignExchangeQuoteCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

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
      #   Amount in the lowest denomination of the `base_currency` to convert, often
      #   called the "sell" amount.
      #
      #   @return [Integer, nil]
      optional :base_amount, Integer

      # @!attribute base_currency
      #   Currency to convert, often called the "sell" currency.
      #
      #   @return [Symbol, ModernTreasury::Models::Currency, nil]
      optional :base_currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute effective_at
      #   The timestamp until when the quoted rate is valid.
      #
      #   @return [Time, nil]
      optional :effective_at, Time

      # @!attribute target_amount
      #   Amount in the lowest denomination of the `target_currency`, often called the
      #   "buy" amount.
      #
      #   @return [Integer, nil]
      optional :target_amount, Integer

      # @!method initialize(internal_account_id:, target_currency:, base_amount: nil, base_currency: nil, effective_at: nil, target_amount: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::ForeignExchangeQuoteCreateParams} for more details.
      #
      #   @param internal_account_id [String] The ID for the `InternalAccount` this quote is associated with.
      #
      #   @param target_currency [Symbol, ModernTreasury::Models::Currency] Currency to convert the `base_currency` to, often called the "buy" currency.
      #
      #   @param base_amount [Integer] Amount in the lowest denomination of the `base_currency` to convert, often calle
      #   ...
      #
      #   @param base_currency [Symbol, ModernTreasury::Models::Currency] Currency to convert, often called the "sell" currency.
      #
      #   @param effective_at [Time] The timestamp until when the quoted rate is valid.
      #
      #   @param target_amount [Integer] Amount in the lowest denomination of the `target_currency`, often called the "bu
      #   ...
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
