# typed: strong

module ModernTreasury
  module Models
    class ExternalAccountVerifyParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            originating_account_id: String,
            payment_type: Symbol,
            currency: Symbol,
            fallback_type: Symbol,
            priority: Symbol
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(String) }
      attr_accessor :originating_account_id

      sig { returns(Symbol) }
      attr_accessor :payment_type

      sig { returns(T.nilable(Symbol)) }
      attr_reader :currency

      sig { params(currency: Symbol).void }
      attr_writer :currency

      sig { returns(T.nilable(Symbol)) }
      attr_reader :fallback_type

      sig { params(fallback_type: Symbol).void }
      attr_writer :fallback_type

      sig { returns(T.nilable(Symbol)) }
      attr_reader :priority

      sig { params(priority: Symbol).void }
      attr_writer :priority

      sig do
        params(
          originating_account_id: String,
          payment_type: Symbol,
          currency: Symbol,
          fallback_type: Symbol,
          priority: Symbol,
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(
        originating_account_id:,
        payment_type:,
        currency: nil,
        fallback_type: nil,
        priority: nil,
        request_options: {}
      ); end

      sig { returns(ModernTreasury::Models::ExternalAccountVerifyParams::Shape) }
      def to_h; end

      class PaymentType < ModernTreasury::Enum
        abstract!

        ACH = :ach
        AU_BECS = :au_becs
        BACS = :bacs
        BOOK = :book
        CARD = :card
        CHATS = :chats
        CHECK = :check
        CROSS_BORDER = :cross_border
        DK_NETS = :dk_nets
        EFT = :eft
        HU_ICS = :hu_ics
        INTERAC = :interac
        MASAV = :masav
        MX_CCEN = :mx_ccen
        NEFT = :neft
        NICS = :nics
        NZ_BECS = :nz_becs
        PL_ELIXIR = :pl_elixir
        PROVXCHANGE = :provxchange
        RO_SENT = :ro_sent
        RTP = :rtp
        SE_BANKGIROT = :se_bankgirot
        SEN = :sen
        SEPA = :sepa
        SG_GIRO = :sg_giro
        SIC = :sic
        SIGNET = :signet
        SKNBI = :sknbi
        WIRE = :wire
        ZENGIN = :zengin

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class FallbackType < ModernTreasury::Enum
        abstract!

        ACH = :ach

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class Priority < ModernTreasury::Enum
        abstract!

        HIGH = :high
        NORMAL = :normal

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
