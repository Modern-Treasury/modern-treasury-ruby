# typed: strong

module ModernTreasury
  module Models
    class ExpectedPaymentListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(String)) }
      attr_reader :counterparty_id

      sig { params(counterparty_id: String).void }
      attr_writer :counterparty_id

      sig { returns(T.nilable(Time)) }
      attr_reader :created_at_lower_bound

      sig { params(created_at_lower_bound: Time).void }
      attr_writer :created_at_lower_bound

      sig { returns(T.nilable(Time)) }
      attr_reader :created_at_upper_bound

      sig { params(created_at_upper_bound: Time).void }
      attr_writer :created_at_upper_bound

      sig { returns(T.nilable(Symbol)) }
      attr_reader :direction

      sig { params(direction: Symbol).void }
      attr_writer :direction

      sig { returns(T.nilable(String)) }
      attr_reader :internal_account_id

      sig { params(internal_account_id: String).void }
      attr_writer :internal_account_id

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig { returns(T.nilable(Symbol)) }
      attr_reader :status

      sig { params(status: Symbol).void }
      attr_writer :status

      sig { returns(T.nilable(Symbol)) }
      attr_reader :type

      sig { params(type: Symbol).void }
      attr_writer :type

      sig do
        params(
          after_cursor: T.nilable(String),
          counterparty_id: String,
          created_at_lower_bound: Time,
          created_at_upper_bound: Time,
          direction: Symbol,
          internal_account_id: String,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          status: Symbol,
          type: Symbol,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        after_cursor: nil,
        counterparty_id: nil,
        created_at_lower_bound: nil,
        created_at_upper_bound: nil,
        direction: nil,
        internal_account_id: nil,
        metadata: nil,
        per_page: nil,
        status: nil,
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after_cursor: T.nilable(String),
            counterparty_id: String,
            created_at_lower_bound: Time,
            created_at_upper_bound: Time,
            direction: Symbol,
            internal_account_id: String,
            metadata: T::Hash[Symbol, String],
            per_page: Integer,
            status: Symbol,
            type: Symbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Status < ModernTreasury::Enum
        abstract!

        ARCHIVED = :archived
        PARTIALLY_RECONCILED = :partially_reconciled
        RECONCILED = :reconciled
        UNRECONCILED = :unreconciled

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < ModernTreasury::Enum
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
        def self.values
        end
      end
    end
  end
end
