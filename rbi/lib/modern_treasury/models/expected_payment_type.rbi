# typed: strong

module ModernTreasury
  module Models
    # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
    # sepa, signet, wire.
    module ExpectedPaymentType
      extend ModernTreasury::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::ExpectedPaymentType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ACH = T.let(:ach, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)
      AU_BECS = T.let(:au_becs, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)
      BACS = T.let(:bacs, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)
      BOOK = T.let(:book, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)
      CARD = T.let(:card, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)
      CHATS = T.let(:chats, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)
      CHECK = T.let(:check, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)
      CROSS_BORDER = T.let(:cross_border, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)
      DK_NETS = T.let(:dk_nets, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)
      EFT = T.let(:eft, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)
      HU_ICS = T.let(:hu_ics, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)
      INTERAC = T.let(:interac, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)
      MASAV = T.let(:masav, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)
      MX_CCEN = T.let(:mx_ccen, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)
      NEFT = T.let(:neft, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)
      NICS = T.let(:nics, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)
      NZ_BECS = T.let(:nz_becs, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)
      PL_ELIXIR = T.let(:pl_elixir, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)
      PROVXCHANGE = T.let(:provxchange, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)
      RO_SENT = T.let(:ro_sent, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)
      RTP = T.let(:rtp, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)
      SE_BANKGIROT = T.let(:se_bankgirot, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)
      SEN = T.let(:sen, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)
      SEPA = T.let(:sepa, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)
      SG_GIRO = T.let(:sg_giro, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)
      SIC = T.let(:sic, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)
      SIGNET = T.let(:signet, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)
      SKNBI = T.let(:sknbi, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)
      WIRE = T.let(:wire, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)
      ZENGIN = T.let(:zengin, ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol)

      sig { override.returns(T::Array[ModernTreasury::Models::ExpectedPaymentType::TaggedSymbol]) }
      def self.values; end
    end
  end
end
