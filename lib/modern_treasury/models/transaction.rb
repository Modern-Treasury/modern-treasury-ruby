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
      #   @return [Date]
      required :as_of_date, Date

      # @!attribute [rw] as_of_time
      #   The time on which the transaction occurred. Depending on the granularity of the timestamp information received from the bank, it may be `null`.
      #   @return [String]
      required :as_of_time, String

      # @!attribute [rw] as_of_timezone
      #   The timezone in which the `as_of_time` is represented. Can be `null` if the bank does not provide timezone info.
      #   @return [String]
      required :as_of_timezone, String

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] currency
      #   Currency that this transaction is denominated in.
      #   @return [Symbol, ModernTreasury::Models::Currency]
      required :currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute [rw] custom_identifiers
      #   An object containing key-value pairs, each with a custom identifier as the key and a string value.
      #   @return [Hash]
      required :custom_identifiers, Hash

      # @!attribute [rw] direction
      #   Either `credit` or `debit`.
      #   @return [String]
      required :direction, String

      # @!attribute [rw] discarded_at
      #   @return [Time]
      required :discarded_at, Time

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
      #   @return [Symbol, ModernTreasury::Models::Transaction::Type]
      required :type, enum: -> { ModernTreasury::Models::Transaction::Type }

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      # @!attribute [rw] vendor_code
      #   When applicable, the bank-given code that determines the transaction's category. For most banks this is the BAI2/BTRS transaction code.
      #   @return [String]
      required :vendor_code, String

      # @!attribute [rw] vendor_code_type
      #   The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`, `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`, `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`, `swift`, `us_bank`, or others.
      #   @return [Symbol, ModernTreasury::Models::Transaction::VendorCodeType]
      required :vendor_code_type, enum: -> { ModernTreasury::Models::Transaction::VendorCodeType }

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
      end

      # The type of the transaction. Examples could be `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
      class Type < ModernTreasury::Enum
        ACH = :ach
        AU_BECS = :au_becs
        BACS = :bacs
        BOOK = :book
        CARD = :card
        CHATS = :chats
        CHECK = :check
        CROSS_BORDER = :cross_border
        DK_NETS = :dk_nets
        EFT = :eft
        HU_ICS = :hu_ics
        INTERAC = :interac
        MASAV = :masav
        MX_CCEN = :mx_ccen
        NEFT = :neft
        NICS = :nics
        NZ_BECS = :nz_becs
        PL_ELIXIR = :pl_elixir
        PROVXCHANGE = :provxchange
        RO_SENT = :ro_sent
        RTP = :rtp
        SE_BANKGIROT = :se_bankgirot
        SEN = :sen
        SEPA = :sepa
        SG_GIRO = :sg_giro
        SIC = :sic
        SIGNET = :signet
        SKNBI = :sknbi
        WIRE = :wire
        ZENGIN = :zengin
        OTHER = :other
      end

      # The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`, `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`, `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`, `swift`, `us_bank`, or others.
      class VendorCodeType < ModernTreasury::Enum
        BAI2 = :bai2
        BANKPROV = :bankprov
        BNK_DEV = :bnk_dev
        CLEARTOUCH = :cleartouch
        COLUMN = :column
        CROSS_RIVER = :cross_river
        CURRENCYCLOUD = :currencycloud
        DC_BANK = :dc_bank
        DWOLLA = :dwolla
        EVOLVE = :evolve
        GOLDMAN_SACHS = :goldman_sachs
        ISO20022 = :iso20022
        JPMC = :jpmc
        MX = :mx
        PLAID = :plaid
        PNC = :pnc
        RSPEC_VENDOR = :rspec_vendor
        SIGNET = :signet
        SILVERGATE = :silvergate
        SWIFT = :swift
        US_BANK = :us_bank
        USER = :user
      end
    end
  end
end
