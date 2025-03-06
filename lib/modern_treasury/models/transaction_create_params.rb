# frozen_string_literal: true

module ModernTreasury
  module Models
    class TransactionCreateParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute amount
      #   Value in specified currency's smallest unit. e.g. $10 would be represented
      #     as 1000.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute as_of_date
      #   The date on which the transaction occurred.
      #
      #   @return [Date, nil]
      required :as_of_date, Date, nil?: true

      # @!attribute direction
      #   Either `credit` or `debit`.
      #
      #   @return [String]
      required :direction, String

      # @!attribute internal_account_id
      #   The ID of the relevant Internal Account.
      #
      #   @return [String]
      required :internal_account_id, String

      # @!attribute vendor_code
      #   When applicable, the bank-given code that determines the transaction's category.
      #     For most banks this is the BAI2/BTRS transaction code.
      #
      #   @return [String, nil]
      required :vendor_code, String, nil?: true

      # @!attribute vendor_code_type
      #   The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
      #     `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
      #     `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
      #     `swift`, `us_bank`, or others.
      #
      #   @return [String, nil]
      required :vendor_code_type, String, nil?: true

      # @!attribute [r] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!attribute [r] posted
      #   This field will be `true` if the transaction has posted to the account.
      #
      #   @return [Boolean, nil]
      optional :posted, ModernTreasury::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :posted

      # @!attribute type
      #   The type of the transaction. Examples could be
      #     `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
      #
      #   @return [Symbol, ModernTreasury::Models::TransactionCreateParams::Type, nil]
      optional :type, enum: -> { ModernTreasury::Models::TransactionCreateParams::Type }, nil?: true

      # @!attribute vendor_description
      #   The transaction detail text that often appears in on your bank statement and in
      #     your banking portal.
      #
      #   @return [String, nil]
      optional :vendor_description, String, nil?: true

      # @!parse
      #   # @param amount [Integer]
      #   # @param as_of_date [Date, nil]
      #   # @param direction [String]
      #   # @param internal_account_id [String]
      #   # @param vendor_code [String, nil]
      #   # @param vendor_code_type [String, nil]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param posted [Boolean]
      #   # @param type [Symbol, ModernTreasury::Models::TransactionCreateParams::Type, nil]
      #   # @param vendor_description [String, nil]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     amount:,
      #     as_of_date:,
      #     direction:,
      #     internal_account_id:,
      #     vendor_code:,
      #     vendor_code_type:,
      #     metadata: nil,
      #     posted: nil,
      #     type: nil,
      #     vendor_description: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @abstract
      #
      # The type of the transaction. Examples could be
      #   `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
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

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
