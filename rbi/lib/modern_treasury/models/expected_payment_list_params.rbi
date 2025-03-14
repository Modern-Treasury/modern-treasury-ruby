# typed: strong

module ModernTreasury
  module Models
    class ExpectedPaymentListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      def after_cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def after_cursor=(_)
      end

      # Specify counterparty_id to see expected_payments for a specific account.
      sig { returns(T.nilable(String)) }
      def counterparty_id
      end

      sig { params(_: String).returns(String) }
      def counterparty_id=(_)
      end

      # Used to return expected payments created after some datetime
      sig { returns(T.nilable(Time)) }
      def created_at_lower_bound
      end

      sig { params(_: Time).returns(Time) }
      def created_at_lower_bound=(_)
      end

      # Used to return expected payments created before some datetime
      sig { returns(T.nilable(Time)) }
      def created_at_upper_bound
      end

      sig { params(_: Time).returns(Time) }
      def created_at_upper_bound=(_)
      end

      # One of credit, debit
      sig { returns(T.nilable(Symbol)) }
      def direction
      end

      sig { params(_: Symbol).returns(Symbol) }
      def direction=(_)
      end

      # Specify internal_account_id to see expected_payments for a specific account.
      sig { returns(T.nilable(String)) }
      def internal_account_id
      end

      sig { params(_: String).returns(String) }
      def internal_account_id=(_)
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

      sig { returns(T.nilable(Integer)) }
      def per_page
      end

      sig { params(_: Integer).returns(Integer) }
      def per_page=(_)
      end

      # One of unreconciled, reconciled, or archived.
      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp,sen,
      #   sepa, signet, wire
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
          created_at_lower_bound: Time,
          created_at_upper_bound: Time,
          direction: Symbol,
          internal_account_id: String,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          status: Symbol,
          type: Symbol,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
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
        override
          .returns(
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

      # One of unreconciled, reconciled, or archived.
      class Status < ModernTreasury::Enum
        abstract!

        ARCHIVED = :archived
        PARTIALLY_RECONCILED = :partially_reconciled
        RECONCILED = :reconciled
        UNRECONCILED = :unreconciled

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp,sen,
      #   sepa, signet, wire
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
