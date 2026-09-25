# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::IncomingPaymentDetails#create_async
    class IncomingPaymentDetailCreateAsyncParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute amount
      #   Value in specified currency's smallest unit. e.g. $10 would be represented
      #   as 1000.
      #
      #   @return [Integer, nil]
      optional :amount, Integer

      # @!attribute as_of_date
      #   Defaults to today.
      #
      #   @return [Date, nil]
      optional :as_of_date, Date, nil?: true

      # @!attribute currency
      #
      #   @return [Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Currency, nil]
      optional :currency,
               enum: -> { ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency },
               nil?: true

      # @!attribute data
      #   An object passed through to the simulated IPD that could reflect what a vendor
      #   would pass.
      #
      #   @return [Object, nil]
      optional :data, ModernTreasury::Internal::Type::Unknown, nil?: true

      # @!attribute description
      #   Defaults to a random description.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute direction
      #   One of `credit`, `debit`.
      #
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection, nil]
      optional :direction, enum: -> { ModernTreasury::TransactionDirection }

      # @!attribute internal_account_id
      #   The ID of one of your internal accounts.
      #
      #   @return [String, nil]
      optional :internal_account_id, String

      # @!attribute subtype
      #   An additional layer of classification for the type of incoming payment detail,
      #   e.g. `ethereum` for a `stablecoin` type.
      #
      #   @return [String, nil]
      optional :subtype, String, nil?: true

      # @!attribute type
      #   One of `ach`, `wire`, `check`.
      #
      #   @return [Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type, nil]
      optional :type, enum: -> { ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type }

      # @!attribute virtual_account_id
      #   An optional parameter to associate the incoming payment detail to a virtual
      #   account.
      #
      #   @return [String, nil]
      optional :virtual_account_id, String, nil?: true

      # @!method initialize(amount: nil, as_of_date: nil, currency: nil, data: nil, description: nil, direction: nil, internal_account_id: nil, subtype: nil, type: nil, virtual_account_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams} for more
      #   details.
      #
      #   @param amount [Integer] Value in specified currency's smallest unit. e.g. $10 would be represented as 10
      #
      #   @param as_of_date [Date, nil] Defaults to today.
      #
      #   @param currency [Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Currency, nil]
      #
      #   @param data [Object, nil] An object passed through to the simulated IPD that could reflect what a vendor w
      #
      #   @param description [String, nil] Defaults to a random description.
      #
      #   @param direction [Symbol, ModernTreasury::Models::TransactionDirection] One of `credit`, `debit`.
      #
      #   @param internal_account_id [String] The ID of one of your internal accounts.
      #
      #   @param subtype [String, nil] An additional layer of classification for the type of incoming payment detail, e
      #
      #   @param type [Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type] One of `ach`, `wire`, `check`.
      #
      #   @param virtual_account_id [String, nil] An optional parameter to associate the incoming payment detail to a virtual acco
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      module Currency
        extend ModernTreasury::Internal::Type::Enum

        AED = :AED
        AFN = :AFN
        ALL = :ALL
        AMD = :AMD
        ANG = :ANG
        AOA = :AOA
        ARS = :ARS
        AUD = :AUD
        AWG = :AWG
        AZN = :AZN
        BAM = :BAM
        BBD = :BBD
        BCH = :BCH
        BDT = :BDT
        BGN = :BGN
        BHD = :BHD
        BIF = :BIF
        BMD = :BMD
        BND = :BND
        BOB = :BOB
        BRL = :BRL
        BSD = :BSD
        BTC = :BTC
        BTN = :BTN
        BWP = :BWP
        BYN = :BYN
        BYR = :BYR
        BZD = :BZD
        CAD = :CAD
        CDF = :CDF
        CHF = :CHF
        CLF = :CLF
        CLP = :CLP
        CNH = :CNH
        CNY = :CNY
        COP = :COP
        CRC = :CRC
        CUC = :CUC
        CUP = :CUP
        CVE = :CVE
        CZK = :CZK
        DJF = :DJF
        DKK = :DKK
        DOP = :DOP
        DZD = :DZD
        EEK = :EEK
        EGP = :EGP
        ERN = :ERN
        ETB = :ETB
        ETH = :ETH
        EUR = :EUR
        EURC = :EURC
        FJD = :FJD
        FKP = :FKP
        GBP = :GBP
        GBX = :GBX
        GEL = :GEL
        GGP = :GGP
        GHS = :GHS
        GIP = :GIP
        GMD = :GMD
        GNF = :GNF
        GTQ = :GTQ
        GYD = :GYD
        HKD = :HKD
        HNL = :HNL
        HRK = :HRK
        HTG = :HTG
        HUF = :HUF
        IDR = :IDR
        ILS = :ILS
        IMP = :IMP
        INR = :INR
        IQD = :IQD
        IRR = :IRR
        ISK = :ISK
        JEP = :JEP
        JMD = :JMD
        JOD = :JOD
        JPY = :JPY
        KES = :KES
        KGS = :KGS
        KHR = :KHR
        KMF = :KMF
        KPW = :KPW
        KRW = :KRW
        KWD = :KWD
        KYD = :KYD
        KZT = :KZT
        LAK = :LAK
        LBP = :LBP
        LKR = :LKR
        LRD = :LRD
        LSL = :LSL
        LTL = :LTL
        LVL = :LVL
        LYD = :LYD
        MAD = :MAD
        MDL = :MDL
        MGA = :MGA
        MKD = :MKD
        MMK = :MMK
        MNT = :MNT
        MOP = :MOP
        MRO = :MRO
        MRU = :MRU
        MTL = :MTL
        MUR = :MUR
        MVR = :MVR
        MWK = :MWK
        MXN = :MXN
        MYR = :MYR
        MZN = :MZN
        NAD = :NAD
        NGN = :NGN
        NIO = :NIO
        NOK = :NOK
        NPR = :NPR
        NZD = :NZD
        OMR = :OMR
        OP = :OP
        PAB = :PAB
        PEN = :PEN
        PGK = :PGK
        PHP = :PHP
        PKR = :PKR
        PLN = :PLN
        PYG = :PYG
        PYUSD = :PYUSD
        QAR = :QAR
        RON = :RON
        RSD = :RSD
        RUB = :RUB
        RWF = :RWF
        SAR = :SAR
        SBD = :SBD
        SCR = :SCR
        SDG = :SDG
        SEK = :SEK
        SGD = :SGD
        SHP = :SHP
        SKK = :SKK
        SLE = :SLE
        SLL = :SLL
        SOS = :SOS
        SRD = :SRD
        SSP = :SSP
        STD = :STD
        STN = :STN
        SVC = :SVC
        SYP = :SYP
        SZL = :SZL
        THB = :THB
        TJS = :TJS
        TMM = :TMM
        TMT = :TMT
        TND = :TND
        TOP = :TOP
        TRY = :TRY
        TTD = :TTD
        TWD = :TWD
        TZS = :TZS
        UAH = :UAH
        UGX = :UGX
        USD = :USD
        USDC = :USDC
        USDG = :USDG
        USDT = :USDT
        UYU = :UYU
        UZS = :UZS
        VEF = :VEF
        VES = :VES
        VND = :VND
        VUV = :VUV
        WST = :WST
        XAF = :XAF
        XAG = :XAG
        XAU = :XAU
        XBA = :XBA
        XBB = :XBB
        XBC = :XBC
        XBD = :XBD
        XCD = :XCD
        XCG = :XCG
        XDR = :XDR
        XFU = :XFU
        XOF = :XOF
        XPD = :XPD
        XPF = :XPF
        XPT = :XPT
        XTS = :XTS
        YER = :YER
        ZAR = :ZAR
        ZMK = :ZMK
        ZMW = :ZMW
        ZWD = :ZWD
        ZWG = :ZWG
        ZWL = :ZWL
        ZWN = :ZWN
        ZWR = :ZWR

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # One of `ach`, `wire`, `check`.
      module Type
        extend ModernTreasury::Internal::Type::Enum

        ACH = :ach
        AU_BECS = :au_becs
        BACS = :bacs
        BOOK = :book
        CHECK = :check
        EFT = :eft
        NEFT = :neft
        NZ_BECS = :nz_becs
        RTP = :rtp
        SEPA = :sepa
        STABLECOIN = :stablecoin
        WIRE = :wire
        ZENGIN = :zengin

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
