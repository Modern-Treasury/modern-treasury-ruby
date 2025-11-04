# typed: strong

module ModernTreasury
  module Models
    # An additional layer of classification for the type of payment order you are
    # doing. This field is only used for `ach` payment orders currently. For `ach`
    # payment orders, the `subtype` represents the SEC code. We currently support
    # `CCD`, `PPD`, `IAT`, `CTX`, `WEB`, `CIE`, and `TEL`.
    module PaymentOrderSubtype
      extend ModernTreasury::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, ModernTreasury::PaymentOrderSubtype) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      BACS_NEW_INSTRUCTION =
        T.let(:"0C", ModernTreasury::PaymentOrderSubtype::TaggedSymbol)
      BACS_CANCELLATION_INSTRUCTION =
        T.let(:"0N", ModernTreasury::PaymentOrderSubtype::TaggedSymbol)
      BACS_CONVERSION_INSTRUCTION =
        T.let(:"0S", ModernTreasury::PaymentOrderSubtype::TaggedSymbol)
      CCD = T.let(:CCD, ModernTreasury::PaymentOrderSubtype::TaggedSymbol)
      CIE = T.let(:CIE, ModernTreasury::PaymentOrderSubtype::TaggedSymbol)
      CTX = T.let(:CTX, ModernTreasury::PaymentOrderSubtype::TaggedSymbol)
      IAT = T.let(:IAT, ModernTreasury::PaymentOrderSubtype::TaggedSymbol)
      POS = T.let(:POS, ModernTreasury::PaymentOrderSubtype::TaggedSymbol)
      PPD = T.let(:PPD, ModernTreasury::PaymentOrderSubtype::TaggedSymbol)
      TEL = T.let(:TEL, ModernTreasury::PaymentOrderSubtype::TaggedSymbol)
      WEB = T.let(:WEB, ModernTreasury::PaymentOrderSubtype::TaggedSymbol)
      AU_BECS =
        T.let(:au_becs, ModernTreasury::PaymentOrderSubtype::TaggedSymbol)
      BACS = T.let(:bacs, ModernTreasury::PaymentOrderSubtype::TaggedSymbol)
      CHATS = T.let(:chats, ModernTreasury::PaymentOrderSubtype::TaggedSymbol)
      DK_NETS =
        T.let(:dk_nets, ModernTreasury::PaymentOrderSubtype::TaggedSymbol)
      EFT = T.let(:eft, ModernTreasury::PaymentOrderSubtype::TaggedSymbol)
      HU_ICS = T.let(:hu_ics, ModernTreasury::PaymentOrderSubtype::TaggedSymbol)
      MASAV = T.let(:masav, ModernTreasury::PaymentOrderSubtype::TaggedSymbol)
      MX_CCEN =
        T.let(:mx_ccen, ModernTreasury::PaymentOrderSubtype::TaggedSymbol)
      NEFT = T.let(:neft, ModernTreasury::PaymentOrderSubtype::TaggedSymbol)
      NICS = T.let(:nics, ModernTreasury::PaymentOrderSubtype::TaggedSymbol)
      NZ_BECS =
        T.let(:nz_becs, ModernTreasury::PaymentOrderSubtype::TaggedSymbol)
      PL_ELIXIR =
        T.let(:pl_elixir, ModernTreasury::PaymentOrderSubtype::TaggedSymbol)
      RO_SENT =
        T.let(:ro_sent, ModernTreasury::PaymentOrderSubtype::TaggedSymbol)
      SE_BANKGIROT =
        T.let(:se_bankgirot, ModernTreasury::PaymentOrderSubtype::TaggedSymbol)
      SEPA = T.let(:sepa, ModernTreasury::PaymentOrderSubtype::TaggedSymbol)
      SG_GIRO =
        T.let(:sg_giro, ModernTreasury::PaymentOrderSubtype::TaggedSymbol)
      SIC = T.let(:sic, ModernTreasury::PaymentOrderSubtype::TaggedSymbol)
      SKNBI = T.let(:sknbi, ModernTreasury::PaymentOrderSubtype::TaggedSymbol)
      ZENGIN = T.let(:zengin, ModernTreasury::PaymentOrderSubtype::TaggedSymbol)

      sig do
        override.returns(
          T::Array[ModernTreasury::PaymentOrderSubtype::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
