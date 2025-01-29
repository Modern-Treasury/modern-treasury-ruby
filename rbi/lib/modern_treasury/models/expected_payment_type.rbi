# typed: strong

module ModernTreasury
  module Models
    class ExpectedPaymentType < ModernTreasury::Enum
      abstract!

      ACH = T.let(:ach, T.nilable(Symbol))
      AU_BECS = T.let(:au_becs, T.nilable(Symbol))
      BACS = T.let(:bacs, T.nilable(Symbol))
      BOOK = T.let(:book, T.nilable(Symbol))
      CARD = T.let(:card, T.nilable(Symbol))
      CHATS = T.let(:chats, T.nilable(Symbol))
      CHECK = T.let(:check, T.nilable(Symbol))
      CROSS_BORDER = T.let(:cross_border, T.nilable(Symbol))
      DK_NETS = T.let(:dk_nets, T.nilable(Symbol))
      EFT = T.let(:eft, T.nilable(Symbol))
      HU_ICS = T.let(:hu_ics, T.nilable(Symbol))
      INTERAC = T.let(:interac, T.nilable(Symbol))
      MASAV = T.let(:masav, T.nilable(Symbol))
      MX_CCEN = T.let(:mx_ccen, T.nilable(Symbol))
      NEFT = T.let(:neft, T.nilable(Symbol))
      NICS = T.let(:nics, T.nilable(Symbol))
      NZ_BECS = T.let(:nz_becs, T.nilable(Symbol))
      PL_ELIXIR = T.let(:pl_elixir, T.nilable(Symbol))
      PROVXCHANGE = T.let(:provxchange, T.nilable(Symbol))
      RO_SENT = T.let(:ro_sent, T.nilable(Symbol))
      RTP = T.let(:rtp, T.nilable(Symbol))
      SE_BANKGIROT = T.let(:se_bankgirot, T.nilable(Symbol))
      SEN = T.let(:sen, T.nilable(Symbol))
      SEPA = T.let(:sepa, T.nilable(Symbol))
      SG_GIRO = T.let(:sg_giro, T.nilable(Symbol))
      SIC = T.let(:sic, T.nilable(Symbol))
      SIGNET = T.let(:signet, T.nilable(Symbol))
      SKNBI = T.let(:sknbi, T.nilable(Symbol))
      WIRE = T.let(:wire, T.nilable(Symbol))
      ZENGIN = T.let(:zengin, T.nilable(Symbol))

      sig { returns(T::Array[Symbol]) }
      def self.values; end
    end
  end
end
