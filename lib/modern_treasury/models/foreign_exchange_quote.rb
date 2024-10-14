# frozen_string_literal: true

module ModernTreasury
  module Models
    class ForeignExchangeQuote < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] effective_at
      #   The timestamp until when the quoted rate is valid.
      #   @return [Time]
      required :effective_at, Time

      # @!attribute [rw] expires_at
      #   The timestamp until which the quote must be booked by.
      #   @return [Time]
      required :expires_at, Time

      # @!attribute [rw] foreign_exchange_indicator
      #   Either `fixed_to_variable` if the `base_amount` was specified, or `variable_to_fixed` if the `target_amount` was specified when requesting the quote.
      #   @return [String]
      required :foreign_exchange_indicator, String

      # @!attribute [rw] foreign_exchange_rate
      #   The serialized rate information represented by this quote.
      #   @return [ModernTreasury::Models::ForeignExchangeQuote::ForeignExchangeRate]
      required :foreign_exchange_rate,
               lambda {
                 ModernTreasury::Models::ForeignExchangeQuote::ForeignExchangeRate
               }

      # @!attribute [rw] internal_account_id
      #   The ID for the `InternalAccount` this quote is associated with.
      #   @return [String]
      required :internal_account_id, String

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      required :metadata, Hash

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      # @!attribute [rw] vendor_id
      #   This vendor assigned ID for this quote.
      #   @return [String]
      optional :vendor_id, String

      class ForeignExchangeRate < BaseModel
        # @!attribute [rw] base_amount
        #   Amount in the lowest denomination of the `base_currency` to convert, often called the "sell" amount.
        #   @return [Integer]
        required :base_amount, Integer

        # @!attribute [rw] base_currency
        #   Currency to convert, often called the "sell" currency.
        #   @return [Symbol, ModernTreasury::Models::Currency]
        required :base_currency, enum: -> { ModernTreasury::Models::Currency }

        # @!attribute [rw] exponent
        #   The exponent component of the rate. The decimal is calculated as `value` / (10 ^ `exponent`).
        #   @return [Integer]
        required :exponent, Integer

        # @!attribute [rw] rate_string
        #   A string representation of the rate.
        #   @return [String]
        required :rate_string, String

        # @!attribute [rw] target_amount
        #   Amount in the lowest denomination of the `target_currency`, often called the "buy" amount.
        #   @return [Integer]
        required :target_amount, Integer

        # @!attribute [rw] target_currency
        #   Currency to convert the `base_currency` to, often called the "buy" currency.
        #   @return [Symbol, ModernTreasury::Models::Currency]
        required :target_currency, enum: -> { ModernTreasury::Models::Currency }

        # @!attribute [rw] value
        #   The whole number component of the rate. The decimal is calculated as `value` / (10 ^ `exponent`).
        #   @return [Integer]
        required :value, Integer

        # Create a new instance of ForeignExchangeRate from a Hash of raw data.
        #
        # @overload initialize(base_amount: nil, base_currency: nil, exponent: nil, rate_string: nil, target_amount: nil, target_currency: nil, value: nil)
        # @param base_amount [Integer] Amount in the lowest denomination of the `base_currency` to convert, often
        #   called the "sell" amount.
        # @param base_currency [String] Currency to convert, often called the "sell" currency.
        # @param exponent [Integer] The exponent component of the rate. The decimal is calculated as `value` / (10 ^
        #   `exponent`).
        # @param rate_string [String] A string representation of the rate.
        # @param target_amount [Integer] Amount in the lowest denomination of the `target_currency`, often called the
        #   "buy" amount.
        # @param target_currency [String] Currency to convert the `base_currency` to, often called the "buy" currency.
        # @param value [Integer] The whole number component of the rate. The decimal is calculated as `value` /
        #   (10 ^ `exponent`).
        def initialize(data = {})
          super
        end
      end

      # Create a new instance of ForeignExchangeQuote from a Hash of raw data.
      #
      # @overload initialize(id: nil, created_at: nil, effective_at: nil, expires_at: nil, foreign_exchange_indicator: nil, foreign_exchange_rate: nil, internal_account_id: nil, live_mode: nil, metadata: nil, object: nil, updated_at: nil, vendor_id: nil)
      # @param id [String]
      # @param created_at [String]
      # @param effective_at [String] The timestamp until when the quoted rate is valid.
      # @param expires_at [String] The timestamp until which the quote must be booked by.
      # @param foreign_exchange_indicator [String] Either `fixed_to_variable` if the `base_amount` was specified, or
      #   `variable_to_fixed` if the `target_amount` was specified when requesting the
      #   quote.
      # @param foreign_exchange_rate [Object] The serialized rate information represented by this quote.
      # @param internal_account_id [String] The ID for the `InternalAccount` this quote is associated with.
      # @param live_mode [Hash] This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      # @param metadata [Hash] Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @param object [String]
      # @param updated_at [String]
      # @param vendor_id [String] This vendor assigned ID for this quote.
      def initialize(data = {})
        super
      end
    end
  end
end
