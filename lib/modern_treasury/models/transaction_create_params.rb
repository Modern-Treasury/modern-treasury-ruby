# frozen_string_literal: true

module ModernTreasury
  module Models
    class TransactionCreateParams < ModernTreasury::BaseModel
      # @!attribute amount
      #   Value in specified currency's smallest unit. e.g. $10 would be represented as 1000.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute as_of_date
      #   The date on which the transaction occurred.
      #   @return [Date]
      required :as_of_date, Date

      # @!attribute direction
      #   Either `credit` or `debit`.
      #   @return [String]
      required :direction, String

      # @!attribute internal_account_id
      #   The ID of the relevant Internal Account.
      #   @return [String]
      required :internal_account_id, String

      # @!attribute vendor_code
      #   When applicable, the bank-given code that determines the transaction's category. For most banks this is the BAI2/BTRS transaction code.
      #   @return [String]
      required :vendor_code, String

      # @!attribute vendor_code_type
      #   The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`, `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`, `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`, `swift`, `us_bank`, or others.
      #   @return [String]
      required :vendor_code_type, String

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute posted
      #   This field will be `true` if the transaction has posted to the account.
      #   @return [Boolean]
      optional :posted, ModernTreasury::BooleanModel

      # @!attribute type
      #   The type of the transaction. Examples could be `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
      #   @return [Symbol, ModernTreasury::Models::TransactionCreateParams::Type]
      optional :type, enum: -> { ModernTreasury::Models::TransactionCreateParams::Type }

      # @!attribute vendor_description
      #   The transaction detail text that often appears in on your bank statement and in your banking portal.
      #   @return [String]
      optional :vendor_description, String

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
    end
  end
end
