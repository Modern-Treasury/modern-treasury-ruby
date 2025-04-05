# typed: strong

module ModernTreasury
  module Models
    class ReconciliationRule < ModernTreasury::Internal::Type::BaseModel
      # The lowest amount this expected payment may be equal to. Value in specified
      # currency's smallest unit. e.g. $10 would be represented as 1000.
      sig { returns(Integer) }
      attr_accessor :amount_lower_bound

      # The highest amount this expected payment may be equal to. Value in specified
      # currency's smallest unit. e.g. $10 would be represented as 1000.
      sig { returns(Integer) }
      attr_accessor :amount_upper_bound

      # One of credit or debit. When you are receiving money, use credit. When you are
      # being charged, use debit.
      sig { returns(ModernTreasury::Models::ReconciliationRule::Direction::OrSymbol) }
      attr_accessor :direction

      # The ID of the Internal Account for the expected payment
      sig { returns(String) }
      attr_accessor :internal_account_id

      # The ID of the counterparty you expect for this payment
      sig { returns(T.nilable(String)) }
      attr_accessor :counterparty_id

      # Must conform to ISO 4217. Defaults to the currency of the internal account
      sig { returns(T.nilable(ModernTreasury::Models::Currency::OrSymbol)) }
      attr_reader :currency

      sig { params(currency: ModernTreasury::Models::Currency::OrSymbol).void }
      attr_writer :currency

      # A hash of custom identifiers for this payment
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :custom_identifiers

      # The earliest date the payment may come in. Format is yyyy-mm-dd
      sig { returns(T.nilable(Date)) }
      attr_accessor :date_lower_bound

      # The latest date the payment may come in. Format is yyyy-mm-dd
      sig { returns(T.nilable(Date)) }
      attr_accessor :date_upper_bound

      # One of ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
      # sepa, signet wire
      sig { returns(T.nilable(ModernTreasury::Models::ReconciliationRule::Type::OrSymbol)) }
      attr_accessor :type

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
      ); end
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
      def to_hash; end

      # One of credit or debit. When you are receiving money, use credit. When you are
      # being charged, use debit.
      module Direction
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::ReconciliationRule::Direction) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::ReconciliationRule::Direction::TaggedSymbol) }

        CREDIT = T.let(:credit, ModernTreasury::Models::ReconciliationRule::Direction::TaggedSymbol)
        DEBIT = T.let(:debit, ModernTreasury::Models::ReconciliationRule::Direction::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::ReconciliationRule::Direction::TaggedSymbol]) }
        def self.values; end
      end

      # One of ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
      # sepa, signet wire
      module Type
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::ReconciliationRule::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol) }

        ACH = T.let(:ach, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)
        AU_BECS = T.let(:au_becs, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)
        BACS = T.let(:bacs, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)
        BOOK = T.let(:book, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)
        CARD = T.let(:card, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)
        CHATS = T.let(:chats, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)
        CHECK = T.let(:check, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)
        CROSS_BORDER = T.let(:cross_border, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)
        DK_NETS = T.let(:dk_nets, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)
        EFT = T.let(:eft, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)
        HU_ICS = T.let(:hu_ics, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)
        INTERAC = T.let(:interac, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)
        MASAV = T.let(:masav, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)
        MX_CCEN = T.let(:mx_ccen, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)
        NEFT = T.let(:neft, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)
        NICS = T.let(:nics, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)
        NZ_BECS = T.let(:nz_becs, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)
        PL_ELIXIR = T.let(:pl_elixir, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)
        PROVXCHANGE = T.let(:provxchange, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)
        RO_SENT = T.let(:ro_sent, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)
        RTP = T.let(:rtp, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)
        SE_BANKGIROT = T.let(:se_bankgirot, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)
        SEN = T.let(:sen, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)
        SEPA = T.let(:sepa, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)
        SG_GIRO = T.let(:sg_giro, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)
        SIC = T.let(:sic, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)
        SIGNET = T.let(:signet, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)
        SKNBI = T.let(:sknbi, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)
        WIRE = T.let(:wire, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)
        ZENGIN = T.let(:zengin, ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::ReconciliationRule::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
