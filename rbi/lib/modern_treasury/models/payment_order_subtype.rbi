# typed: strong

module ModernTreasury
  module Models
    class PaymentOrderSubtype < ModernTreasury::Enum
      abstract!

      BACS_NEW_INSTRUCTION = T.let(:"0C", T.nilable(Symbol))
      BACS_CANCELLATION_INSTRUCTION = T.let(:"0N", T.nilable(Symbol))
      BACS_CONVERSION_INSTRUCTION = T.let(:"0S", T.nilable(Symbol))
      CCD = T.let(:CCD, T.nilable(Symbol))
      CIE = T.let(:CIE, T.nilable(Symbol))
      CTX = T.let(:CTX, T.nilable(Symbol))
      IAT = T.let(:IAT, T.nilable(Symbol))
      PPD = T.let(:PPD, T.nilable(Symbol))
      TEL = T.let(:TEL, T.nilable(Symbol))
      WEB = T.let(:WEB, T.nilable(Symbol))
      AU_BECS = T.let(:au_becs, T.nilable(Symbol))
      BACS = T.let(:bacs, T.nilable(Symbol))
      CHATS = T.let(:chats, T.nilable(Symbol))
      DK_NETS = T.let(:dk_nets, T.nilable(Symbol))
      EFT = T.let(:eft, T.nilable(Symbol))
      HU_ICS = T.let(:hu_ics, T.nilable(Symbol))
      MASAV = T.let(:masav, T.nilable(Symbol))
      MX_CCEN = T.let(:mx_ccen, T.nilable(Symbol))
      NEFT = T.let(:neft, T.nilable(Symbol))
      NICS = T.let(:nics, T.nilable(Symbol))
      NZ_BECS = T.let(:nz_becs, T.nilable(Symbol))
      PL_ELIXIR = T.let(:pl_elixir, T.nilable(Symbol))
      RO_SENT = T.let(:ro_sent, T.nilable(Symbol))
      SE_BANKGIROT = T.let(:se_bankgirot, T.nilable(Symbol))
      SEPA = T.let(:sepa, T.nilable(Symbol))
      SG_GIRO = T.let(:sg_giro, T.nilable(Symbol))
      SIC = T.let(:sic, T.nilable(Symbol))
      SKNBI = T.let(:sknbi, T.nilable(Symbol))
      ZENGIN = T.let(:zengin, T.nilable(Symbol))

      sig { returns(T::Array[Symbol]) }
      def self.values; end
    end
  end
end
