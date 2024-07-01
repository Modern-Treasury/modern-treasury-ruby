# frozen_string_literal: true

module ModernTreasury
  module Models
    class Transaction < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] amount
      #   Value in specified currency's smallest unit. e.g. $10 would be represented as 1000.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] as_of_date
      #   The date on which the transaction occurred.
      #   @return [String]
      required :as_of_date, String

      # @!attribute [rw] as_of_time
      #   The time on which the transaction occurred. Depending on the granularity of the timestamp information received from the bank, it may be `null`.
      #   @return [String]
      required :as_of_time, String

      # @!attribute [rw] created_at
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] currency
      #   Currency that this transaction is denominated in.
      #   @return [Symbol]
      required :currency,
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

      # @!attribute [rw] direction
      #   Either `credit` or `debit`.
      #   @return [String]
      required :direction, String

      # @!attribute [rw] discarded_at
      #   @return [String]
      required :discarded_at, String

      # @!attribute [rw] foreign_exchange_rate
      #   Associated serialized foreign exchange rate information.
      #   @return [ModernTreasury::Models::Transaction::ForeignExchangeRate]
      required :foreign_exchange_rate, -> { ModernTreasury::Models::Transaction::ForeignExchangeRate }

      # @!attribute [rw] internal_account_id
      #   The ID of the relevant Internal Account.
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

      # @!attribute [rw] posted
      #   This field will be `true` if the transaction has posted to the account.
      #   @return [Boolean]
      required :posted, ModernTreasury::BooleanModel

      # @!attribute [rw] reconciled
      #   This field will be `true` if a transaction is reconciled by the Modern Treasury system. This means that it has transaction line items that sum up to the transaction's amount.
      #   @return [Boolean]
      required :reconciled, ModernTreasury::BooleanModel

      # @!attribute [rw] type
      #   The type of the transaction. Examples could be `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
      #   @return [Symbol]
      required :type,
               ModernTreasury::Enum.new(
                 :ach,
                 :au_becs,
                 :bacs,
                 :book,
                 :card,
                 :chats,
                 :check,
                 :cross_border,
                 :dk_nets,
                 :eft,
                 :hu_ics,
                 :interac,
                 :masav,
                 :mx_ccen,
                 :neft,
                 :nics,
                 :nz_becs,
                 :pl_elixir,
                 :provxchange,
                 :ro_sent,
                 :rtp,
                 :se_bankgirot,
                 :sen,
                 :sepa,
                 :sg_giro,
                 :sic,
                 :signet,
                 :sknbi,
                 :wire,
                 :zengin,
                 :other
               )

      # @!attribute [rw] updated_at
      #   @return [String]
      required :updated_at, String

      # @!attribute [rw] vendor_code
      #   When applicable, the bank-given code that determines the transaction's category. For most banks this is the BAI2/BTRS transaction code.
      #   @return [String]
      required :vendor_code, String

      # @!attribute [rw] vendor_code_type
      #   The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`, `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`, `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`, `swift`, `us_bank`, or others.
      #   @return [Symbol]
      required :vendor_code_type,
               ModernTreasury::Enum.new(
                 :bai2,
                 :bankprov,
                 :bnk_dev,
                 :cleartouch,
                 :column,
                 :cross_river,
                 :currencycloud,
                 :dc_bank,
                 :dwolla,
                 :evolve,
                 :goldman_sachs,
                 :iso20022,
                 :jpmc,
                 :mx,
                 :plaid,
                 :pnc,
                 :rspec_vendor,
                 :signet,
                 :silvergate,
                 :swift,
                 :us_bank,
                 :user
               )

      # @!attribute [rw] vendor_customer_id
      #   An identifier given to this transaction by the bank, often `null`.
      #   @return [String]
      required :vendor_customer_id, String

      # @!attribute [rw] vendor_id
      #   An identifier given to this transaction by the bank.
      #   @return [String]
      required :vendor_id, String

      # @!attribute [rw] details
      #   This field contains additional information that the bank provided about the transaction. This is structured data. Some of the data in here might overlap with what is in the `vendor_description`. For example, the OBI could be a part of the vendor description, and it would also be included in here. The attributes that are passed through the details field will vary based on your banking partner. Currently, the following keys may be in the details object: `originator_name`, `originator_to_beneficiary_information`.
      #   @return [Hash]
      optional :details, Hash

      # @!attribute [rw] vendor_description
      #   The transaction detail text that often appears in on your bank statement and in your banking portal.
      #   @return [String]
      optional :vendor_description, String

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
