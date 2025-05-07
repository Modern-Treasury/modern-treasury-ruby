# typed: strong

module ModernTreasury
  module Models
    # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
    # sepa, signet, wire.
    module ExpectedPaymentType
      extend ModernTreasury::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, ModernTreasury::ExpectedPaymentType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ACH = T.let(:ach, ModernTreasury::ExpectedPaymentType::TaggedSymbol)
      AU_BECS =
        T.let(:au_becs, ModernTreasury::ExpectedPaymentType::TaggedSymbol)
      BACS = T.let(:bacs, ModernTreasury::ExpectedPaymentType::TaggedSymbol)
      BOOK = T.let(:book, ModernTreasury::ExpectedPaymentType::TaggedSymbol)
      CARD = T.let(:card, ModernTreasury::ExpectedPaymentType::TaggedSymbol)
      CHATS = T.let(:chats, ModernTreasury::ExpectedPaymentType::TaggedSymbol)
      CHECK = T.let(:check, ModernTreasury::ExpectedPaymentType::TaggedSymbol)
      CROSS_BORDER =
        T.let(:cross_border, ModernTreasury::ExpectedPaymentType::TaggedSymbol)
      DK_NETS =
        T.let(:dk_nets, ModernTreasury::ExpectedPaymentType::TaggedSymbol)
      EFT = T.let(:eft, ModernTreasury::ExpectedPaymentType::TaggedSymbol)
      HU_ICS = T.let(:hu_ics, ModernTreasury::ExpectedPaymentType::TaggedSymbol)
      INTERAC =
        T.let(:interac, ModernTreasury::ExpectedPaymentType::TaggedSymbol)
      MASAV = T.let(:masav, ModernTreasury::ExpectedPaymentType::TaggedSymbol)
      MX_CCEN =
        T.let(:mx_ccen, ModernTreasury::ExpectedPaymentType::TaggedSymbol)
      NEFT = T.let(:neft, ModernTreasury::ExpectedPaymentType::TaggedSymbol)
      NICS = T.let(:nics, ModernTreasury::ExpectedPaymentType::TaggedSymbol)
      NZ_BECS =
        T.let(:nz_becs, ModernTreasury::ExpectedPaymentType::TaggedSymbol)
      PL_ELIXIR =
        T.let(:pl_elixir, ModernTreasury::ExpectedPaymentType::TaggedSymbol)
      PROVXCHANGE =
        T.let(:provxchange, ModernTreasury::ExpectedPaymentType::TaggedSymbol)
      RO_SENT =
        T.let(:ro_sent, ModernTreasury::ExpectedPaymentType::TaggedSymbol)
      RTP = T.let(:rtp, ModernTreasury::ExpectedPaymentType::TaggedSymbol)
      SE_BANKGIROT =
        T.let(:se_bankgirot, ModernTreasury::ExpectedPaymentType::TaggedSymbol)
      SEN = T.let(:sen, ModernTreasury::ExpectedPaymentType::TaggedSymbol)
      SEPA = T.let(:sepa, ModernTreasury::ExpectedPaymentType::TaggedSymbol)
      SG_GIRO =
        T.let(:sg_giro, ModernTreasury::ExpectedPaymentType::TaggedSymbol)
      SIC = T.let(:sic, ModernTreasury::ExpectedPaymentType::TaggedSymbol)
      SIGNET = T.let(:signet, ModernTreasury::ExpectedPaymentType::TaggedSymbol)
      SKNBI = T.let(:sknbi, ModernTreasury::ExpectedPaymentType::TaggedSymbol)
      WIRE = T.let(:wire, ModernTreasury::ExpectedPaymentType::TaggedSymbol)
      ZENGIN = T.let(:zengin, ModernTreasury::ExpectedPaymentType::TaggedSymbol)

      sig do
        override.returns(
          T::Array[ModernTreasury::ExpectedPaymentType::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
