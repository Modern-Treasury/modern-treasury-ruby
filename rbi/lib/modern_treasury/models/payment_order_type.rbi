# typed: strong

module ModernTreasury
  module Models
    # One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`,
    #   `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`,
    #   `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
    module PaymentOrderType
      extend ModernTreasury::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::PaymentOrderType) }
      OrSymbol = T.type_alias { T.any(Symbol, ModernTreasury::Models::PaymentOrderType::TaggedSymbol) }

      ACH = T.let(:ach, ModernTreasury::Models::PaymentOrderType::OrSymbol)
      AU_BECS = T.let(:au_becs, ModernTreasury::Models::PaymentOrderType::OrSymbol)
      BACS = T.let(:bacs, ModernTreasury::Models::PaymentOrderType::OrSymbol)
      BOOK = T.let(:book, ModernTreasury::Models::PaymentOrderType::OrSymbol)
      CARD = T.let(:card, ModernTreasury::Models::PaymentOrderType::OrSymbol)
      CHATS = T.let(:chats, ModernTreasury::Models::PaymentOrderType::OrSymbol)
      CHECK = T.let(:check, ModernTreasury::Models::PaymentOrderType::OrSymbol)
      CROSS_BORDER = T.let(:cross_border, ModernTreasury::Models::PaymentOrderType::OrSymbol)
      DK_NETS = T.let(:dk_nets, ModernTreasury::Models::PaymentOrderType::OrSymbol)
      EFT = T.let(:eft, ModernTreasury::Models::PaymentOrderType::OrSymbol)
      HU_ICS = T.let(:hu_ics, ModernTreasury::Models::PaymentOrderType::OrSymbol)
      INTERAC = T.let(:interac, ModernTreasury::Models::PaymentOrderType::OrSymbol)
      MASAV = T.let(:masav, ModernTreasury::Models::PaymentOrderType::OrSymbol)
      MX_CCEN = T.let(:mx_ccen, ModernTreasury::Models::PaymentOrderType::OrSymbol)
      NEFT = T.let(:neft, ModernTreasury::Models::PaymentOrderType::OrSymbol)
      NICS = T.let(:nics, ModernTreasury::Models::PaymentOrderType::OrSymbol)
      NZ_BECS = T.let(:nz_becs, ModernTreasury::Models::PaymentOrderType::OrSymbol)
      PL_ELIXIR = T.let(:pl_elixir, ModernTreasury::Models::PaymentOrderType::OrSymbol)
      PROVXCHANGE = T.let(:provxchange, ModernTreasury::Models::PaymentOrderType::OrSymbol)
      RO_SENT = T.let(:ro_sent, ModernTreasury::Models::PaymentOrderType::OrSymbol)
      RTP = T.let(:rtp, ModernTreasury::Models::PaymentOrderType::OrSymbol)
      SE_BANKGIROT = T.let(:se_bankgirot, ModernTreasury::Models::PaymentOrderType::OrSymbol)
      SEN = T.let(:sen, ModernTreasury::Models::PaymentOrderType::OrSymbol)
      SEPA = T.let(:sepa, ModernTreasury::Models::PaymentOrderType::OrSymbol)
      SG_GIRO = T.let(:sg_giro, ModernTreasury::Models::PaymentOrderType::OrSymbol)
      SIC = T.let(:sic, ModernTreasury::Models::PaymentOrderType::OrSymbol)
      SIGNET = T.let(:signet, ModernTreasury::Models::PaymentOrderType::OrSymbol)
      SKNBI = T.let(:sknbi, ModernTreasury::Models::PaymentOrderType::OrSymbol)
      WIRE = T.let(:wire, ModernTreasury::Models::PaymentOrderType::OrSymbol)
      ZENGIN = T.let(:zengin, ModernTreasury::Models::PaymentOrderType::OrSymbol)
    end
  end
end
