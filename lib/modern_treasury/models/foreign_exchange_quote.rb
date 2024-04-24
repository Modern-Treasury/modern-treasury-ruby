# frozen_string_literal: true

module ModernTreasury
  module Models
    class ForeignExchangeQuote < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] created_at
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] effective_at
      #   The timestamp until when the quoted rate is valid.
      #   @return [String]
      required :effective_at, String

      # @!attribute [rw] expires_at
      #   The timestamp until which the quote must be booked by.
      #   @return [String]
      required :expires_at, String

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
      #   @return [String]
      required :updated_at, String

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
        #   @return [Symbol]
        required :base_currency,
                 ModernTreasury::Enum.new(
                   :AED,
                   :AFN,
                   :ALL,
                   :AMD,
                   :ANG,
                   :AOA,
                   :ARS,
                   :AUD,
                   :AWG,
                   :AZN,
                   :BAM,
                   :BBD,
                   :BCH,
                   :BDT,
                   :BGN,
                   :BHD,
                   :BIF,
                   :BMD,
                   :BND,
                   :BOB,
                   :BRL,
                   :BSD,
                   :BTC,
                   :BTN,
                   :BWP,
                   :BYN,
                   :BYR,
                   :BZD,
                   :CAD,
                   :CDF,
                   :CHF,
                   :CLF,
                   :CLP,
                   :CNH,
                   :CNY,
                   :COP,
                   :CRC,
                   :CUC,
                   :CUP,
                   :CVE,
                   :CZK,
                   :DJF,
                   :DKK,
                   :DOP,
                   :DZD,
                   :EEK,
                   :EGP,
                   :ERN,
                   :ETB,
                   :EUR,
                   :FJD,
                   :FKP,
                   :GBP,
                   :GBX,
                   :GEL,
                   :GGP,
                   :GHS,
                   :GIP,
                   :GMD,
                   :GNF,
                   :GTQ,
                   :GYD,
                   :HKD,
                   :HNL,
                   :HRK,
                   :HTG,
                   :HUF,
                   :IDR,
                   :ILS,
                   :IMP,
                   :INR,
                   :IQD,
                   :IRR,
                   :ISK,
                   :JEP,
                   :JMD,
                   :JOD,
                   :JPY,
                   :KES,
                   :KGS,
                   :KHR,
                   :KMF,
                   :KPW,
                   :KRW,
                   :KWD,
                   :KYD,
                   :KZT,
                   :LAK,
                   :LBP,
                   :LKR,
                   :LRD,
                   :LSL,
                   :LTL,
                   :LVL,
                   :LYD,
                   :MAD,
                   :MDL,
                   :MGA,
                   :MKD,
                   :MMK,
                   :MNT,
                   :MOP,
                   :MRO,
                   :MRU,
                   :MTL,
                   :MUR,
                   :MVR,
                   :MWK,
                   :MXN,
                   :MYR,
                   :MZN,
                   :NAD,
                   :NGN,
                   :NIO,
                   :NOK,
                   :NPR,
                   :NZD,
                   :OMR,
                   :PAB,
                   :PEN,
                   :PGK,
                   :PHP,
                   :PKR,
                   :PLN,
                   :PYG,
                   :QAR,
                   :RON,
                   :RSD,
                   :RUB,
                   :RWF,
                   :SAR,
                   :SBD,
                   :SCR,
                   :SDG,
                   :SEK,
                   :SGD,
                   :SHP,
                   :SKK,
                   :SLL,
                   :SOS,
                   :SRD,
                   :SSP,
                   :STD,
                   :SVC,
                   :SYP,
                   :SZL,
                   :THB,
                   :TJS,
                   :TMM,
                   :TMT,
                   :TND,
                   :TOP,
                   :TRY,
                   :TTD,
                   :TWD,
                   :TZS,
                   :UAH,
                   :UGX,
                   :USD,
                   :UYU,
                   :UZS,
                   :VEF,
                   :VES,
                   :VND,
                   :VUV,
                   :WST,
                   :XAF,
                   :XAG,
                   :XAU,
                   :XBA,
                   :XBB,
                   :XBC,
                   :XBD,
                   :XCD,
                   :XDR,
                   :XFU,
                   :XOF,
                   :XPD,
                   :XPF,
                   :XPT,
                   :XTS,
                   :YER,
                   :ZAR,
                   :ZMK,
                   :ZMW,
                   :ZWD,
                   :ZWL,
                   :ZWN,
                   :ZWR
                 )

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
        #   @return [Symbol]
        required :target_currency,
                 ModernTreasury::Enum.new(
                   :AED,
                   :AFN,
                   :ALL,
                   :AMD,
                   :ANG,
                   :AOA,
                   :ARS,
                   :AUD,
                   :AWG,
                   :AZN,
                   :BAM,
                   :BBD,
                   :BCH,
                   :BDT,
                   :BGN,
                   :BHD,
                   :BIF,
                   :BMD,
                   :BND,
                   :BOB,
                   :BRL,
                   :BSD,
                   :BTC,
                   :BTN,
                   :BWP,
                   :BYN,
                   :BYR,
                   :BZD,
                   :CAD,
                   :CDF,
                   :CHF,
                   :CLF,
                   :CLP,
                   :CNH,
                   :CNY,
                   :COP,
                   :CRC,
                   :CUC,
                   :CUP,
                   :CVE,
                   :CZK,
                   :DJF,
                   :DKK,
                   :DOP,
                   :DZD,
                   :EEK,
                   :EGP,
                   :ERN,
                   :ETB,
                   :EUR,
                   :FJD,
                   :FKP,
                   :GBP,
                   :GBX,
                   :GEL,
                   :GGP,
                   :GHS,
                   :GIP,
                   :GMD,
                   :GNF,
                   :GTQ,
                   :GYD,
                   :HKD,
                   :HNL,
                   :HRK,
                   :HTG,
                   :HUF,
                   :IDR,
                   :ILS,
                   :IMP,
                   :INR,
                   :IQD,
                   :IRR,
                   :ISK,
                   :JEP,
                   :JMD,
                   :JOD,
                   :JPY,
                   :KES,
                   :KGS,
                   :KHR,
                   :KMF,
                   :KPW,
                   :KRW,
                   :KWD,
                   :KYD,
                   :KZT,
                   :LAK,
                   :LBP,
                   :LKR,
                   :LRD,
                   :LSL,
                   :LTL,
                   :LVL,
                   :LYD,
                   :MAD,
                   :MDL,
                   :MGA,
                   :MKD,
                   :MMK,
                   :MNT,
                   :MOP,
                   :MRO,
                   :MRU,
                   :MTL,
                   :MUR,
                   :MVR,
                   :MWK,
                   :MXN,
                   :MYR,
                   :MZN,
                   :NAD,
                   :NGN,
                   :NIO,
                   :NOK,
                   :NPR,
                   :NZD,
                   :OMR,
                   :PAB,
                   :PEN,
                   :PGK,
                   :PHP,
                   :PKR,
                   :PLN,
                   :PYG,
                   :QAR,
                   :RON,
                   :RSD,
                   :RUB,
                   :RWF,
                   :SAR,
                   :SBD,
                   :SCR,
                   :SDG,
                   :SEK,
                   :SGD,
                   :SHP,
                   :SKK,
                   :SLL,
                   :SOS,
                   :SRD,
                   :SSP,
                   :STD,
                   :SVC,
                   :SYP,
                   :SZL,
                   :THB,
                   :TJS,
                   :TMM,
                   :TMT,
                   :TND,
                   :TOP,
                   :TRY,
                   :TTD,
                   :TWD,
                   :TZS,
                   :UAH,
                   :UGX,
                   :USD,
                   :UYU,
                   :UZS,
                   :VEF,
                   :VES,
                   :VND,
                   :VUV,
                   :WST,
                   :XAF,
                   :XAG,
                   :XAU,
                   :XBA,
                   :XBB,
                   :XBC,
                   :XBD,
                   :XCD,
                   :XDR,
                   :XFU,
                   :XOF,
                   :XPD,
                   :XPF,
                   :XPT,
                   :XTS,
                   :YER,
                   :ZAR,
                   :ZMK,
                   :ZMW,
                   :ZWD,
                   :ZWL,
                   :ZWN,
                   :ZWR
                 )

        # @!attribute [rw] value
        #   The whole number component of the rate. The decimal is calculated as `value` / (10 ^ `exponent`).
        #   @return [Integer]
        required :value, Integer
      end
    end
  end
end
