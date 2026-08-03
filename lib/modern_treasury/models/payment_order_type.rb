# frozen_string_literal: true

module ModernTreasury
  module Models
    # One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `book`, `rtp`, `sepa`,
    # `bacs`, `au_becs`, `neft`, `nics`, `nz_national_clearing_code`, `sic`, `zengin`.
    module PaymentOrderType
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
      GB_FPS = :gb_fps
      MASAV = :masav
      MX_CCEN = :mx_ccen
      NEFT = :neft
      NICS = :nics
      NZ_BECS = :nz_becs
      PL_ELIXIR = :pl_elixir
      RTP = :rtp
      SE_BANKGIROT = :se_bankgirot
      SEPA = :sepa
      SG_GIRO = :sg_giro
      SIC = :sic
      STABLECOIN = :stablecoin
      WIRE = :wire
      ZENGIN = :zengin

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
