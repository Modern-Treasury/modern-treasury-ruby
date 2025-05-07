# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Transactions#create
    class Transaction < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   Value in specified currency's smallest unit. e.g. $10 would be represented
      #   as 1000.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute as_of_date
      #   The date on which the transaction occurred.
      #
      #   @return [Date, nil]
      required :as_of_date, Date, nil?: true

      # @!attribute as_of_time
      #   The time on which the transaction occurred. Depending on the granularity of the
      #   timestamp information received from the bank, it may be `null`.
      #
      #   @return [Time, nil]
      required :as_of_time, Time, nil?: true

      # @!attribute as_of_timezone
      #   The timezone in which the `as_of_time` is represented. Can be `null` if the bank
      #   does not provide timezone info.
      #
      #   @return [String, nil]
      required :as_of_timezone, String, nil?: true

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   Currency that this transaction is denominated in.
      #
      #   @return [Symbol, ModernTreasury::Currency]
      required :currency, enum: -> { ModernTreasury::Currency }

      # @!attribute custom_identifiers
      #   An object containing key-value pairs, each with a custom identifier as the key
      #   and a string value.
      #
      #   @return [Hash{Symbol=>String}]
      required :custom_identifiers, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute direction
      #   Either `credit` or `debit`.
      #
      #   @return [String]
      required :direction, String

      # @!attribute discarded_at
      #
      #   @return [Time, nil]
      required :discarded_at, Time, nil?: true

      # @!attribute foreign_exchange_rate
      #   Associated serialized foreign exchange rate information.
      #
      #   @return [ModernTreasury::Transaction::ForeignExchangeRate, nil]
      required :foreign_exchange_rate, -> { ModernTreasury::Transaction::ForeignExchangeRate }, nil?: true

      # @!attribute internal_account_id
      #   The ID of the relevant Internal Account.
      #
      #   @return [String]
      required :internal_account_id, String

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute posted
      #   This field will be `true` if the transaction has posted to the account.
      #
      #   @return [Boolean]
      required :posted, ModernTreasury::Internal::Type::Boolean

      # @!attribute reconciled
      #   This field will be `true` if a transaction is reconciled by the Modern Treasury
      #   system. This means that it has transaction line items that sum up to the
      #   transaction's amount.
      #
      #   @return [Boolean]
      required :reconciled, ModernTreasury::Internal::Type::Boolean

      # @!attribute type
      #   The type of the transaction. Examples could be
      #   `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
      #
      #   @return [Symbol, ModernTreasury::Transaction::Type]
      required :type, enum: -> { ModernTreasury::Transaction::Type }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute vendor_code
      #   When applicable, the bank-given code that determines the transaction's category.
      #   For most banks this is the BAI2/BTRS transaction code.
      #
      #   @return [String, nil]
      required :vendor_code, String, nil?: true

      # @!attribute vendor_code_type
      #   The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
      #   `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
      #   `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
      #   `swift`, `us_bank`, or others.
      #
      #   @return [Symbol, ModernTreasury::Transaction::VendorCodeType, nil]
      required :vendor_code_type, enum: -> { ModernTreasury::Transaction::VendorCodeType }, nil?: true

      # @!attribute vendor_customer_id
      #   An identifier given to this transaction by the bank, often `null`.
      #
      #   @return [String, nil]
      required :vendor_customer_id, String, nil?: true

      # @!attribute vendor_id
      #   An identifier given to this transaction by the bank.
      #
      #   @return [String, nil]
      required :vendor_id, String, nil?: true

      # @!attribute details
      #   This field contains additional information that the bank provided about the
      #   transaction. This is structured data. Some of the data in here might overlap
      #   with what is in the `vendor_description`. For example, the OBI could be a part
      #   of the vendor description, and it would also be included in here. The attributes
      #   that are passed through the details field will vary based on your banking
      #   partner. Currently, the following keys may be in the details object:
      #   `originator_name`, `originator_to_beneficiary_information`.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :details, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute vendor_description
      #   The transaction detail text that often appears in on your bank statement and in
      #   your banking portal.
      #
      #   @return [String, nil]
      optional :vendor_description, String, nil?: true

      # @!method initialize(id:, amount:, as_of_date:, as_of_time:, as_of_timezone:, created_at:, currency:, custom_identifiers:, direction:, discarded_at:, foreign_exchange_rate:, internal_account_id:, live_mode:, metadata:, object:, posted:, reconciled:, type:, updated_at:, vendor_code:, vendor_code_type:, vendor_customer_id:, vendor_id:, details: nil, vendor_description: nil)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Transaction} for more details.
      #
      #   @param id [String]
      #
      #   @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented as 10
      #
      #   @param as_of_date [Date, nil] The date on which the transaction occurred.
      #
      #   @param as_of_time [Time, nil] The time on which the transaction occurred. Depending on the granularity of the
      #
      #   @param as_of_timezone [String, nil] The timezone in which the `as_of_time` is represented. Can be `null` if the bank
      #
      #   @param created_at [Time]
      #
      #   @param currency [Symbol, ModernTreasury::Currency] Currency that this transaction is denominated in.
      #
      #   @param custom_identifiers [Hash{Symbol=>String}] An object containing key-value pairs, each with a custom identifier as the key a
      #
      #   @param direction [String] Either `credit` or `debit`.
      #
      #   @param discarded_at [Time, nil]
      #
      #   @param foreign_exchange_rate [ModernTreasury::Transaction::ForeignExchangeRate, nil] Associated serialized foreign exchange rate information.
      #
      #   @param internal_account_id [String] The ID of the relevant Internal Account.
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param object [String]
      #
      #   @param posted [Boolean] This field will be `true` if the transaction has posted to the account.
      #
      #   @param reconciled [Boolean] This field will be `true` if a transaction is reconciled by the Modern Treasury
      #
      #   @param type [Symbol, ModernTreasury::Transaction::Type] The type of the transaction. Examples could be `card, `ach`, `wire`, `check`, `r
      #
      #   @param updated_at [Time]
      #
      #   @param vendor_code [String, nil] When applicable, the bank-given code that determines the transaction's category.
      #
      #   @param vendor_code_type [Symbol, ModernTreasury::Transaction::VendorCodeType, nil] The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`, `bnk
      #
      #   @param vendor_customer_id [String, nil] An identifier given to this transaction by the bank, often `null`.
      #
      #   @param vendor_id [String, nil] An identifier given to this transaction by the bank.
      #
      #   @param details [Hash{Symbol=>String}] This field contains additional information that the bank provided about the tran
      #
      #   @param vendor_description [String, nil] The transaction detail text that often appears in on your bank statement and in

      # @see ModernTreasury::Transaction#foreign_exchange_rate
      class ForeignExchangeRate < ModernTreasury::Internal::Type::BaseModel
        # @!attribute base_amount
        #   Amount in the lowest denomination of the `base_currency` to convert, often
        #   called the "sell" amount.
        #
        #   @return [Integer]
        required :base_amount, Integer

        # @!attribute base_currency
        #   Currency to convert, often called the "sell" currency.
        #
        #   @return [Symbol, ModernTreasury::Currency]
        required :base_currency, enum: -> { ModernTreasury::Currency }

        # @!attribute exponent
        #   The exponent component of the rate. The decimal is calculated as `value` / (10 ^
        #   `exponent`).
        #
        #   @return [Integer]
        required :exponent, Integer

        # @!attribute rate_string
        #   A string representation of the rate.
        #
        #   @return [String]
        required :rate_string, String

        # @!attribute target_amount
        #   Amount in the lowest denomination of the `target_currency`, often called the
        #   "buy" amount.
        #
        #   @return [Integer]
        required :target_amount, Integer

        # @!attribute target_currency
        #   Currency to convert the `base_currency` to, often called the "buy" currency.
        #
        #   @return [Symbol, ModernTreasury::Currency]
        required :target_currency, enum: -> { ModernTreasury::Currency }

        # @!attribute value
        #   The whole number component of the rate. The decimal is calculated as `value` /
        #   (10 ^ `exponent`).
        #
        #   @return [Integer]
        required :value, Integer

        # @!method initialize(base_amount:, base_currency:, exponent:, rate_string:, target_amount:, target_currency:, value:)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Transaction::ForeignExchangeRate} for more details.
        #
        #   Associated serialized foreign exchange rate information.
        #
        #   @param base_amount [Integer] Amount in the lowest denomination of the `base_currency` to convert, often calle
        #
        #   @param base_currency [Symbol, ModernTreasury::Currency] Currency to convert, often called the "sell" currency.
        #
        #   @param exponent [Integer] The exponent component of the rate. The decimal is calculated as `value` / (10 ^
        #
        #   @param rate_string [String] A string representation of the rate.
        #
        #   @param target_amount [Integer] Amount in the lowest denomination of the `target_currency`, often called the "bu
        #
        #   @param target_currency [Symbol, ModernTreasury::Currency] Currency to convert the `base_currency` to, often called the "buy" currency.
        #
        #   @param value [Integer] The whole number component of the rate. The decimal is calculated as `value` / (
      end

      # The type of the transaction. Examples could be
      # `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
      #
      # @see ModernTreasury::Transaction#type
      module Type
        extend ModernTreasury::Internal::Type::Enum

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

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
      # `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
      # `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
      # `swift`, `us_bank`, or others.
      #
      # @see ModernTreasury::Transaction#vendor_code_type
      module VendorCodeType
        extend ModernTreasury::Internal::Type::Enum

        BAI2 = :bai2
        BANKING_CIRCLE = :banking_circle
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
        PAYPAL = :paypal
        PLAID = :plaid
        PNC = :pnc
        RSPEC_VENDOR = :rspec_vendor
        SIGNET = :signet
        SILVERGATE = :silvergate
        SWIFT = :swift
        US_BANK = :us_bank
        USER = :user

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
