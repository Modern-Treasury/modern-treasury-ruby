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

      ACH = T.let(:ach, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      AU_BECS = T.let(:au_becs, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      BACS = T.let(:bacs, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      BOOK = T.let(:book, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      CARD = T.let(:card, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      CHATS = T.let(:chats, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      CHECK = T.let(:check, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      CROSS_BORDER = T.let(:cross_border, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      DK_NETS = T.let(:dk_nets, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      EFT = T.let(:eft, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      HU_ICS = T.let(:hu_ics, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      INTERAC = T.let(:interac, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      MASAV = T.let(:masav, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      MX_CCEN = T.let(:mx_ccen, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      NEFT = T.let(:neft, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      NICS = T.let(:nics, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      NZ_BECS = T.let(:nz_becs, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      PL_ELIXIR = T.let(:pl_elixir, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      PROVXCHANGE = T.let(:provxchange, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      RO_SENT = T.let(:ro_sent, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      RTP = T.let(:rtp, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      SE_BANKGIROT = T.let(:se_bankgirot, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      SEN = T.let(:sen, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      SEPA = T.let(:sepa, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      SG_GIRO = T.let(:sg_giro, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      SIC = T.let(:sic, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      SIGNET = T.let(:signet, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      SKNBI = T.let(:sknbi, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      WIRE = T.let(:wire, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      ZENGIN = T.let(:zengin, ModernTreasury::Models::PaymentOrderType::TaggedSymbol)

      class << self
        sig { override.returns(T::Array[ModernTreasury::Models::PaymentOrderType::TaggedSymbol]) }
        def values
        end
      end
    end
  end
end
