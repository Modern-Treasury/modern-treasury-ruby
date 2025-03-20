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
      sig { returns(ModernTreasury::Models::ReconciliationRule::Direction::OrSymbol) }
      def direction
      end

      sig do
        params(_: ModernTreasury::Models::ReconciliationRule::Direction::OrSymbol)
          .returns(ModernTreasury::Models::ReconciliationRule::Direction::OrSymbol)
      end
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
      sig { returns(T.nilable(ModernTreasury::Models::Currency::OrSymbol)) }
      def currency
      end

      sig { params(_: ModernTreasury::Models::Currency::OrSymbol).returns(ModernTreasury::Models::Currency::OrSymbol) }
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
      sig { returns(T.nilable(ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)) }
      def type
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::ReconciliationRule::Type::OrSymbol))
          .returns(T.nilable(ModernTreasury::Models::ReconciliationRule::Type::OrSymbol))
      end
      def type=(_)
      end

      sig do
        params(
          amount_lower_bound: Integer,
          amount_upper_bound: Integer,
          direction: ModernTreasury::Models::ReconciliationRule::Direction::OrSymbol,
          internal_account_id: String,
          counterparty_id: T.nilable(String),
          currency: ModernTreasury::Models::Currency::OrSymbol,
          custom_identifiers: T.nilable(T::Hash[Symbol, String]),
          date_lower_bound: T.nilable(Date),
          date_upper_bound: T.nilable(Date),
          type: T.nilable(ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
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
              direction: ModernTreasury::Models::ReconciliationRule::Direction::OrSymbol,
              internal_account_id: String,
              counterparty_id: T.nilable(String),
              currency: ModernTreasury::Models::Currency::OrSymbol,
              custom_identifiers: T.nilable(T::Hash[Symbol, String]),
              date_lower_bound: T.nilable(Date),
              date_upper_bound: T.nilable(Date),
              type: T.nilable(ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
            }
          )
      end
      def to_hash
      end

      # One of credit or debit. When you are receiving money, use credit. When you are
      #   being charged, use debit.
      module Direction
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::ReconciliationRule::Direction) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::ReconciliationRule::Direction::TaggedSymbol) }

        CREDIT = T.let(:credit, ModernTreasury::Models::ReconciliationRule::Direction::OrSymbol)
        DEBIT = T.let(:debit, ModernTreasury::Models::ReconciliationRule::Direction::OrSymbol)
      end

      # One of ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
      #   sepa, signet wire
      module Type
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::ReconciliationRule::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol) }

        ACH = T.let(:ach, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
        AU_BECS = T.let(:au_becs, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
        BACS = T.let(:bacs, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
        BOOK = T.let(:book, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
        CARD = T.let(:card, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
        CHATS = T.let(:chats, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
        CHECK = T.let(:check, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
        CROSS_BORDER = T.let(:cross_border, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
        DK_NETS = T.let(:dk_nets, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
        EFT = T.let(:eft, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
        HU_ICS = T.let(:hu_ics, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
        INTERAC = T.let(:interac, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
        MASAV = T.let(:masav, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
        MX_CCEN = T.let(:mx_ccen, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
        NEFT = T.let(:neft, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
        NICS = T.let(:nics, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
        NZ_BECS = T.let(:nz_becs, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
        PL_ELIXIR = T.let(:pl_elixir, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
        PROVXCHANGE = T.let(:provxchange, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
        RO_SENT = T.let(:ro_sent, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
        RTP = T.let(:rtp, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
        SE_BANKGIROT = T.let(:se_bankgirot, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
        SEN = T.let(:sen, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
        SEPA = T.let(:sepa, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
        SG_GIRO = T.let(:sg_giro, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
        SIC = T.let(:sic, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
        SIGNET = T.let(:signet, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
        SKNBI = T.let(:sknbi, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
        WIRE = T.let(:wire, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
        ZENGIN = T.let(:zengin, ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)
      end
    end
  end
end
