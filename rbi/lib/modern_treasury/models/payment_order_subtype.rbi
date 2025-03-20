# typed: strong

module ModernTreasury
  module Models
    # An additional layer of classification for the type of payment order you are
    #   doing. This field is only used for `ach` payment orders currently. For `ach`
    #   payment orders, the `subtype` represents the SEC code. We currently support
    #   `CCD`, `PPD`, `IAT`, `CTX`, `WEB`, `CIE`, and `TEL`.
    module PaymentOrderSubtype
      extend ModernTreasury::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::PaymentOrderSubtype) }
      OrSymbol = T.type_alias { T.any(Symbol, ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol) }

      BACS_NEW_INSTRUCTION = T.let(:"0C", ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)
      BACS_CANCELLATION_INSTRUCTION = T.let(:"0N", ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)
      BACS_CONVERSION_INSTRUCTION = T.let(:"0S", ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)
      CCD = T.let(:CCD, ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)
      CIE = T.let(:CIE, ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)
      CTX = T.let(:CTX, ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)
      IAT = T.let(:IAT, ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)
      PPD = T.let(:PPD, ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)
      TEL = T.let(:TEL, ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)
      WEB = T.let(:WEB, ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)
      AU_BECS = T.let(:au_becs, ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)
      BACS = T.let(:bacs, ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)
      CHATS = T.let(:chats, ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)
      DK_NETS = T.let(:dk_nets, ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)
      EFT = T.let(:eft, ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)
      HU_ICS = T.let(:hu_ics, ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)
      MASAV = T.let(:masav, ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)
      MX_CCEN = T.let(:mx_ccen, ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)
      NEFT = T.let(:neft, ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)
      NICS = T.let(:nics, ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)
      NZ_BECS = T.let(:nz_becs, ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)
      PL_ELIXIR = T.let(:pl_elixir, ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)
      RO_SENT = T.let(:ro_sent, ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)
      SE_BANKGIROT = T.let(:se_bankgirot, ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)
      SEPA = T.let(:sepa, ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)
      SG_GIRO = T.let(:sg_giro, ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)
      SIC = T.let(:sic, ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)
      SKNBI = T.let(:sknbi, ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)
      ZENGIN = T.let(:zengin, ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)
    end
  end
end
