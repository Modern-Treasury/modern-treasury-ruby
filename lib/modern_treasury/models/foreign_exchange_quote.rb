# frozen_string_literal: true

module ModernTreasury
  module Models
    class ForeignExchangeQuote < ModernTreasury::BaseModel
      # @!attribute id
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute effective_at
      #   The timestamp until when the quoted rate is valid.
      #   @return [Time]
      required :effective_at, Time

      # @!attribute expires_at
      #   The timestamp until which the quote must be booked by.
      #   @return [Time]
      required :expires_at, Time

      # @!attribute foreign_exchange_indicator
      #   Either `fixed_to_variable` if the `base_amount` was specified, or `variable_to_fixed` if the `target_amount` was specified when requesting the quote.
      #   @return [String]
      required :foreign_exchange_indicator, String

      # @!attribute foreign_exchange_rate
      #   The serialized rate information represented by this quote.
      #   @return [ModernTreasury::Models::ForeignExchangeQuote::ForeignExchangeRate]
      required :foreign_exchange_rate,
               -> {
                 ModernTreasury::Models::ForeignExchangeQuote::ForeignExchangeRate
               }

      # @!attribute internal_account_id
      #   The ID for the `InternalAccount` this quote is associated with.
      #   @return [String]
      required :internal_account_id, String

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      required :metadata, Hash

      # @!attribute object
      #   @return [String]
      required :object, String

      # @!attribute updated_at
      #   @return [Time]
      required :updated_at, Time

      # @!attribute vendor_id
      #   This vendor assigned ID for this quote.
      #   @return [String]
      optional :vendor_id, String

      class ForeignExchangeRate < ModernTreasury::BaseModel
        # @!attribute base_amount
        #   Amount in the lowest denomination of the `base_currency` to convert, often called the "sell" amount.
        #   @return [Integer]
        required :base_amount, Integer

        # @!attribute base_currency
        #   Currency to convert, often called the "sell" currency.
        #   @return [Symbol, ModernTreasury::Models::Currency]
        required :base_currency, enum: -> { ModernTreasury::Models::Currency }

        # @!attribute exponent
        #   The exponent component of the rate. The decimal is calculated as `value` / (10 ^ `exponent`).
        #   @return [Integer]
        required :exponent, Integer

        # @!attribute rate_string
        #   A string representation of the rate.
        #   @return [String]
        required :rate_string, String

        # @!attribute target_amount
        #   Amount in the lowest denomination of the `target_currency`, often called the "buy" amount.
        #   @return [Integer]
        required :target_amount, Integer

        # @!attribute target_currency
        #   Currency to convert the `base_currency` to, often called the "buy" currency.
        #   @return [Symbol, ModernTreasury::Models::Currency]
        required :target_currency, enum: -> { ModernTreasury::Models::Currency }

        # @!attribute value
        #   The whole number component of the rate. The decimal is calculated as `value` / (10 ^ `exponent`).
        #   @return [Integer]
        required :value, Integer

        # @!parse
        #   # Create a new instance of ForeignExchangeRate from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Integer] :base_amount Amount in the lowest denomination of the `base_currency` to convert, often
        #   #     called the "sell" amount.
        #   #   @option data [String] :base_currency Currency to convert, often called the "sell" currency.
        #   #   @option data [Integer] :exponent The exponent component of the rate. The decimal is calculated as `value` / (10 ^
        #   #     `exponent`).
        #   #   @option data [String] :rate_string A string representation of the rate.
        #   #   @option data [Integer] :target_amount Amount in the lowest denomination of the `target_currency`, often called the
        #   #     "buy" amount.
        #   #   @option data [String] :target_currency Currency to convert the `base_currency` to, often called the "buy" currency.
        #   #   @option data [Integer] :value The whole number component of the rate. The decimal is calculated as `value` /
        #   #     (10 ^ `exponent`).
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of ForeignExchangeQuote from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [String] :created_at
      #   #   @option data [String] :effective_at The timestamp until when the quoted rate is valid.
      #   #   @option data [String] :expires_at The timestamp until which the quote must be booked by.
      #   #   @option data [String] :foreign_exchange_indicator Either `fixed_to_variable` if the `base_amount` was specified, or
      #   #     `variable_to_fixed` if the `target_amount` was specified when requesting the
      #   #     quote.
      #   #   @option data [Object] :foreign_exchange_rate The serialized rate information represented by this quote.
      #   #   @option data [String] :internal_account_id The ID for the `InternalAccount` this quote is associated with.
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   #     strings.
      #   #   @option data [String] :object
      #   #   @option data [String] :updated_at
      #   #   @option data [String, nil] :vendor_id This vendor assigned ID for this quote.
      #   def initialize(data = {}) = super
    end
  end
end
