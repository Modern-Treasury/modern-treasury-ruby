# typed: strong

module ModernTreasury
  module Models
    class PaymentOrderListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      def after_cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def after_cursor=(_)
      end

      sig { returns(T.nilable(String)) }
      def counterparty_id
      end

      sig { params(_: String).returns(String) }
      def counterparty_id=(_)
      end

      # An inclusive upper bound for searching created_at
      sig { returns(T.nilable(Date)) }
      def created_at_end
      end

      sig { params(_: Date).returns(Date) }
      def created_at_end=(_)
      end

      # An inclusive lower bound for searching created_at
      sig { returns(T.nilable(Date)) }
      def created_at_start
      end

      sig { params(_: Date).returns(Date) }
      def created_at_start=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def direction
      end

      sig { params(_: Symbol).returns(Symbol) }
      def direction=(_)
      end

      # An inclusive upper bound for searching effective_date
      sig { returns(T.nilable(Date)) }
      def effective_date_end
      end

      sig { params(_: Date).returns(Date) }
      def effective_date_end=(_)
      end

      # An inclusive lower bound for searching effective_date
      sig { returns(T.nilable(Date)) }
      def effective_date_start
      end

      sig { params(_: Date).returns(Date) }
      def effective_date_start=(_)
      end

      # For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(T.nilable(String)) }
      def originating_account_id
      end

      sig { params(_: String).returns(String) }
      def originating_account_id=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def per_page
      end

      sig { params(_: Integer).returns(Integer) }
      def per_page=(_)
      end

      # Either `normal` or `high`. For ACH and EFT payments, `high` represents a
      #   same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
      #   an overnight check rather than standard mail.
      sig { returns(T.nilable(Symbol)) }
      def priority
      end

      sig { params(_: Symbol).returns(Symbol) }
      def priority=(_)
      end

      # An inclusive upper bound for searching process_after
      sig { returns(T.nilable(Time)) }
      def process_after_end
      end

      sig { params(_: Time).returns(Time) }
      def process_after_end=(_)
      end

      # An inclusive lower bound for searching process_after
      sig { returns(T.nilable(Time)) }
      def process_after_start
      end

      sig { params(_: Time).returns(Time) }
      def process_after_start=(_)
      end

      # Query for records with the provided reference number
      sig { returns(T.nilable(String)) }
      def reference_number
      end

      sig { params(_: String).returns(String) }
      def reference_number=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # The ID of a transaction that the payment order has been reconciled to.
      sig { returns(T.nilable(String)) }
      def transaction_id
      end

      sig { params(_: String).returns(String) }
      def transaction_id=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

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
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
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
      )
      end

      sig do
        override
          .returns(
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
              type: Symbol,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Either `normal` or `high`. For ACH and EFT payments, `high` represents a
      #   same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
      #   an overnight check rather than standard mail.
      class Priority < ModernTreasury::Enum
        abstract!

        HIGH = :high
        NORMAL = :normal

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
