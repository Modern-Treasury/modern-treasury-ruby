# typed: strong

module ModernTreasury
  module Models
    class InternalAccountListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            after_cursor: T.nilable(String),
            counterparty_id: String,
            currency: Symbol,
            legal_entity_id: String,
            metadata: T::Hash[Symbol, String],
            payment_direction: Symbol,
            payment_type: Symbol,
            per_page: Integer
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(String)) }
      attr_reader :counterparty_id

      sig { params(counterparty_id: String).void }
      attr_writer :counterparty_id

      sig { returns(T.nilable(Symbol)) }
      attr_reader :currency

      sig { params(currency: Symbol).void }
      attr_writer :currency

      sig { returns(T.nilable(String)) }
      attr_reader :legal_entity_id

      sig { params(legal_entity_id: String).void }
      attr_writer :legal_entity_id

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(Symbol)) }
      attr_reader :payment_direction

      sig { params(payment_direction: Symbol).void }
      attr_writer :payment_direction

      sig { returns(T.nilable(Symbol)) }
      attr_reader :payment_type

      sig { params(payment_type: Symbol).void }
      attr_writer :payment_type

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig do
        params(
          after_cursor: T.nilable(String),
          counterparty_id: String,
          currency: Symbol,
          legal_entity_id: String,
          metadata: T::Hash[Symbol, String],
          payment_direction: Symbol,
          payment_type: Symbol,
          per_page: Integer,
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(
        after_cursor: nil,
        counterparty_id: nil,
        currency: nil,
        legal_entity_id: nil,
        metadata: nil,
        payment_direction: nil,
        payment_type: nil,
        per_page: nil,
        request_options: {}
      ); end

      sig { returns(ModernTreasury::Models::InternalAccountListParams::Shape) }
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

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
