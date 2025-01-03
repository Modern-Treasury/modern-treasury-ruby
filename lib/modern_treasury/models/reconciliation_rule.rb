# frozen_string_literal: true

module ModernTreasury
  module Models
    class ReconciliationRule < ModernTreasury::BaseModel
      # @!attribute amount_lower_bound
      #   The lowest amount this expected payment may be equal to. Value in specified currency's smallest unit. e.g. $10 would be represented as 1000.
      #
      #   @return [Integer]
      required :amount_lower_bound, Integer

      # @!attribute amount_upper_bound
      #   The highest amount this expected payment may be equal to. Value in specified currency's smallest unit. e.g. $10 would be represented as 1000.
      #
      #   @return [Integer]
      required :amount_upper_bound, Integer

      # @!attribute direction
      #   One of credit or debit. When you are receiving money, use credit. When you are being charged, use debit.
      #
      #   @return [Symbol, ModernTreasury::Models::ReconciliationRule::Direction]
      required :direction, enum: -> { ModernTreasury::Models::ReconciliationRule::Direction }

      # @!attribute internal_account_id
      #   The ID of the Internal Account for the expected payment
      #
      #   @return [String]
      required :internal_account_id, String

      # @!attribute counterparty_id
      #   The ID of the counterparty you expect for this payment
      #
      #   @return [String, nil]
      optional :counterparty_id, String

      # @!attribute currency
      #   Must conform to ISO 4217. Defaults to the currency of the internal account
      #
      #   @return [Symbol, ModernTreasury::Models::Currency]
      optional :currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute custom_identifiers
      #   A hash of custom identifiers for this payment
      #
      #   @return [Hash{Symbol => String}, nil]
      optional :custom_identifiers, ModernTreasury::HashOf[String]

      # @!attribute date_lower_bound
      #   The earliest date the payment may come in. Format is yyyy-mm-dd
      #
      #   @return [Date, nil]
      optional :date_lower_bound, Date

      # @!attribute date_upper_bound
      #   The latest date the payment may come in. Format is yyyy-mm-dd
      #
      #   @return [Date, nil]
      optional :date_upper_bound, Date

      # @!attribute type
      #   One of ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen, sepa, signet wire
      #
      #   @return [Symbol, ModernTreasury::Models::ReconciliationRule::Type, nil]
      optional :type, enum: -> { ModernTreasury::Models::ReconciliationRule::Type }

      # @!parse
      #   # @param amount_lower_bound [Integer] The lowest amount this expected payment may be equal to. Value in specified
      #   #   currency's smallest unit. e.g. $10 would be represented as 1000.
      #   #
      #   # @param amount_upper_bound [Integer] The highest amount this expected payment may be equal to. Value in specified
      #   #   currency's smallest unit. e.g. $10 would be represented as 1000.
      #   #
      #   # @param direction [String] One of credit or debit. When you are receiving money, use credit. When you are
      #   #   being charged, use debit.
      #   #
      #   # @param internal_account_id [String] The ID of the Internal Account for the expected payment
      #   #
      #   # @param counterparty_id [String, nil] The ID of the counterparty you expect for this payment
      #   #
      #   # @param currency [String] Must conform to ISO 4217. Defaults to the currency of the internal account
      #   #
      #   # @param custom_identifiers [Hash{Symbol => String}, nil] A hash of custom identifiers for this payment
      #   #
      #   # @param date_lower_bound [String, nil] The earliest date the payment may come in. Format is yyyy-mm-dd
      #   #
      #   # @param date_upper_bound [String, nil] The latest date the payment may come in. Format is yyyy-mm-dd
      #   #
      #   # @param type [String, nil] One of ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
      #   #   sepa, signet wire
      #   #
      #   def initialize(
      #     amount_lower_bound:,
      #     amount_upper_bound:,
      #     direction:,
      #     internal_account_id:,
      #     counterparty_id: nil,
      #     currency: nil,
      #     custom_identifiers: nil,
      #     date_lower_bound: nil,
      #     date_upper_bound: nil,
      #     type: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # One of credit or debit. When you are receiving money, use credit. When you are being charged, use debit.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :credit
      #   # ...
      # in :debit
      #   # ...
      # end
      # ```
      class Direction < ModernTreasury::Enum
        CREDIT = :credit
        DEBIT = :debit

        finalize!
      end

      # One of ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen, sepa, signet wire
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :ach
      #   # ...
      # in :au_becs
      #   # ...
      # in :bacs
      #   # ...
      # in :book
      #   # ...
      # in :card
      #   # ...
      # in ...
      #   #...
      # end
      # ```
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

        finalize!
      end
    end
  end
end
