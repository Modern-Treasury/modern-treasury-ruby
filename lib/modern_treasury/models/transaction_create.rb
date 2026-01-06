# frozen_string_literal: true

module ModernTreasury
  module Models
    class TransactionCreate < ModernTreasury::Internal::Type::BaseModel
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
      #   @return [String, nil]
      required :vendor_code_type, String, nil?: true

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute posted
      #   This field will be `true` if the transaction has posted to the account.
      #
      #   @return [Boolean, nil]
      optional :posted, ModernTreasury::Internal::Type::Boolean

      # @!attribute type
      #   The type of the transaction. Examples could be
      #   `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
      #
      #   @return [Symbol, ModernTreasury::Models::TransactionCreate::Type, nil]
      optional :type, enum: -> { ModernTreasury::TransactionCreate::Type }, nil?: true

      # @!attribute vendor_customer_id
      #   An identifier given to this transaction by the bank, often `null`.
      #
      #   @return [String, nil]
      optional :vendor_customer_id, String, nil?: true

      # @!attribute vendor_description
      #   The transaction detail text that often appears in on your bank statement and in
      #   your banking portal.
      #
      #   @return [String, nil]
      optional :vendor_description, String, nil?: true

      # @!method initialize(amount:, as_of_date:, direction:, internal_account_id:, vendor_code:, vendor_code_type:, metadata: nil, posted: nil, type: nil, vendor_customer_id: nil, vendor_description: nil)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::TransactionCreate} for more details.
      #
      #   @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented as 10
      #
      #   @param as_of_date [Date, nil] The date on which the transaction occurred.
      #
      #   @param direction [String] Either `credit` or `debit`.
      #
      #   @param internal_account_id [String] The ID of the relevant Internal Account.
      #
      #   @param vendor_code [String, nil] When applicable, the bank-given code that determines the transaction's category.
      #
      #   @param vendor_code_type [String, nil] The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`, `bnk
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param posted [Boolean] This field will be `true` if the transaction has posted to the account.
      #
      #   @param type [Symbol, ModernTreasury::Models::TransactionCreate::Type, nil] The type of the transaction. Examples could be `card, `ach`, `wire`, `check`, `r
      #
      #   @param vendor_customer_id [String, nil] An identifier given to this transaction by the bank, often `null`.
      #
      #   @param vendor_description [String, nil] The transaction detail text that often appears in on your bank statement and in

      # The type of the transaction. Examples could be
      # `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
      #
      # @see ModernTreasury::Models::TransactionCreate#type
      module Type
        extend ModernTreasury::Internal::Type::Enum

        ACH = :ach
        AU_BECS = :au_becs
        BACS = :bacs
        BASE = :base
        BOOK = :book
        CARD = :card
        CHATS = :chats
        CHECK = :check
        CROSS_BORDER = :cross_border
        DK_NETS = :dk_nets
        EFT = :eft
        ETHEREUM = :ethereum
        GB_FPS = :gb_fps
        HU_ICS = :hu_ics
        INTERAC = :interac
        MASAV = :masav
        MX_CCEN = :mx_ccen
        NEFT = :neft
        NICS = :nics
        NZ_BECS = :nz_becs
        PL_ELIXIR = :pl_elixir
        POLYGON = :polygon
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
        SOLANA = :solana
        WIRE = :wire
        ZENGIN = :zengin
        OTHER = :other

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
