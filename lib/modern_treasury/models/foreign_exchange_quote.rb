# frozen_string_literal: true

module ModernTreasury
  module Models
    # @example
    # ```ruby
    # foreign_exchange_quote => {
    #   id: String,
    #   created_at: Time,
    #   effective_at: Time,
    #   expires_at: Time,
    #   foreign_exchange_indicator: String,
    #   **_
    # }
    # ```
    class ForeignExchangeQuote < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute effective_at
      #   The timestamp until when the quoted rate is valid.
      #
      #   @return [Time]
      required :effective_at, Time

      # @!attribute expires_at
      #   The timestamp until which the quote must be booked by.
      #
      #   @return [Time]
      required :expires_at, Time

      # @!attribute foreign_exchange_indicator
      #   Either `fixed_to_variable` if the `base_amount` was specified, or `variable_to_fixed` if the `target_amount` was specified when requesting the quote.
      #
      #   @return [String]
      required :foreign_exchange_indicator, String

      # @!attribute foreign_exchange_rate
      #   The serialized rate information represented by this quote.
      #
      #   @return [ModernTreasury::Models::ForeignExchangeQuote::ForeignExchangeRate]
      required :foreign_exchange_rate,
               -> {
                 ModernTreasury::Models::ForeignExchangeQuote::ForeignExchangeRate
               }

      # @!attribute internal_account_id
      #   The ID for the `InternalAccount` this quote is associated with.
      #
      #   @return [String]
      required :internal_account_id, String

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, ModernTreasury::HashOf[String]

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute vendor_id
      #   This vendor assigned ID for this quote.
      #
      #   @return [String]
      optional :vendor_id, String

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param created_at [String]
      #   #
      #   # @param effective_at [String] The timestamp until when the quoted rate is valid.
      #   #
      #   # @param expires_at [String] The timestamp until which the quote must be booked by.
      #   #
      #   # @param foreign_exchange_indicator [String] Either `fixed_to_variable` if the `base_amount` was specified, or
      #   #   `variable_to_fixed` if the `target_amount` was specified when requesting the
      #   #   quote.
      #   #
      #   # @param foreign_exchange_rate [ModernTreasury::Models::ForeignExchangeQuote::ForeignExchangeRate] The serialized rate information represented by this quote.
      #   #
      #   # @param internal_account_id [String] The ID for the `InternalAccount` this quote is associated with.
      #   #
      #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
      #   #   if it exists in the test environment.
      #   #
      #   # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   # @param object [String]
      #   #
      #   # @param updated_at [String]
      #   #
      #   # @param vendor_id [String] This vendor assigned ID for this quote.
      #   #
      #   def initialize(
      #     id:,
      #     created_at:,
      #     effective_at:,
      #     expires_at:,
      #     foreign_exchange_indicator:,
      #     foreign_exchange_rate:,
      #     internal_account_id:,
      #     live_mode:,
      #     metadata:,
      #     object:,
      #     updated_at:,
      #     vendor_id: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @example
      # ```ruby
      # foreign_exchange_rate => {
      #   base_amount: Integer,
      #   base_currency: enum: ModernTreasury::Models::Currency,
      #   exponent: Integer,
      #   rate_string: String,
      #   target_amount: Integer,
      #   **_
      # }
      # ```
      class ForeignExchangeRate < ModernTreasury::BaseModel
        # @!attribute base_amount
        #   Amount in the lowest denomination of the `base_currency` to convert, often called the "sell" amount.
        #
        #   @return [Integer]
        required :base_amount, Integer

        # @!attribute base_currency
        #   Currency to convert, often called the "sell" currency.
        #
        #   @return [Symbol, ModernTreasury::Models::Currency]
        required :base_currency, enum: -> { ModernTreasury::Models::Currency }

        # @!attribute exponent
        #   The exponent component of the rate. The decimal is calculated as `value` / (10 ^ `exponent`).
        #
        #   @return [Integer]
        required :exponent, Integer

        # @!attribute rate_string
        #   A string representation of the rate.
        #
        #   @return [String]
        required :rate_string, String

        # @!attribute target_amount
        #   Amount in the lowest denomination of the `target_currency`, often called the "buy" amount.
        #
        #   @return [Integer]
        required :target_amount, Integer

        # @!attribute target_currency
        #   Currency to convert the `base_currency` to, often called the "buy" currency.
        #
        #   @return [Symbol, ModernTreasury::Models::Currency]
        required :target_currency, enum: -> { ModernTreasury::Models::Currency }

        # @!attribute value
        #   The whole number component of the rate. The decimal is calculated as `value` / (10 ^ `exponent`).
        #
        #   @return [Integer]
        required :value, Integer

        # @!parse
        #   # The serialized rate information represented by this quote.
        #   #
        #   # @param base_amount [Integer] Amount in the lowest denomination of the `base_currency` to convert, often
        #   #   called the "sell" amount.
        #   #
        #   # @param base_currency [String] Currency to convert, often called the "sell" currency.
        #   #
        #   # @param exponent [Integer] The exponent component of the rate. The decimal is calculated as `value` / (10 ^
        #   #   `exponent`).
        #   #
        #   # @param rate_string [String] A string representation of the rate.
        #   #
        #   # @param target_amount [Integer] Amount in the lowest denomination of the `target_currency`, often called the
        #   #   "buy" amount.
        #   #
        #   # @param target_currency [String] Currency to convert the `base_currency` to, often called the "buy" currency.
        #   #
        #   # @param value [Integer] The whole number component of the rate. The decimal is calculated as `value` /
        #   #   (10 ^ `exponent`).
        #   #
        #   def initialize(base_amount:, base_currency:, exponent:, rate_string:, target_amount:, target_currency:, value:, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end
    end
  end
end
