# typed: strong

module ModernTreasury
  module Models
    class IncomingPaymentDetailCreateAsyncParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # Value in specified currency's smallest unit. e.g. $10 would be represented
      # as 1000.
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount

      sig { params(amount: Integer).void }
      attr_writer :amount

      # Defaults to today.
      sig { returns(T.nilable(Date)) }
      attr_accessor :as_of_date

      sig do
        returns(
          T.nilable(
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::OrSymbol
          )
        )
      end
      attr_accessor :currency

      # An object passed through to the simulated IPD that could reflect what a vendor
      # would pass.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :data

      # Defaults to a random description.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # One of `credit`, `debit`.
      sig { returns(T.nilable(ModernTreasury::TransactionDirection::OrSymbol)) }
      attr_reader :direction

      sig do
        params(direction: ModernTreasury::TransactionDirection::OrSymbol).void
      end
      attr_writer :direction

      # The ID of one of your internal accounts.
      sig { returns(T.nilable(String)) }
      attr_reader :internal_account_id

      sig { params(internal_account_id: String).void }
      attr_writer :internal_account_id

      # An additional layer of classification for the type of incoming payment detail,
      # e.g. `ethereum` for a `stablecoin` type.
      sig { returns(T.nilable(String)) }
      attr_accessor :subtype

      # One of `ach`, `wire`, `check`.
      sig do
        returns(
          T.nilable(
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::OrSymbol
          )
        )
      end
      attr_reader :type

      sig do
        params(
          type:
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::OrSymbol
        ).void
      end
      attr_writer :type

      # An optional parameter to associate the incoming payment detail to a virtual
      # account.
      sig { returns(T.nilable(String)) }
      attr_accessor :virtual_account_id

      sig do
        params(
          amount: Integer,
          as_of_date: T.nilable(Date),
          currency:
            T.nilable(
              ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::OrSymbol
            ),
          data: T.nilable(T.anything),
          description: T.nilable(String),
          direction: ModernTreasury::TransactionDirection::OrSymbol,
          internal_account_id: String,
          subtype: T.nilable(String),
          type:
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::OrSymbol,
          virtual_account_id: T.nilable(String),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Value in specified currency's smallest unit. e.g. $10 would be represented
        # as 1000.
        amount: nil,
        # Defaults to today.
        as_of_date: nil,
        currency: nil,
        # An object passed through to the simulated IPD that could reflect what a vendor
        # would pass.
        data: nil,
        # Defaults to a random description.
        description: nil,
        # One of `credit`, `debit`.
        direction: nil,
        # The ID of one of your internal accounts.
        internal_account_id: nil,
        # An additional layer of classification for the type of incoming payment detail,
        # e.g. `ethereum` for a `stablecoin` type.
        subtype: nil,
        # One of `ach`, `wire`, `check`.
        type: nil,
        # An optional parameter to associate the incoming payment detail to a virtual
        # account.
        virtual_account_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            amount: Integer,
            as_of_date: T.nilable(Date),
            currency:
              T.nilable(
                ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::OrSymbol
              ),
            data: T.nilable(T.anything),
            description: T.nilable(String),
            direction: ModernTreasury::TransactionDirection::OrSymbol,
            internal_account_id: String,
            subtype: T.nilable(String),
            type:
              ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::OrSymbol,
            virtual_account_id: T.nilable(String),
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Currency
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AED =
          T.let(
            :AED,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        AFN =
          T.let(
            :AFN,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        ALL =
          T.let(
            :ALL,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        AMD =
          T.let(
            :AMD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        ANG =
          T.let(
            :ANG,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        AOA =
          T.let(
            :AOA,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        ARS =
          T.let(
            :ARS,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        AUD =
          T.let(
            :AUD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        AWG =
          T.let(
            :AWG,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        AZN =
          T.let(
            :AZN,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        BAM =
          T.let(
            :BAM,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        BBD =
          T.let(
            :BBD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        BCH =
          T.let(
            :BCH,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        BDT =
          T.let(
            :BDT,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        BGN =
          T.let(
            :BGN,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        BHD =
          T.let(
            :BHD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        BIF =
          T.let(
            :BIF,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        BMD =
          T.let(
            :BMD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        BND =
          T.let(
            :BND,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        BOB =
          T.let(
            :BOB,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        BRL =
          T.let(
            :BRL,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        BSD =
          T.let(
            :BSD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        BTC =
          T.let(
            :BTC,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        BTN =
          T.let(
            :BTN,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        BWP =
          T.let(
            :BWP,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        BYN =
          T.let(
            :BYN,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        BYR =
          T.let(
            :BYR,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        BZD =
          T.let(
            :BZD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        CAD =
          T.let(
            :CAD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        CDF =
          T.let(
            :CDF,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        CHF =
          T.let(
            :CHF,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        CLF =
          T.let(
            :CLF,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        CLP =
          T.let(
            :CLP,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        CNH =
          T.let(
            :CNH,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        CNY =
          T.let(
            :CNY,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        COP =
          T.let(
            :COP,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        CRC =
          T.let(
            :CRC,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        CUC =
          T.let(
            :CUC,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        CUP =
          T.let(
            :CUP,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        CVE =
          T.let(
            :CVE,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        CZK =
          T.let(
            :CZK,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        DJF =
          T.let(
            :DJF,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        DKK =
          T.let(
            :DKK,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        DOP =
          T.let(
            :DOP,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        DZD =
          T.let(
            :DZD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        EEK =
          T.let(
            :EEK,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        EGP =
          T.let(
            :EGP,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        ERN =
          T.let(
            :ERN,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        ETB =
          T.let(
            :ETB,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        ETH =
          T.let(
            :ETH,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        EUR =
          T.let(
            :EUR,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        EURC =
          T.let(
            :EURC,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        FJD =
          T.let(
            :FJD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        FKP =
          T.let(
            :FKP,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        GBP =
          T.let(
            :GBP,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        GBX =
          T.let(
            :GBX,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        GEL =
          T.let(
            :GEL,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        GGP =
          T.let(
            :GGP,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        GHS =
          T.let(
            :GHS,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        GIP =
          T.let(
            :GIP,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        GMD =
          T.let(
            :GMD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        GNF =
          T.let(
            :GNF,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        GTQ =
          T.let(
            :GTQ,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        GYD =
          T.let(
            :GYD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        HKD =
          T.let(
            :HKD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        HNL =
          T.let(
            :HNL,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        HRK =
          T.let(
            :HRK,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        HTG =
          T.let(
            :HTG,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        HUF =
          T.let(
            :HUF,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        IDR =
          T.let(
            :IDR,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        ILS =
          T.let(
            :ILS,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        IMP =
          T.let(
            :IMP,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        INR =
          T.let(
            :INR,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        IQD =
          T.let(
            :IQD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        IRR =
          T.let(
            :IRR,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        ISK =
          T.let(
            :ISK,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        JEP =
          T.let(
            :JEP,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        JMD =
          T.let(
            :JMD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        JOD =
          T.let(
            :JOD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        JPY =
          T.let(
            :JPY,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        KES =
          T.let(
            :KES,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        KGS =
          T.let(
            :KGS,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        KHR =
          T.let(
            :KHR,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        KMF =
          T.let(
            :KMF,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        KPW =
          T.let(
            :KPW,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        KRW =
          T.let(
            :KRW,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        KWD =
          T.let(
            :KWD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        KYD =
          T.let(
            :KYD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        KZT =
          T.let(
            :KZT,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        LAK =
          T.let(
            :LAK,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        LBP =
          T.let(
            :LBP,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        LKR =
          T.let(
            :LKR,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        LRD =
          T.let(
            :LRD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        LSL =
          T.let(
            :LSL,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        LTL =
          T.let(
            :LTL,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        LVL =
          T.let(
            :LVL,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        LYD =
          T.let(
            :LYD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        MAD =
          T.let(
            :MAD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        MDL =
          T.let(
            :MDL,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        MGA =
          T.let(
            :MGA,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        MKD =
          T.let(
            :MKD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        MMK =
          T.let(
            :MMK,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        MNT =
          T.let(
            :MNT,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        MOP =
          T.let(
            :MOP,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        MRO =
          T.let(
            :MRO,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        MRU =
          T.let(
            :MRU,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        MTL =
          T.let(
            :MTL,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        MUR =
          T.let(
            :MUR,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        MVR =
          T.let(
            :MVR,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        MWK =
          T.let(
            :MWK,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        MXN =
          T.let(
            :MXN,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        MYR =
          T.let(
            :MYR,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        MZN =
          T.let(
            :MZN,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        NAD =
          T.let(
            :NAD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        NGN =
          T.let(
            :NGN,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        NIO =
          T.let(
            :NIO,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        NOK =
          T.let(
            :NOK,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        NPR =
          T.let(
            :NPR,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        NZD =
          T.let(
            :NZD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        OMR =
          T.let(
            :OMR,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        OP =
          T.let(
            :OP,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        PAB =
          T.let(
            :PAB,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        PEN =
          T.let(
            :PEN,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        PGK =
          T.let(
            :PGK,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        PHP =
          T.let(
            :PHP,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        PKR =
          T.let(
            :PKR,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        PLN =
          T.let(
            :PLN,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        PYG =
          T.let(
            :PYG,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        PYUSD =
          T.let(
            :PYUSD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        QAR =
          T.let(
            :QAR,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        RON =
          T.let(
            :RON,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        RSD =
          T.let(
            :RSD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        RUB =
          T.let(
            :RUB,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        RWF =
          T.let(
            :RWF,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        SAR =
          T.let(
            :SAR,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        SBD =
          T.let(
            :SBD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        SCR =
          T.let(
            :SCR,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        SDG =
          T.let(
            :SDG,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        SEK =
          T.let(
            :SEK,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        SGD =
          T.let(
            :SGD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        SHP =
          T.let(
            :SHP,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        SKK =
          T.let(
            :SKK,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        SLE =
          T.let(
            :SLE,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        SLL =
          T.let(
            :SLL,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        SOS =
          T.let(
            :SOS,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        SRD =
          T.let(
            :SRD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        SSP =
          T.let(
            :SSP,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        STD =
          T.let(
            :STD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        STN =
          T.let(
            :STN,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        SVC =
          T.let(
            :SVC,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        SYP =
          T.let(
            :SYP,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        SZL =
          T.let(
            :SZL,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        THB =
          T.let(
            :THB,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        TJS =
          T.let(
            :TJS,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        TMM =
          T.let(
            :TMM,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        TMT =
          T.let(
            :TMT,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        TND =
          T.let(
            :TND,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        TOP =
          T.let(
            :TOP,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        TRY =
          T.let(
            :TRY,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        TTD =
          T.let(
            :TTD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        TWD =
          T.let(
            :TWD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        TZS =
          T.let(
            :TZS,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        UAH =
          T.let(
            :UAH,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        UGX =
          T.let(
            :UGX,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        USD =
          T.let(
            :USD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        USDC =
          T.let(
            :USDC,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        USDG =
          T.let(
            :USDG,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        USDT =
          T.let(
            :USDT,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        UYU =
          T.let(
            :UYU,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        UZS =
          T.let(
            :UZS,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        VEF =
          T.let(
            :VEF,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        VES =
          T.let(
            :VES,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        VND =
          T.let(
            :VND,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        VUV =
          T.let(
            :VUV,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        WST =
          T.let(
            :WST,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        XAF =
          T.let(
            :XAF,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        XAG =
          T.let(
            :XAG,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        XAU =
          T.let(
            :XAU,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        XBA =
          T.let(
            :XBA,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        XBB =
          T.let(
            :XBB,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        XBC =
          T.let(
            :XBC,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        XBD =
          T.let(
            :XBD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        XCD =
          T.let(
            :XCD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        XCG =
          T.let(
            :XCG,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        XDR =
          T.let(
            :XDR,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        XFU =
          T.let(
            :XFU,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        XOF =
          T.let(
            :XOF,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        XPD =
          T.let(
            :XPD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        XPF =
          T.let(
            :XPF,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        XPT =
          T.let(
            :XPT,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        XTS =
          T.let(
            :XTS,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        YER =
          T.let(
            :YER,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        ZAR =
          T.let(
            :ZAR,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        ZMK =
          T.let(
            :ZMK,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        ZMW =
          T.let(
            :ZMW,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        ZWD =
          T.let(
            :ZWD,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        ZWG =
          T.let(
            :ZWG,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        ZWL =
          T.let(
            :ZWL,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        ZWN =
          T.let(
            :ZWN,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )
        ZWR =
          T.let(
            :ZWR,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Currency::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # One of `ach`, `wire`, `check`.
      module Type
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH =
          T.let(
            :ach,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol
          )
        AU_BECS =
          T.let(
            :au_becs,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol
          )
        BACS =
          T.let(
            :bacs,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol
          )
        BOOK =
          T.let(
            :book,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol
          )
        CHECK =
          T.let(
            :check,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol
          )
        EFT =
          T.let(
            :eft,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol
          )
        NEFT =
          T.let(
            :neft,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol
          )
        NZ_BECS =
          T.let(
            :nz_becs,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol
          )
        RTP =
          T.let(
            :rtp,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol
          )
        SEPA =
          T.let(
            :sepa,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol
          )
        STABLECOIN =
          T.let(
            :stablecoin,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol
          )
        WIRE =
          T.let(
            :wire,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol
          )
        ZENGIN =
          T.let(
            :zengin,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
