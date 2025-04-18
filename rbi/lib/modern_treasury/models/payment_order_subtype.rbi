# typed: strong

module ModernTreasury
  module Models
    # An additional layer of classification for the type of payment order you are
    # doing. This field is only used for `ach` payment orders currently. For `ach`
    # payment orders, the `subtype` represents the SEC code. We currently support
    # `CCD`, `PPD`, `IAT`, `CTX`, `WEB`, `CIE`, and `TEL`.
    module PaymentOrderSubtype
      extend ModernTreasury::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::PaymentOrderSubtype) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      BACS_NEW_INSTRUCTION = T.let(:"0C", ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)
      BACS_CANCELLATION_INSTRUCTION = T.let(:"0N", ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)
      BACS_CONVERSION_INSTRUCTION = T.let(:"0S", ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)
      CCD = T.let(:CCD, ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)
      CIE = T.let(:CIE, ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)
      CTX = T.let(:CTX, ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)
      IAT = T.let(:IAT, ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)
      PPD = T.let(:PPD, ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)
      TEL = T.let(:TEL, ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)
      WEB = T.let(:WEB, ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)
      AU_BECS = T.let(:au_becs, ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)
      BACS = T.let(:bacs, ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)
      CHATS = T.let(:chats, ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)
      DK_NETS = T.let(:dk_nets, ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)
      EFT = T.let(:eft, ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)
      HU_ICS = T.let(:hu_ics, ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)
      MASAV = T.let(:masav, ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)
      MX_CCEN = T.let(:mx_ccen, ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)
      NEFT = T.let(:neft, ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)
      NICS = T.let(:nics, ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)
      NZ_BECS = T.let(:nz_becs, ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)
      PL_ELIXIR = T.let(:pl_elixir, ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)
      RO_SENT = T.let(:ro_sent, ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)
      SE_BANKGIROT = T.let(:se_bankgirot, ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)
      SEPA = T.let(:sepa, ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)
      SG_GIRO = T.let(:sg_giro, ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)
      SIC = T.let(:sic, ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)
      SKNBI = T.let(:sknbi, ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)
      ZENGIN = T.let(:zengin, ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)

      sig { override.returns(T::Array[ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol]) }
      def self.values; end
    end
  end
end
