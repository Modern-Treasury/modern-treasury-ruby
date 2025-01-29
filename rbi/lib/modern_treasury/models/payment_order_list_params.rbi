# typed: strong

module ModernTreasury
  module Models
    class PaymentOrderListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            after_cursor: T.nilable(String),
            counterparty_id: String,
            created_at_end: Date,
            created_at_start: Date,
            direction: Symbol,
            effective_date_end: Date,
            effective_date_start: Date,
            metadata: T::Hash[Symbol, String],
            originating_account_id: String,
            per_page: Integer,
            priority: Symbol,
            process_after_end: Time,
            process_after_start: Time,
            reference_number: String,
            status: Symbol,
            transaction_id: String,
            type: Symbol
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

      sig { returns(T.nilable(Date)) }
      attr_reader :created_at_end

      sig { params(created_at_end: Date).void }
      attr_writer :created_at_end

      sig { returns(T.nilable(Date)) }
      attr_reader :created_at_start

      sig { params(created_at_start: Date).void }
      attr_writer :created_at_start

      sig { returns(T.nilable(Symbol)) }
      attr_reader :direction

      sig { params(direction: Symbol).void }
      attr_writer :direction

      sig { returns(T.nilable(Date)) }
      attr_reader :effective_date_end

      sig { params(effective_date_end: Date).void }
      attr_writer :effective_date_end

      sig { returns(T.nilable(Date)) }
      attr_reader :effective_date_start

      sig { params(effective_date_start: Date).void }
      attr_writer :effective_date_start

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(String)) }
      attr_reader :originating_account_id

      sig { params(originating_account_id: String).void }
      attr_writer :originating_account_id

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig { returns(T.nilable(Symbol)) }
      attr_reader :priority

      sig { params(priority: Symbol).void }
      attr_writer :priority

      sig { returns(T.nilable(Time)) }
      attr_reader :process_after_end

      sig { params(process_after_end: Time).void }
      attr_writer :process_after_end

      sig { returns(T.nilable(Time)) }
      attr_reader :process_after_start

      sig { params(process_after_start: Time).void }
      attr_writer :process_after_start

      sig { returns(T.nilable(String)) }
      attr_reader :reference_number

      sig { params(reference_number: String).void }
      attr_writer :reference_number

      sig { returns(T.nilable(Symbol)) }
      attr_reader :status

      sig { params(status: Symbol).void }
      attr_writer :status

      sig { returns(T.nilable(String)) }
      attr_reader :transaction_id

      sig { params(transaction_id: String).void }
      attr_writer :transaction_id

      sig { returns(T.nilable(Symbol)) }
      attr_reader :type

      sig { params(type: Symbol).void }
      attr_writer :type

      sig do
        params(
          after_cursor: T.nilable(String),
          counterparty_id: String,
          created_at_end: Date,
          created_at_start: Date,
          direction: Symbol,
          effective_date_end: Date,
          effective_date_start: Date,
          metadata: T::Hash[Symbol, String],
          originating_account_id: String,
          per_page: Integer,
          priority: Symbol,
          process_after_end: Time,
          process_after_start: Time,
          reference_number: String,
          status: Symbol,
          transaction_id: String,
          type: Symbol,
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(
        after_cursor: nil,
        counterparty_id: nil,
        created_at_end: nil,
        created_at_start: nil,
        direction: nil,
        effective_date_end: nil,
        effective_date_start: nil,
        metadata: nil,
        originating_account_id: nil,
        per_page: nil,
        priority: nil,
        process_after_end: nil,
        process_after_start: nil,
        reference_number: nil,
        status: nil,
        transaction_id: nil,
        type: nil,
        request_options: {}
      ); end

      sig { returns(ModernTreasury::Models::PaymentOrderListParams::Shape) }
      def to_h; end

      class Priority < ModernTreasury::Enum
        abstract!

        HIGH = :high
        NORMAL = :normal

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end

      class Status < ModernTreasury::Enum
        abstract!

        APPROVED = :approved
        CANCELLED = :cancelled
        COMPLETED = :completed
        DENIED = :denied
        FAILED = :failed
        NEEDS_APPROVAL = :needs_approval
        PENDING = :pending
        PROCESSING = :processing
        RETURNED = :returned
        REVERSED = :reversed
        SENT = :sent

        sig { returns(T::Array[Symbol]) }
        def self.values; end
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

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
