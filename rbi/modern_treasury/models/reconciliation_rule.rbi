# typed: strong

module ModernTreasury
  module Models
    class ReconciliationRule < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::ReconciliationRule,
            ModernTreasury::Internal::AnyHash
          )
        end

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
      sig { returns(ModernTreasury::ReconciliationRule::Direction::OrSymbol) }
      attr_accessor :direction

      # The ID of the Internal Account for the expected payment
      sig { returns(String) }
      attr_accessor :internal_account_id

      # The ID of the counterparty you expect for this payment
      sig { returns(T.nilable(String)) }
      attr_accessor :counterparty_id

      # Must conform to ISO 4217. Defaults to the currency of the internal account
      sig { returns(T.nilable(ModernTreasury::Currency::OrSymbol)) }
      attr_reader :currency

      sig { params(currency: ModernTreasury::Currency::OrSymbol).void }
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
      sig do
        returns(T.nilable(ModernTreasury::ReconciliationRule::Type::OrSymbol))
      end
      attr_accessor :type

      sig do
        params(
          amount_lower_bound: Integer,
          amount_upper_bound: Integer,
          direction: ModernTreasury::ReconciliationRule::Direction::OrSymbol,
          internal_account_id: String,
          counterparty_id: T.nilable(String),
          currency: ModernTreasury::Currency::OrSymbol,
          custom_identifiers: T.nilable(T::Hash[Symbol, String]),
          date_lower_bound: T.nilable(Date),
          date_upper_bound: T.nilable(Date),
          type: T.nilable(ModernTreasury::ReconciliationRule::Type::OrSymbol)
        ).returns(T.attached_class)
      end
      def self.new(
        # The lowest amount this expected payment may be equal to. Value in specified
        # currency's smallest unit. e.g. $10 would be represented as 1000.
        amount_lower_bound:,
        # The highest amount this expected payment may be equal to. Value in specified
        # currency's smallest unit. e.g. $10 would be represented as 1000.
        amount_upper_bound:,
        # One of credit or debit. When you are receiving money, use credit. When you are
        # being charged, use debit.
        direction:,
        # The ID of the Internal Account for the expected payment
        internal_account_id:,
        # The ID of the counterparty you expect for this payment
        counterparty_id: nil,
        # Must conform to ISO 4217. Defaults to the currency of the internal account
        currency: nil,
        # A hash of custom identifiers for this payment
        custom_identifiers: nil,
        # The earliest date the payment may come in. Format is yyyy-mm-dd
        date_lower_bound: nil,
        # The latest date the payment may come in. Format is yyyy-mm-dd
        date_upper_bound: nil,
        # One of ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
        # sepa, signet wire
        type: nil
      )
      end

      sig do
        override.returns(
          {
            amount_lower_bound: Integer,
            amount_upper_bound: Integer,
            direction: ModernTreasury::ReconciliationRule::Direction::OrSymbol,
            internal_account_id: String,
            counterparty_id: T.nilable(String),
            currency: ModernTreasury::Currency::OrSymbol,
            custom_identifiers: T.nilable(T::Hash[Symbol, String]),
            date_lower_bound: T.nilable(Date),
            date_upper_bound: T.nilable(Date),
            type: T.nilable(ModernTreasury::ReconciliationRule::Type::OrSymbol)
          }
        )
      end
      def to_hash
      end

      # One of credit or debit. When you are receiving money, use credit. When you are
      # being charged, use debit.
      module Direction
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::ReconciliationRule::Direction)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT =
          T.let(
            :credit,
            ModernTreasury::ReconciliationRule::Direction::TaggedSymbol
          )
        DEBIT =
          T.let(
            :debit,
            ModernTreasury::ReconciliationRule::Direction::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ReconciliationRule::Direction::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # One of ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
      # sepa, signet wire
      module Type
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::ReconciliationRule::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH =
          T.let(:ach, ModernTreasury::ReconciliationRule::Type::TaggedSymbol)
        AU_BECS =
          T.let(
            :au_becs,
            ModernTreasury::ReconciliationRule::Type::TaggedSymbol
          )
        BACS =
          T.let(:bacs, ModernTreasury::ReconciliationRule::Type::TaggedSymbol)
        BASE =
          T.let(:base, ModernTreasury::ReconciliationRule::Type::TaggedSymbol)
        BOOK =
          T.let(:book, ModernTreasury::ReconciliationRule::Type::TaggedSymbol)
        CARD =
          T.let(:card, ModernTreasury::ReconciliationRule::Type::TaggedSymbol)
        CHATS =
          T.let(:chats, ModernTreasury::ReconciliationRule::Type::TaggedSymbol)
        CHECK =
          T.let(:check, ModernTreasury::ReconciliationRule::Type::TaggedSymbol)
        CROSS_BORDER =
          T.let(
            :cross_border,
            ModernTreasury::ReconciliationRule::Type::TaggedSymbol
          )
        DK_NETS =
          T.let(
            :dk_nets,
            ModernTreasury::ReconciliationRule::Type::TaggedSymbol
          )
        EFT =
          T.let(:eft, ModernTreasury::ReconciliationRule::Type::TaggedSymbol)
        ETHEREUM =
          T.let(
            :ethereum,
            ModernTreasury::ReconciliationRule::Type::TaggedSymbol
          )
        HU_ICS =
          T.let(:hu_ics, ModernTreasury::ReconciliationRule::Type::TaggedSymbol)
        INTERAC =
          T.let(
            :interac,
            ModernTreasury::ReconciliationRule::Type::TaggedSymbol
          )
        MASAV =
          T.let(:masav, ModernTreasury::ReconciliationRule::Type::TaggedSymbol)
        MX_CCEN =
          T.let(
            :mx_ccen,
            ModernTreasury::ReconciliationRule::Type::TaggedSymbol
          )
        NEFT =
          T.let(:neft, ModernTreasury::ReconciliationRule::Type::TaggedSymbol)
        NICS =
          T.let(:nics, ModernTreasury::ReconciliationRule::Type::TaggedSymbol)
        NZ_BECS =
          T.let(
            :nz_becs,
            ModernTreasury::ReconciliationRule::Type::TaggedSymbol
          )
        PL_ELIXIR =
          T.let(
            :pl_elixir,
            ModernTreasury::ReconciliationRule::Type::TaggedSymbol
          )
        POLYGON =
          T.let(
            :polygon,
            ModernTreasury::ReconciliationRule::Type::TaggedSymbol
          )
        PROVXCHANGE =
          T.let(
            :provxchange,
            ModernTreasury::ReconciliationRule::Type::TaggedSymbol
          )
        RO_SENT =
          T.let(
            :ro_sent,
            ModernTreasury::ReconciliationRule::Type::TaggedSymbol
          )
        RTP =
          T.let(:rtp, ModernTreasury::ReconciliationRule::Type::TaggedSymbol)
        SE_BANKGIROT =
          T.let(
            :se_bankgirot,
            ModernTreasury::ReconciliationRule::Type::TaggedSymbol
          )
        SEN =
          T.let(:sen, ModernTreasury::ReconciliationRule::Type::TaggedSymbol)
        SEPA =
          T.let(:sepa, ModernTreasury::ReconciliationRule::Type::TaggedSymbol)
        SG_GIRO =
          T.let(
            :sg_giro,
            ModernTreasury::ReconciliationRule::Type::TaggedSymbol
          )
        SIC =
          T.let(:sic, ModernTreasury::ReconciliationRule::Type::TaggedSymbol)
        SIGNET =
          T.let(:signet, ModernTreasury::ReconciliationRule::Type::TaggedSymbol)
        SKNBI =
          T.let(:sknbi, ModernTreasury::ReconciliationRule::Type::TaggedSymbol)
        SOLANA =
          T.let(:solana, ModernTreasury::ReconciliationRule::Type::TaggedSymbol)
        WIRE =
          T.let(:wire, ModernTreasury::ReconciliationRule::Type::TaggedSymbol)
        ZENGIN =
          T.let(:zengin, ModernTreasury::ReconciliationRule::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[ModernTreasury::ReconciliationRule::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
