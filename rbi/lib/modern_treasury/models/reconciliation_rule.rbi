# typed: strong

module ModernTreasury
  module Models
    class ReconciliationRule < ModernTreasury::BaseModel
      sig { returns(Integer) }
      attr_accessor :amount_lower_bound

      sig { returns(Integer) }
      attr_accessor :amount_upper_bound

      sig { returns(Symbol) }
      attr_accessor :direction

      sig { returns(String) }
      attr_accessor :internal_account_id

      sig { returns(T.nilable(String)) }
      attr_accessor :counterparty_id

      sig { returns(T.nilable(Symbol)) }
      attr_reader :currency

      sig { params(currency: Symbol).void }
      attr_writer :currency

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :custom_identifiers

      sig { returns(T.nilable(Date)) }
      attr_accessor :date_lower_bound

      sig { returns(T.nilable(Date)) }
      attr_accessor :date_upper_bound

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :type

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
        ).void
      end
      def initialize(
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
        override.returns(
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

      class Direction < ModernTreasury::Enum
        abstract!

        CREDIT = :credit
        DEBIT = :debit

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < ModernTreasury::Enum
        abstract!

        ACH = T.let(:ach, T.nilable(Symbol))
        AU_BECS = T.let(:au_becs, T.nilable(Symbol))
        BACS = T.let(:bacs, T.nilable(Symbol))
        BOOK = T.let(:book, T.nilable(Symbol))
        CARD = T.let(:card, T.nilable(Symbol))
        CHATS = T.let(:chats, T.nilable(Symbol))
        CHECK = T.let(:check, T.nilable(Symbol))
        CROSS_BORDER = T.let(:cross_border, T.nilable(Symbol))
        DK_NETS = T.let(:dk_nets, T.nilable(Symbol))
        EFT = T.let(:eft, T.nilable(Symbol))
        HU_ICS = T.let(:hu_ics, T.nilable(Symbol))
        INTERAC = T.let(:interac, T.nilable(Symbol))
        MASAV = T.let(:masav, T.nilable(Symbol))
        MX_CCEN = T.let(:mx_ccen, T.nilable(Symbol))
        NEFT = T.let(:neft, T.nilable(Symbol))
        NICS = T.let(:nics, T.nilable(Symbol))
        NZ_BECS = T.let(:nz_becs, T.nilable(Symbol))
        PL_ELIXIR = T.let(:pl_elixir, T.nilable(Symbol))
        PROVXCHANGE = T.let(:provxchange, T.nilable(Symbol))
        RO_SENT = T.let(:ro_sent, T.nilable(Symbol))
        RTP = T.let(:rtp, T.nilable(Symbol))
        SE_BANKGIROT = T.let(:se_bankgirot, T.nilable(Symbol))
        SEN = T.let(:sen, T.nilable(Symbol))
        SEPA = T.let(:sepa, T.nilable(Symbol))
        SG_GIRO = T.let(:sg_giro, T.nilable(Symbol))
        SIC = T.let(:sic, T.nilable(Symbol))
        SIGNET = T.let(:signet, T.nilable(Symbol))
        SKNBI = T.let(:sknbi, T.nilable(Symbol))
        WIRE = T.let(:wire, T.nilable(Symbol))
        ZENGIN = T.let(:zengin, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
