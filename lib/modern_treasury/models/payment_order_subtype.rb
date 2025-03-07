# frozen_string_literal: true

module ModernTreasury
  module Models
    # @abstract
    #
    # An additional layer of classification for the type of payment order you are
    #   doing. This field is only used for `ach` payment orders currently. For `ach`
    #   payment orders, the `subtype` represents the SEC code. We currently support
    #   `CCD`, `PPD`, `IAT`, `CTX`, `WEB`, `CIE`, and `TEL`.
    class PaymentOrderSubtype < ModernTreasury::Enum
      BACS_NEW_INSTRUCTION = :"0C"
      BACS_CANCELLATION_INSTRUCTION = :"0N"
      BACS_CONVERSION_INSTRUCTION = :"0S"
      CCD = :CCD
      CIE = :CIE
      CTX = :CTX
      IAT = :IAT
      PPD = :PPD
      TEL = :TEL
      WEB = :WEB
      AU_BECS = :au_becs
      BACS = :bacs
      CHATS = :chats
      DK_NETS = :dk_nets
      EFT = :eft
      HU_ICS = :hu_ics
      MASAV = :masav
      MX_CCEN = :mx_ccen
      NEFT = :neft
      NICS = :nics
      NZ_BECS = :nz_becs
      PL_ELIXIR = :pl_elixir
      RO_SENT = :ro_sent
      SE_BANKGIROT = :se_bankgirot
      SEPA = :sepa
      SG_GIRO = :sg_giro
      SIC = :sic
      SKNBI = :sknbi
      ZENGIN = :zengin

      finalize!
    end
  end
end
