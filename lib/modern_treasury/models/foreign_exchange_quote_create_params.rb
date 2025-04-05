# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::ForeignExchangeQuotes#create
    class ForeignExchangeQuoteCreateParams < ModernTreasury::Internal::Type::BaseModel
      # @!parse
      #   extend ModernTreasury::Internal::Type::RequestParameters::Converter
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

      # @!attribute [r] base_amount
      #   Amount in the lowest denomination of the `base_currency` to convert, often
      #   called the "sell" amount.
      #
      #   @return [Integer, nil]
      optional :base_amount, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :base_amount

      # @!attribute [r] base_currency
      #   Currency to convert, often called the "sell" currency.
      #
      #   @return [Symbol, ModernTreasury::Models::Currency, nil]
      optional :base_currency, enum: -> { ModernTreasury::Models::Currency }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::Currency]
      #   attr_writer :base_currency

      # @!attribute [r] effective_at
      #   The timestamp until when the quoted rate is valid.
      #
      #   @return [Time, nil]
      optional :effective_at, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :effective_at

      # @!attribute [r] target_amount
      #   Amount in the lowest denomination of the `target_currency`, often called the
      #   "buy" amount.
      #
      #   @return [Integer, nil]
      optional :target_amount, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :target_amount

      # @!parse
      #   # @param internal_account_id [String]
      #   # @param target_currency [Symbol, ModernTreasury::Models::Currency]
      #   # @param base_amount [Integer]
      #   # @param base_currency [Symbol, ModernTreasury::Models::Currency]
      #   # @param effective_at [Time]
      #   # @param target_amount [Integer]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     internal_account_id:,
      #     target_currency:,
      #     base_amount: nil,
      #     base_currency: nil,
      #     effective_at: nil,
      #     target_amount: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void
    end
  end
end
