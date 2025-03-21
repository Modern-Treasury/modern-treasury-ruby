# typed: strong

module ModernTreasury
  module Models
    # Three-letter ISO currency code.
    module Currency
      extend ModernTreasury::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::Currency) }
      OrSymbol = T.type_alias { T.any(Symbol, ModernTreasury::Models::Currency::TaggedSymbol) }

      AED = T.let(:AED, ModernTreasury::Models::Currency::TaggedSymbol)
      AFN = T.let(:AFN, ModernTreasury::Models::Currency::TaggedSymbol)
      ALL = T.let(:ALL, ModernTreasury::Models::Currency::TaggedSymbol)
      AMD = T.let(:AMD, ModernTreasury::Models::Currency::TaggedSymbol)
      ANG = T.let(:ANG, ModernTreasury::Models::Currency::TaggedSymbol)
      AOA = T.let(:AOA, ModernTreasury::Models::Currency::TaggedSymbol)
      ARS = T.let(:ARS, ModernTreasury::Models::Currency::TaggedSymbol)
      AUD = T.let(:AUD, ModernTreasury::Models::Currency::TaggedSymbol)
      AWG = T.let(:AWG, ModernTreasury::Models::Currency::TaggedSymbol)
      AZN = T.let(:AZN, ModernTreasury::Models::Currency::TaggedSymbol)
      BAM = T.let(:BAM, ModernTreasury::Models::Currency::TaggedSymbol)
      BBD = T.let(:BBD, ModernTreasury::Models::Currency::TaggedSymbol)
      BCH = T.let(:BCH, ModernTreasury::Models::Currency::TaggedSymbol)
      BDT = T.let(:BDT, ModernTreasury::Models::Currency::TaggedSymbol)
      BGN = T.let(:BGN, ModernTreasury::Models::Currency::TaggedSymbol)
      BHD = T.let(:BHD, ModernTreasury::Models::Currency::TaggedSymbol)
      BIF = T.let(:BIF, ModernTreasury::Models::Currency::TaggedSymbol)
      BMD = T.let(:BMD, ModernTreasury::Models::Currency::TaggedSymbol)
      BND = T.let(:BND, ModernTreasury::Models::Currency::TaggedSymbol)
      BOB = T.let(:BOB, ModernTreasury::Models::Currency::TaggedSymbol)
      BRL = T.let(:BRL, ModernTreasury::Models::Currency::TaggedSymbol)
      BSD = T.let(:BSD, ModernTreasury::Models::Currency::TaggedSymbol)
      BTC = T.let(:BTC, ModernTreasury::Models::Currency::TaggedSymbol)
      BTN = T.let(:BTN, ModernTreasury::Models::Currency::TaggedSymbol)
      BWP = T.let(:BWP, ModernTreasury::Models::Currency::TaggedSymbol)
      BYN = T.let(:BYN, ModernTreasury::Models::Currency::TaggedSymbol)
      BYR = T.let(:BYR, ModernTreasury::Models::Currency::TaggedSymbol)
      BZD = T.let(:BZD, ModernTreasury::Models::Currency::TaggedSymbol)
      CAD = T.let(:CAD, ModernTreasury::Models::Currency::TaggedSymbol)
      CDF = T.let(:CDF, ModernTreasury::Models::Currency::TaggedSymbol)
      CHF = T.let(:CHF, ModernTreasury::Models::Currency::TaggedSymbol)
      CLF = T.let(:CLF, ModernTreasury::Models::Currency::TaggedSymbol)
      CLP = T.let(:CLP, ModernTreasury::Models::Currency::TaggedSymbol)
      CNH = T.let(:CNH, ModernTreasury::Models::Currency::TaggedSymbol)
      CNY = T.let(:CNY, ModernTreasury::Models::Currency::TaggedSymbol)
      COP = T.let(:COP, ModernTreasury::Models::Currency::TaggedSymbol)
      CRC = T.let(:CRC, ModernTreasury::Models::Currency::TaggedSymbol)
      CUC = T.let(:CUC, ModernTreasury::Models::Currency::TaggedSymbol)
      CUP = T.let(:CUP, ModernTreasury::Models::Currency::TaggedSymbol)
      CVE = T.let(:CVE, ModernTreasury::Models::Currency::TaggedSymbol)
      CZK = T.let(:CZK, ModernTreasury::Models::Currency::TaggedSymbol)
      DJF = T.let(:DJF, ModernTreasury::Models::Currency::TaggedSymbol)
      DKK = T.let(:DKK, ModernTreasury::Models::Currency::TaggedSymbol)
      DOP = T.let(:DOP, ModernTreasury::Models::Currency::TaggedSymbol)
      DZD = T.let(:DZD, ModernTreasury::Models::Currency::TaggedSymbol)
      EEK = T.let(:EEK, ModernTreasury::Models::Currency::TaggedSymbol)
      EGP = T.let(:EGP, ModernTreasury::Models::Currency::TaggedSymbol)
      ERN = T.let(:ERN, ModernTreasury::Models::Currency::TaggedSymbol)
      ETB = T.let(:ETB, ModernTreasury::Models::Currency::TaggedSymbol)
      EUR = T.let(:EUR, ModernTreasury::Models::Currency::TaggedSymbol)
      FJD = T.let(:FJD, ModernTreasury::Models::Currency::TaggedSymbol)
      FKP = T.let(:FKP, ModernTreasury::Models::Currency::TaggedSymbol)
      GBP = T.let(:GBP, ModernTreasury::Models::Currency::TaggedSymbol)
      GBX = T.let(:GBX, ModernTreasury::Models::Currency::TaggedSymbol)
      GEL = T.let(:GEL, ModernTreasury::Models::Currency::TaggedSymbol)
      GGP = T.let(:GGP, ModernTreasury::Models::Currency::TaggedSymbol)
      GHS = T.let(:GHS, ModernTreasury::Models::Currency::TaggedSymbol)
      GIP = T.let(:GIP, ModernTreasury::Models::Currency::TaggedSymbol)
      GMD = T.let(:GMD, ModernTreasury::Models::Currency::TaggedSymbol)
      GNF = T.let(:GNF, ModernTreasury::Models::Currency::TaggedSymbol)
      GTQ = T.let(:GTQ, ModernTreasury::Models::Currency::TaggedSymbol)
      GYD = T.let(:GYD, ModernTreasury::Models::Currency::TaggedSymbol)
      HKD = T.let(:HKD, ModernTreasury::Models::Currency::TaggedSymbol)
      HNL = T.let(:HNL, ModernTreasury::Models::Currency::TaggedSymbol)
      HRK = T.let(:HRK, ModernTreasury::Models::Currency::TaggedSymbol)
      HTG = T.let(:HTG, ModernTreasury::Models::Currency::TaggedSymbol)
      HUF = T.let(:HUF, ModernTreasury::Models::Currency::TaggedSymbol)
      IDR = T.let(:IDR, ModernTreasury::Models::Currency::TaggedSymbol)
      ILS = T.let(:ILS, ModernTreasury::Models::Currency::TaggedSymbol)
      IMP = T.let(:IMP, ModernTreasury::Models::Currency::TaggedSymbol)
      INR = T.let(:INR, ModernTreasury::Models::Currency::TaggedSymbol)
      IQD = T.let(:IQD, ModernTreasury::Models::Currency::TaggedSymbol)
      IRR = T.let(:IRR, ModernTreasury::Models::Currency::TaggedSymbol)
      ISK = T.let(:ISK, ModernTreasury::Models::Currency::TaggedSymbol)
      JEP = T.let(:JEP, ModernTreasury::Models::Currency::TaggedSymbol)
      JMD = T.let(:JMD, ModernTreasury::Models::Currency::TaggedSymbol)
      JOD = T.let(:JOD, ModernTreasury::Models::Currency::TaggedSymbol)
      JPY = T.let(:JPY, ModernTreasury::Models::Currency::TaggedSymbol)
      KES = T.let(:KES, ModernTreasury::Models::Currency::TaggedSymbol)
      KGS = T.let(:KGS, ModernTreasury::Models::Currency::TaggedSymbol)
      KHR = T.let(:KHR, ModernTreasury::Models::Currency::TaggedSymbol)
      KMF = T.let(:KMF, ModernTreasury::Models::Currency::TaggedSymbol)
      KPW = T.let(:KPW, ModernTreasury::Models::Currency::TaggedSymbol)
      KRW = T.let(:KRW, ModernTreasury::Models::Currency::TaggedSymbol)
      KWD = T.let(:KWD, ModernTreasury::Models::Currency::TaggedSymbol)
      KYD = T.let(:KYD, ModernTreasury::Models::Currency::TaggedSymbol)
      KZT = T.let(:KZT, ModernTreasury::Models::Currency::TaggedSymbol)
      LAK = T.let(:LAK, ModernTreasury::Models::Currency::TaggedSymbol)
      LBP = T.let(:LBP, ModernTreasury::Models::Currency::TaggedSymbol)
      LKR = T.let(:LKR, ModernTreasury::Models::Currency::TaggedSymbol)
      LRD = T.let(:LRD, ModernTreasury::Models::Currency::TaggedSymbol)
      LSL = T.let(:LSL, ModernTreasury::Models::Currency::TaggedSymbol)
      LTL = T.let(:LTL, ModernTreasury::Models::Currency::TaggedSymbol)
      LVL = T.let(:LVL, ModernTreasury::Models::Currency::TaggedSymbol)
      LYD = T.let(:LYD, ModernTreasury::Models::Currency::TaggedSymbol)
      MAD = T.let(:MAD, ModernTreasury::Models::Currency::TaggedSymbol)
      MDL = T.let(:MDL, ModernTreasury::Models::Currency::TaggedSymbol)
      MGA = T.let(:MGA, ModernTreasury::Models::Currency::TaggedSymbol)
      MKD = T.let(:MKD, ModernTreasury::Models::Currency::TaggedSymbol)
      MMK = T.let(:MMK, ModernTreasury::Models::Currency::TaggedSymbol)
      MNT = T.let(:MNT, ModernTreasury::Models::Currency::TaggedSymbol)
      MOP = T.let(:MOP, ModernTreasury::Models::Currency::TaggedSymbol)
      MRO = T.let(:MRO, ModernTreasury::Models::Currency::TaggedSymbol)
      MRU = T.let(:MRU, ModernTreasury::Models::Currency::TaggedSymbol)
      MTL = T.let(:MTL, ModernTreasury::Models::Currency::TaggedSymbol)
      MUR = T.let(:MUR, ModernTreasury::Models::Currency::TaggedSymbol)
      MVR = T.let(:MVR, ModernTreasury::Models::Currency::TaggedSymbol)
      MWK = T.let(:MWK, ModernTreasury::Models::Currency::TaggedSymbol)
      MXN = T.let(:MXN, ModernTreasury::Models::Currency::TaggedSymbol)
      MYR = T.let(:MYR, ModernTreasury::Models::Currency::TaggedSymbol)
      MZN = T.let(:MZN, ModernTreasury::Models::Currency::TaggedSymbol)
      NAD = T.let(:NAD, ModernTreasury::Models::Currency::TaggedSymbol)
      NGN = T.let(:NGN, ModernTreasury::Models::Currency::TaggedSymbol)
      NIO = T.let(:NIO, ModernTreasury::Models::Currency::TaggedSymbol)
      NOK = T.let(:NOK, ModernTreasury::Models::Currency::TaggedSymbol)
      NPR = T.let(:NPR, ModernTreasury::Models::Currency::TaggedSymbol)
      NZD = T.let(:NZD, ModernTreasury::Models::Currency::TaggedSymbol)
      OMR = T.let(:OMR, ModernTreasury::Models::Currency::TaggedSymbol)
      PAB = T.let(:PAB, ModernTreasury::Models::Currency::TaggedSymbol)
      PEN = T.let(:PEN, ModernTreasury::Models::Currency::TaggedSymbol)
      PGK = T.let(:PGK, ModernTreasury::Models::Currency::TaggedSymbol)
      PHP = T.let(:PHP, ModernTreasury::Models::Currency::TaggedSymbol)
      PKR = T.let(:PKR, ModernTreasury::Models::Currency::TaggedSymbol)
      PLN = T.let(:PLN, ModernTreasury::Models::Currency::TaggedSymbol)
      PYG = T.let(:PYG, ModernTreasury::Models::Currency::TaggedSymbol)
      QAR = T.let(:QAR, ModernTreasury::Models::Currency::TaggedSymbol)
      RON = T.let(:RON, ModernTreasury::Models::Currency::TaggedSymbol)
      RSD = T.let(:RSD, ModernTreasury::Models::Currency::TaggedSymbol)
      RUB = T.let(:RUB, ModernTreasury::Models::Currency::TaggedSymbol)
      RWF = T.let(:RWF, ModernTreasury::Models::Currency::TaggedSymbol)
      SAR = T.let(:SAR, ModernTreasury::Models::Currency::TaggedSymbol)
      SBD = T.let(:SBD, ModernTreasury::Models::Currency::TaggedSymbol)
      SCR = T.let(:SCR, ModernTreasury::Models::Currency::TaggedSymbol)
      SDG = T.let(:SDG, ModernTreasury::Models::Currency::TaggedSymbol)
      SEK = T.let(:SEK, ModernTreasury::Models::Currency::TaggedSymbol)
      SGD = T.let(:SGD, ModernTreasury::Models::Currency::TaggedSymbol)
      SHP = T.let(:SHP, ModernTreasury::Models::Currency::TaggedSymbol)
      SKK = T.let(:SKK, ModernTreasury::Models::Currency::TaggedSymbol)
      SLL = T.let(:SLL, ModernTreasury::Models::Currency::TaggedSymbol)
      SOS = T.let(:SOS, ModernTreasury::Models::Currency::TaggedSymbol)
      SRD = T.let(:SRD, ModernTreasury::Models::Currency::TaggedSymbol)
      SSP = T.let(:SSP, ModernTreasury::Models::Currency::TaggedSymbol)
      STD = T.let(:STD, ModernTreasury::Models::Currency::TaggedSymbol)
      SVC = T.let(:SVC, ModernTreasury::Models::Currency::TaggedSymbol)
      SYP = T.let(:SYP, ModernTreasury::Models::Currency::TaggedSymbol)
      SZL = T.let(:SZL, ModernTreasury::Models::Currency::TaggedSymbol)
      THB = T.let(:THB, ModernTreasury::Models::Currency::TaggedSymbol)
      TJS = T.let(:TJS, ModernTreasury::Models::Currency::TaggedSymbol)
      TMM = T.let(:TMM, ModernTreasury::Models::Currency::TaggedSymbol)
      TMT = T.let(:TMT, ModernTreasury::Models::Currency::TaggedSymbol)
      TND = T.let(:TND, ModernTreasury::Models::Currency::TaggedSymbol)
      TOP = T.let(:TOP, ModernTreasury::Models::Currency::TaggedSymbol)
      TRY = T.let(:TRY, ModernTreasury::Models::Currency::TaggedSymbol)
      TTD = T.let(:TTD, ModernTreasury::Models::Currency::TaggedSymbol)
      TWD = T.let(:TWD, ModernTreasury::Models::Currency::TaggedSymbol)
      TZS = T.let(:TZS, ModernTreasury::Models::Currency::TaggedSymbol)
      UAH = T.let(:UAH, ModernTreasury::Models::Currency::TaggedSymbol)
      UGX = T.let(:UGX, ModernTreasury::Models::Currency::TaggedSymbol)
      USD = T.let(:USD, ModernTreasury::Models::Currency::TaggedSymbol)
      UYU = T.let(:UYU, ModernTreasury::Models::Currency::TaggedSymbol)
      UZS = T.let(:UZS, ModernTreasury::Models::Currency::TaggedSymbol)
      VEF = T.let(:VEF, ModernTreasury::Models::Currency::TaggedSymbol)
      VES = T.let(:VES, ModernTreasury::Models::Currency::TaggedSymbol)
      VND = T.let(:VND, ModernTreasury::Models::Currency::TaggedSymbol)
      VUV = T.let(:VUV, ModernTreasury::Models::Currency::TaggedSymbol)
      WST = T.let(:WST, ModernTreasury::Models::Currency::TaggedSymbol)
      XAF = T.let(:XAF, ModernTreasury::Models::Currency::TaggedSymbol)
      XAG = T.let(:XAG, ModernTreasury::Models::Currency::TaggedSymbol)
      XAU = T.let(:XAU, ModernTreasury::Models::Currency::TaggedSymbol)
      XBA = T.let(:XBA, ModernTreasury::Models::Currency::TaggedSymbol)
      XBB = T.let(:XBB, ModernTreasury::Models::Currency::TaggedSymbol)
      XBC = T.let(:XBC, ModernTreasury::Models::Currency::TaggedSymbol)
      XBD = T.let(:XBD, ModernTreasury::Models::Currency::TaggedSymbol)
      XCD = T.let(:XCD, ModernTreasury::Models::Currency::TaggedSymbol)
      XDR = T.let(:XDR, ModernTreasury::Models::Currency::TaggedSymbol)
      XFU = T.let(:XFU, ModernTreasury::Models::Currency::TaggedSymbol)
      XOF = T.let(:XOF, ModernTreasury::Models::Currency::TaggedSymbol)
      XPD = T.let(:XPD, ModernTreasury::Models::Currency::TaggedSymbol)
      XPF = T.let(:XPF, ModernTreasury::Models::Currency::TaggedSymbol)
      XPT = T.let(:XPT, ModernTreasury::Models::Currency::TaggedSymbol)
      XTS = T.let(:XTS, ModernTreasury::Models::Currency::TaggedSymbol)
      YER = T.let(:YER, ModernTreasury::Models::Currency::TaggedSymbol)
      ZAR = T.let(:ZAR, ModernTreasury::Models::Currency::TaggedSymbol)
      ZMK = T.let(:ZMK, ModernTreasury::Models::Currency::TaggedSymbol)
      ZMW = T.let(:ZMW, ModernTreasury::Models::Currency::TaggedSymbol)
      ZWD = T.let(:ZWD, ModernTreasury::Models::Currency::TaggedSymbol)
      ZWL = T.let(:ZWL, ModernTreasury::Models::Currency::TaggedSymbol)
      ZWN = T.let(:ZWN, ModernTreasury::Models::Currency::TaggedSymbol)
      ZWR = T.let(:ZWR, ModernTreasury::Models::Currency::TaggedSymbol)

      sig { override.returns(T::Array[ModernTreasury::Models::Currency::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
