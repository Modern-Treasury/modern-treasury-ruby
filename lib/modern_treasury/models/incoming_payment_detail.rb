# frozen_string_literal: true

module ModernTreasury
  module Models
    class IncomingPaymentDetail < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] amount
      #   Value in specified currency's smallest unit. e.g. $10 would be represented as 1000.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] as_of_date
      #   The date on which the corresponding transaction will occur.
      #   @return [String]
      required :as_of_date, String

      # @!attribute [rw] created_at
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] currency
      #   The currency of the incoming payment detail.
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

      # @!attribute [rw] data
      #   The raw data from the payment pre-notification file that we get from the bank.
      #   @return [Hash]
      required :data, Hash

      # @!attribute [rw] direction
      #   One of `credit` or `debit`.
      #   @return [Symbol]
      required :direction, ModernTreasury::Enum.new(:credit, :debit)

      # @!attribute [rw] internal_account_id
      #   The ID of the Internal Account for the incoming payment detail. This is always present.
      #   @return [String]
      required :internal_account_id, String

      # @!attribute [rw] ledger_transaction_id
      #   The ID of the ledger transaction linked to the incoming payment detail or `null`.
      #   @return [String]
      required :ledger_transaction_id, String

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

      # @!attribute [rw] originating_account_number_safe
      #   The last 4 digits of the originating account_number for the incoming payment detail.
      #   @return [String]
      required :originating_account_number_safe, String

      # @!attribute [rw] originating_account_number_type
      #   The type of the originating account number for the incoming payment detail.
      #   @return [Symbol]
      required :originating_account_number_type,
               ModernTreasury::Enum.new(:clabe, :hk_number, :iban, :nz_number, :other, :pan, :wallet_address)

      # @!attribute [rw] originating_routing_number
      #   The routing number of the originating account for the incoming payment detail.
      #   @return [String]
      required :originating_routing_number, String

      # @!attribute [rw] originating_routing_number_type
      #   The type of the originating routing number for the incoming payment detail.
      #   @return [Symbol]
      required :originating_routing_number_type,
               ModernTreasury::Enum.new(
                 :aba,
                 :au_bsb,
                 :br_codigo,
                 :ca_cpa,
                 :chips,
                 :cnaps,
                 :dk_interbank_clearing_code,
                 :gb_sort_code,
                 :hk_interbank_clearing_code,
                 :hu_interbank_clearing_code,
                 :id_sknbi_code,
                 :in_ifsc,
                 :jp_zengin_code,
                 :mx_bank_identifier,
                 :my_branch_code,
                 :nz_national_clearing_code,
                 :pl_national_clearing_code,
                 :se_bankgiro_clearing_code,
                 :swift
               )

      # @!attribute [rw] status
      #   The current status of the incoming payment order. One of `pending`, `completed`, or `returned`.
      #   @return [Symbol]
      required :status, ModernTreasury::Enum.new(:completed, :pending, :returned)

      # @!attribute [rw] transaction_id
      #   The ID of the reconciled Transaction or `null`.
      #   @return [String]
      required :transaction_id, String

      # @!attribute [rw] transaction_line_item_id
      #   The ID of the reconciled Transaction Line Item or `null`.
      #   @return [String]
      required :transaction_line_item_id, String

      # @!attribute [rw] type
      #   One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or `wire`.
      #   @return [Symbol]
      required :type,
               ModernTreasury::Enum.new(:ach, :book, :check, :eft, :interac, :rtp, :sepa, :signet, :wire)

      # @!attribute [rw] updated_at
      #   @return [String]
      required :updated_at, String

      # @!attribute [rw] vendor_id
      #   The identifier of the vendor bank.
      #   @return [String]
      required :vendor_id, String

      # @!attribute [rw] virtual_account
      #   If the incoming payment detail is in a virtual account, the serialized virtual account object.
      #   @return [ModernTreasury::Models::VirtualAccount]
      required :virtual_account, -> { ModernTreasury::Models::VirtualAccount }

      # @!attribute [rw] virtual_account_id
      #   If the incoming payment detail is in a virtual account, the ID of the Virtual Account.
      #   @return [String]
      required :virtual_account_id, String

      # @!attribute [rw] originating_account_number
      #   The account number of the originating account for the incoming payment detail.
      #   @return [String]
      optional :originating_account_number, String
    end
  end
end
