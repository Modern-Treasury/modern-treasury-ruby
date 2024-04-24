# frozen_string_literal: true

module ModernTreasury
  module Models
    class BalanceReport < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] as_of_date
      #   The date of the balance report in local time.
      #   @return [String]
      required :as_of_date, String

      # @!attribute [rw] as_of_time
      #   The time (24-hour clock) of the balance report in local time.
      #   @return [String]
      required :as_of_time, String

      # @!attribute [rw] balance_report_type
      #   The specific type of balance report. One of `intraday`, `previous_day`, `real_time`, or `other`.
      #   @return [Symbol]
      required :balance_report_type, ModernTreasury::Enum.new(:intraday, :other, :previous_day, :real_time)

      # @!attribute [rw] balances
      #   An array of `Balance` objects.
      #   @return [Array<ModernTreasury::Models::BalanceReport::Balance>]
      required :balances, ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::BalanceReport::Balance })

      # @!attribute [rw] created_at
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] internal_account_id
      #   The ID of one of your organization's Internal Accounts.
      #   @return [String]
      required :internal_account_id, String

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] updated_at
      #   @return [String]
      required :updated_at, String

      class Balance < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] amount
        #   The balance amount.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] balance_type
        #   The specific type of balance reported. One of `opening_ledger`, `closing_ledger`, `current_ledger`, `opening_available`, `opening_available_next_business_day`, `closing_available`, `current_available`, or `other`.
        #   @return [Symbol]
        required :balance_type,
                 ModernTreasury::Enum.new(
                   :closing_available,
                   :closing_ledger,
                   :current_available,
                   :current_ledger,
                   :opening_available,
                   :opening_available_next_business_day,
                   :opening_ledger,
                   :other
                 )

        # @!attribute [rw] created_at
        #   @return [String]
        required :created_at, String

        # @!attribute [rw] currency
        #   The currency of the balance.
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

        # @!attribute [rw] live_mode
        #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
        #   @return [Boolean]
        required :live_mode, ModernTreasury::BooleanModel

        # @!attribute [rw] object
        #   @return [String]
        required :object, String

        # @!attribute [rw] updated_at
        #   @return [String]
        required :updated_at, String

        # @!attribute [rw] vendor_code
        #   The code used by the bank when reporting this specific balance.
        #   @return [String]
        required :vendor_code, String

        # @!attribute [rw] vendor_code_type
        #   The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`, `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`, `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`, `swift`, or `us_bank`.
        #   @return [String]
        required :vendor_code_type, String
      end
    end
  end
end
