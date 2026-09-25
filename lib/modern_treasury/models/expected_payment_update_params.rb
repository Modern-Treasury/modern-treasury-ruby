# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::ExpectedPayments#update
    class ExpectedPaymentUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute amount_lower_bound
      #   The lowest amount this expected payment may be equal to. Value in specified
      #   currency's smallest unit. e.g. $10 would be represented as 1000.
      #
      #   @return [Integer, nil]
      optional :amount_lower_bound, Integer, nil?: true

      # @!attribute amount_reconciled
      #   The amount reconciled for this expected payment. Value in specified currency's
      #   smallest unit. e.g. $10 would be represented as 1000.
      #
      #   @return [Integer, nil]
      optional :amount_reconciled, Integer, nil?: true

      # @!attribute amount_reconciled_direction
      #   One of credit or debit. Indicates whether amount_reconciled is a credit or debit
      #   amount.
      #
      #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentUpdateParams::AmountReconciledDirection, nil]
      optional :amount_reconciled_direction,
               enum: -> { ModernTreasury::ExpectedPaymentUpdateParams::AmountReconciledDirection },
               nil?: true

      # @!attribute amount_unreconciled
      #   The amount that remains unreconciled for this expected payment. Value in
      #   specified currency's smallest unit. e.g. $10 would be represented as 1000.
      #
      #   @return [Integer, nil]
      optional :amount_unreconciled, Integer, nil?: true

      # @!attribute amount_unreconciled_direction
      #   One of credit or debit. Indicates whether amount_unreconciled is a credit or
      #   debit amount.
      #
      #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentUpdateParams::AmountUnreconciledDirection, nil]
      optional :amount_unreconciled_direction,
               enum: -> { ModernTreasury::ExpectedPaymentUpdateParams::AmountUnreconciledDirection },
               nil?: true

      # @!attribute amount_upper_bound
      #   The highest amount this expected payment may be equal to. Value in specified
      #   currency's smallest unit. e.g. $10 would be represented as 1000.
      #
      #   @return [Integer, nil]
      optional :amount_upper_bound, Integer, nil?: true

      # @!attribute counterparty_id
      #   The ID of the counterparty you expect for this payment.
      #
      #   @return [String, nil]
      optional :counterparty_id, String, nil?: true

      # @!attribute currency
      #
      #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentUpdateParams::Currency, nil]
      optional :currency, enum: -> { ModernTreasury::ExpectedPaymentUpdateParams::Currency }, nil?: true

      # @!attribute date_lower_bound
      #   The earliest date the payment may come in. Format: yyyy-mm-dd
      #
      #   @return [Date, nil]
      optional :date_lower_bound, Date, nil?: true

      # @!attribute date_upper_bound
      #   The latest date the payment may come in. Format: yyyy-mm-dd
      #
      #   @return [Date, nil]
      optional :date_upper_bound, Date, nil?: true

      # @!attribute description
      #   An optional description for internal use.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute direction
      #   One of credit or debit. When you are receiving money, use credit. When you are
      #   being charged, use debit.
      #
      #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentUpdateParams::Direction, nil]
      optional :direction, enum: -> { ModernTreasury::ExpectedPaymentUpdateParams::Direction }, nil?: true

      # @!attribute external_id
      #   An optional user-defined 180 character unique identifier.
      #
      #   @return [String, nil]
      optional :external_id, String, nil?: true

      # @!attribute internal_account_id
      #   The ID of the Internal Account for the expected payment.
      #
      #   @return [String, nil]
      optional :internal_account_id, String, nil?: true

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute reconciliation_filters
      #   The reconciliation filters you have for this payment.
      #
      #   @return [Object, nil]
      optional :reconciliation_filters, ModernTreasury::Internal::Type::Unknown, nil?: true

      # @!attribute reconciliation_groups
      #   The reconciliation groups you have for this payment.
      #
      #   @return [Object, nil]
      optional :reconciliation_groups, ModernTreasury::Internal::Type::Unknown, nil?: true

      # @!attribute reconciliation_rule_variables
      #   An array of reconciliation rule variables for this payment.
      #
      #   @return [Array<ModernTreasury::Models::ReconciliationRule>, nil]
      optional :reconciliation_rule_variables,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::ReconciliationRule] }

      # @!attribute remittance_information
      #   For `ach`, this field will be passed through on an addenda record. For `wire`
      #   payments the field will be passed through as the "Originator to Beneficiary
      #   Information", also known as OBI or Fedwire tag 6000.
      #
      #   @return [String, nil]
      optional :remittance_information, String, nil?: true

      # @!attribute statement_descriptor
      #   The statement description you expect to see on the transaction. For ACH
      #   payments, this will be the full line item passed from the bank. For wire
      #   payments, this will be the OBI field on the wire. For check payments, this will
      #   be the memo field.
      #
      #   @return [String, nil]
      optional :statement_descriptor, String, nil?: true

      # @!attribute status
      #   The Expected Payment's status can be updated from partially_reconciled to
      #   reconciled.
      #
      #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentUpdateParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::ExpectedPaymentUpdateParams::Status }, nil?: true

      # @!attribute type
      #   One of: ach, au_becs, bacs, book, check, eft, rtp, sepa, wire.
      #
      #   @return [Symbol, ModernTreasury::Models::ExpectedPaymentType, nil]
      optional :type, enum: -> { ModernTreasury::ExpectedPaymentType }, nil?: true

      # @!method initialize(id:, amount_lower_bound: nil, amount_reconciled: nil, amount_reconciled_direction: nil, amount_unreconciled: nil, amount_unreconciled_direction: nil, amount_upper_bound: nil, counterparty_id: nil, currency: nil, date_lower_bound: nil, date_upper_bound: nil, description: nil, direction: nil, external_id: nil, internal_account_id: nil, metadata: nil, reconciliation_filters: nil, reconciliation_groups: nil, reconciliation_rule_variables: nil, remittance_information: nil, statement_descriptor: nil, status: nil, type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::ExpectedPaymentUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param amount_lower_bound [Integer, nil] The lowest amount this expected payment may be equal to. Value in specified curr
      #
      #   @param amount_reconciled [Integer, nil] The amount reconciled for this expected payment. Value in specified currency's s
      #
      #   @param amount_reconciled_direction [Symbol, ModernTreasury::Models::ExpectedPaymentUpdateParams::AmountReconciledDirection, nil] One of credit or debit. Indicates whether amount_reconciled is a credit or debit
      #
      #   @param amount_unreconciled [Integer, nil] The amount that remains unreconciled for this expected payment. Value in specifi
      #
      #   @param amount_unreconciled_direction [Symbol, ModernTreasury::Models::ExpectedPaymentUpdateParams::AmountUnreconciledDirection, nil] One of credit or debit. Indicates whether amount_unreconciled is a credit or deb
      #
      #   @param amount_upper_bound [Integer, nil] The highest amount this expected payment may be equal to. Value in specified cur
      #
      #   @param counterparty_id [String, nil] The ID of the counterparty you expect for this payment.
      #
      #   @param currency [Symbol, ModernTreasury::Models::ExpectedPaymentUpdateParams::Currency, nil]
      #
      #   @param date_lower_bound [Date, nil] The earliest date the payment may come in. Format: yyyy-mm-dd
      #
      #   @param date_upper_bound [Date, nil] The latest date the payment may come in. Format: yyyy-mm-dd
      #
      #   @param description [String, nil] An optional description for internal use.
      #
      #   @param direction [Symbol, ModernTreasury::Models::ExpectedPaymentUpdateParams::Direction, nil] One of credit or debit. When you are receiving money, use credit. When you are b
      #
      #   @param external_id [String, nil] An optional user-defined 180 character unique identifier.
      #
      #   @param internal_account_id [String, nil] The ID of the Internal Account for the expected payment.
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param reconciliation_filters [Object, nil] The reconciliation filters you have for this payment.
      #
      #   @param reconciliation_groups [Object, nil] The reconciliation groups you have for this payment.
      #
      #   @param reconciliation_rule_variables [Array<ModernTreasury::Models::ReconciliationRule>] An array of reconciliation rule variables for this payment.
      #
      #   @param remittance_information [String, nil] For `ach`, this field will be passed through on an addenda record. For `wire` pa
      #
      #   @param statement_descriptor [String, nil] The statement description you expect to see on the transaction. For ACH payments
      #
      #   @param status [Symbol, ModernTreasury::Models::ExpectedPaymentUpdateParams::Status, nil] The Expected Payment's status can be updated from partially_reconciled to reconc
      #
      #   @param type [Symbol, ModernTreasury::Models::ExpectedPaymentType, nil] One of: ach, au_becs, bacs, book, check, eft, rtp, sepa, wire.
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # One of credit or debit. Indicates whether amount_reconciled is a credit or debit
      # amount.
      module AmountReconciledDirection
        extend ModernTreasury::Internal::Type::Enum

        CREDIT = :credit
        DEBIT = :debit

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # One of credit or debit. Indicates whether amount_unreconciled is a credit or
      # debit amount.
      module AmountUnreconciledDirection
        extend ModernTreasury::Internal::Type::Enum

        CREDIT = :credit
        DEBIT = :debit

        # @!method self.values
        #   @return [Array<Symbol>]
      end

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

      # One of credit or debit. When you are receiving money, use credit. When you are
      # being charged, use debit.
      module Direction
        extend ModernTreasury::Internal::Type::Enum

        CREDIT = :credit
        DEBIT = :debit

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The Expected Payment's status can be updated from partially_reconciled to
      # reconciled.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        RECONCILED = :reconciled

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
