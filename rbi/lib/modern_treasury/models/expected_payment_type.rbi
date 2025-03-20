# typed: strong

module ModernTreasury
  module Models
    # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
    #   sepa, signet, wire.
    module ExpectedPaymentType
      extend ModernTreasury::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::ExpectedPaymentType) }
      OrSymbol = T.type_alias { T.any(Symbol, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol) }

      ACH = T.let(:ach, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
      AU_BECS = T.let(:au_becs, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
      BACS = T.let(:bacs, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
      BOOK = T.let(:book, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
      CARD = T.let(:card, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
      CHATS = T.let(:chats, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
      CHECK = T.let(:check, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
      CROSS_BORDER = T.let(:cross_border, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
      DK_NETS = T.let(:dk_nets, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
      EFT = T.let(:eft, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
      HU_ICS = T.let(:hu_ics, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
      INTERAC = T.let(:interac, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
      MASAV = T.let(:masav, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
      MX_CCEN = T.let(:mx_ccen, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
      NEFT = T.let(:neft, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
      NICS = T.let(:nics, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
      NZ_BECS = T.let(:nz_becs, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
      PL_ELIXIR = T.let(:pl_elixir, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
      PROVXCHANGE = T.let(:provxchange, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
      RO_SENT = T.let(:ro_sent, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
      RTP = T.let(:rtp, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
      SE_BANKGIROT = T.let(:se_bankgirot, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
      SEN = T.let(:sen, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
      SEPA = T.let(:sepa, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
      SG_GIRO = T.let(:sg_giro, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
      SIC = T.let(:sic, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
      SIGNET = T.let(:signet, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
      SKNBI = T.let(:sknbi, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
      WIRE = T.let(:wire, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
      ZENGIN = T.let(:zengin, ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
    end
  end
end
