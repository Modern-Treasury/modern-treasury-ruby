# typed: strong

module ModernTreasury
  module Models
    class ReconciliationRule < ModernTreasury::BaseModel
      # The lowest amount this expected payment may be equal to. Value in specified
      #   currency's smallest unit. e.g. $10 would be represented as 1000.
      sig { returns(Integer) }
      def amount_lower_bound
      end

      sig { params(_: Integer).returns(Integer) }
      def amount_lower_bound=(_)
      end

      # The highest amount this expected payment may be equal to. Value in specified
      #   currency's smallest unit. e.g. $10 would be represented as 1000.
      sig { returns(Integer) }
      def amount_upper_bound
      end

      sig { params(_: Integer).returns(Integer) }
      def amount_upper_bound=(_)
      end

      # One of credit or debit. When you are receiving money, use credit. When you are
      #   being charged, use debit.
      sig { returns(Symbol) }
      def direction
      end

      sig { params(_: Symbol).returns(Symbol) }
      def direction=(_)
      end

      # The ID of the Internal Account for the expected payment
      sig { returns(String) }
      def internal_account_id
      end

      sig { params(_: String).returns(String) }
      def internal_account_id=(_)
      end

      # The ID of the counterparty you expect for this payment
      sig { returns(T.nilable(String)) }
      def counterparty_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def counterparty_id=(_)
      end

      # Must conform to ISO 4217. Defaults to the currency of the internal account
      sig { returns(T.nilable(Symbol)) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      # A hash of custom identifiers for this payment
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def custom_identifiers
      end

      sig { params(_: T.nilable(T::Hash[Symbol, String])).returns(T.nilable(T::Hash[Symbol, String])) }
      def custom_identifiers=(_)
      end

      # The earliest date the payment may come in. Format is yyyy-mm-dd
      sig { returns(T.nilable(Date)) }
      def date_lower_bound
      end

      sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
      def date_lower_bound=(_)
      end

      # The latest date the payment may come in. Format is yyyy-mm-dd
      sig { returns(T.nilable(Date)) }
      def date_upper_bound
      end

      sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
      def date_upper_bound=(_)
      end

      # One of ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
      #   sepa, signet wire
      sig { returns(T.nilable(Symbol)) }
      def type
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def type=(_)
      end

      sig do
        params(
          amount_lower_bound: Integer,
          amount_upper_bound: Integer,
          direction: Symbol,
          internal_account_id: String,
          counterparty_id: T.nilable(String),
          currency: Symbol,
          custom_identifiers: T.nilable(T::Hash[Symbol, String]),
          date_lower_bound: T.nilable(Date),
          date_upper_bound: T.nilable(Date),
          type: T.nilable(Symbol)
        )
          .returns(T.attached_class)
      end
      def self.new(
        amount_lower_bound:,
        amount_upper_bound:,
        direction:,
        internal_account_id:,
        counterparty_id: nil,
        currency: nil,
        custom_identifiers: nil,
        date_lower_bound: nil,
        date_upper_bound: nil,
        type: nil
      )
      end

      sig do
        override
          .returns(
            {
              amount_lower_bound: Integer,
              amount_upper_bound: Integer,
              direction: Symbol,
              internal_account_id: String,
              counterparty_id: T.nilable(String),
              currency: Symbol,
              custom_identifiers: T.nilable(T::Hash[Symbol, String]),
              date_lower_bound: T.nilable(Date),
              date_upper_bound: T.nilable(Date),
              type: T.nilable(Symbol)
            }
          )
      end
      def to_hash
      end

      # One of credit or debit. When you are receiving money, use credit. When you are
      #   being charged, use debit.
      class Direction < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        CREDIT = :credit
        DEBIT = :debit
      end

      # One of ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
      #   sepa, signet wire
      class Type < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

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
      end
    end
  end
end
