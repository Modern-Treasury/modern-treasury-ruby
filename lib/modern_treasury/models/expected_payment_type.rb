# frozen_string_literal: true

module ModernTreasury
  module Models
    # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
    #   sepa, signet, wire.
    #
    # @example
    # ```ruby
    # case expected_payment_type
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
    class ExpectedPaymentType < ModernTreasury::Enum
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
