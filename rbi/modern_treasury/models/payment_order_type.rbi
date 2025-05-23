# typed: strong

module ModernTreasury
  module Models
    # One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`,
    # `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`,
    # `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
    module PaymentOrderType
      extend ModernTreasury::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, ModernTreasury::PaymentOrderType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ACH = T.let(:ach, ModernTreasury::PaymentOrderType::TaggedSymbol)
      AU_BECS = T.let(:au_becs, ModernTreasury::PaymentOrderType::TaggedSymbol)
      BACS = T.let(:bacs, ModernTreasury::PaymentOrderType::TaggedSymbol)
      BASE = T.let(:base, ModernTreasury::PaymentOrderType::TaggedSymbol)
      BOOK = T.let(:book, ModernTreasury::PaymentOrderType::TaggedSymbol)
      CARD = T.let(:card, ModernTreasury::PaymentOrderType::TaggedSymbol)
      CHATS = T.let(:chats, ModernTreasury::PaymentOrderType::TaggedSymbol)
      CHECK = T.let(:check, ModernTreasury::PaymentOrderType::TaggedSymbol)
      CROSS_BORDER =
        T.let(:cross_border, ModernTreasury::PaymentOrderType::TaggedSymbol)
      DK_NETS = T.let(:dk_nets, ModernTreasury::PaymentOrderType::TaggedSymbol)
      EFT = T.let(:eft, ModernTreasury::PaymentOrderType::TaggedSymbol)
      ETHEREUM =
        T.let(:ethereum, ModernTreasury::PaymentOrderType::TaggedSymbol)
      HU_ICS = T.let(:hu_ics, ModernTreasury::PaymentOrderType::TaggedSymbol)
      INTERAC = T.let(:interac, ModernTreasury::PaymentOrderType::TaggedSymbol)
      MASAV = T.let(:masav, ModernTreasury::PaymentOrderType::TaggedSymbol)
      MX_CCEN = T.let(:mx_ccen, ModernTreasury::PaymentOrderType::TaggedSymbol)
      NEFT = T.let(:neft, ModernTreasury::PaymentOrderType::TaggedSymbol)
      NICS = T.let(:nics, ModernTreasury::PaymentOrderType::TaggedSymbol)
      NZ_BECS = T.let(:nz_becs, ModernTreasury::PaymentOrderType::TaggedSymbol)
      PL_ELIXIR =
        T.let(:pl_elixir, ModernTreasury::PaymentOrderType::TaggedSymbol)
      POLYGON = T.let(:polygon, ModernTreasury::PaymentOrderType::TaggedSymbol)
      PROVXCHANGE =
        T.let(:provxchange, ModernTreasury::PaymentOrderType::TaggedSymbol)
      RO_SENT = T.let(:ro_sent, ModernTreasury::PaymentOrderType::TaggedSymbol)
      RTP = T.let(:rtp, ModernTreasury::PaymentOrderType::TaggedSymbol)
      SE_BANKGIROT =
        T.let(:se_bankgirot, ModernTreasury::PaymentOrderType::TaggedSymbol)
      SEN = T.let(:sen, ModernTreasury::PaymentOrderType::TaggedSymbol)
      SEPA = T.let(:sepa, ModernTreasury::PaymentOrderType::TaggedSymbol)
      SG_GIRO = T.let(:sg_giro, ModernTreasury::PaymentOrderType::TaggedSymbol)
      SIC = T.let(:sic, ModernTreasury::PaymentOrderType::TaggedSymbol)
      SIGNET = T.let(:signet, ModernTreasury::PaymentOrderType::TaggedSymbol)
      SKNBI = T.let(:sknbi, ModernTreasury::PaymentOrderType::TaggedSymbol)
      SOLANA = T.let(:solana, ModernTreasury::PaymentOrderType::TaggedSymbol)
      WIRE = T.let(:wire, ModernTreasury::PaymentOrderType::TaggedSymbol)
      ZENGIN = T.let(:zengin, ModernTreasury::PaymentOrderType::TaggedSymbol)

      sig do
        override.returns(
          T::Array[ModernTreasury::PaymentOrderType::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
