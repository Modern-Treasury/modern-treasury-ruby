# frozen_string_literal: true

module ModernTreasury
  module Models
    class ReconciliationRule < ModernTreasury::Internal::Type::BaseModel
      # @!attribute amount_lower_bound
      #   The lowest amount this expected payment may be equal to. Value in specified
      #   currency's smallest unit. e.g. $10 would be represented as 1000.
      #
      #   @return [Integer]
      required :amount_lower_bound, Integer

      # @!attribute amount_upper_bound
      #   The highest amount this expected payment may be equal to. Value in specified
      #   currency's smallest unit. e.g. $10 would be represented as 1000.
      #
      #   @return [Integer]
      required :amount_upper_bound, Integer

      # @!attribute direction
      #   One of credit or debit. When you are receiving money, use credit. When you are
      #   being charged, use debit.
      #
      #   @return [Symbol, ModernTreasury::Models::ReconciliationRule::Direction]
      required :direction, enum: -> { ModernTreasury::ReconciliationRule::Direction }

      # @!attribute internal_account_id
      #   The ID of the Internal Account for the expected payment
      #
      #   @return [String]
      required :internal_account_id, String

      # @!attribute counterparty_id
      #   The ID of the counterparty you expect for this payment
      #
      #   @return [String, nil]
      optional :counterparty_id, String, nil?: true

      # @!attribute currency
      #   Must conform to ISO 4217. Defaults to the currency of the internal account
      #
      #   @return [Symbol, ModernTreasury::Models::Currency, nil]
      optional :currency, enum: -> { ModernTreasury::Currency }

      # @!attribute custom_identifiers
      #   A hash of custom identifiers for this payment
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :custom_identifiers, ModernTreasury::Internal::Type::HashOf[String], nil?: true

      # @!attribute date_lower_bound
      #   The earliest date the payment may come in. Format is yyyy-mm-dd
      #
      #   @return [Date, nil]
      optional :date_lower_bound, Date, nil?: true

      # @!attribute date_upper_bound
      #   The latest date the payment may come in. Format is yyyy-mm-dd
      #
      #   @return [Date, nil]
      optional :date_upper_bound, Date, nil?: true

      # @!attribute type
      #   One of ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
      #   sepa, signet wire
      #
      #   @return [Symbol, ModernTreasury::Models::ReconciliationRule::Type, nil]
      optional :type, enum: -> { ModernTreasury::ReconciliationRule::Type }, nil?: true

      # @!method initialize(amount_lower_bound:, amount_upper_bound:, direction:, internal_account_id:, counterparty_id: nil, currency: nil, custom_identifiers: nil, date_lower_bound: nil, date_upper_bound: nil, type: nil)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::ReconciliationRule} for more details.
      #
      #   @param amount_lower_bound [Integer] The lowest amount this expected payment may be equal to. Value in specified curr
      #
      #   @param amount_upper_bound [Integer] The highest amount this expected payment may be equal to. Value in specified cur
      #
      #   @param direction [Symbol, ModernTreasury::Models::ReconciliationRule::Direction] One of credit or debit. When you are receiving money, use credit. When you are b
      #
      #   @param internal_account_id [String] The ID of the Internal Account for the expected payment
      #
      #   @param counterparty_id [String, nil] The ID of the counterparty you expect for this payment
      #
      #   @param currency [Symbol, ModernTreasury::Models::Currency] Must conform to ISO 4217. Defaults to the currency of the internal account
      #
      #   @param custom_identifiers [Hash{Symbol=>String}, nil] A hash of custom identifiers for this payment
      #
      #   @param date_lower_bound [Date, nil] The earliest date the payment may come in. Format is yyyy-mm-dd
      #
      #   @param date_upper_bound [Date, nil] The latest date the payment may come in. Format is yyyy-mm-dd
      #
      #   @param type [Symbol, ModernTreasury::Models::ReconciliationRule::Type, nil] One of ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen, sep

      # One of credit or debit. When you are receiving money, use credit. When you are
      # being charged, use debit.
      #
      # @see ModernTreasury::Models::ReconciliationRule#direction
      module Direction
        extend ModernTreasury::Internal::Type::Enum

        CREDIT = :credit
        DEBIT = :debit

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # One of ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
      # sepa, signet wire
      #
      # @see ModernTreasury::Models::ReconciliationRule#type
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

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
