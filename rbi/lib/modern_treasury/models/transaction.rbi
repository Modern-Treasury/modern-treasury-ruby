# typed: strong

module ModernTreasury
  module Models
    class Transaction < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig { returns(T.nilable(Date)) }
      def as_of_date
      end

      sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
      def as_of_date=(_)
      end

      sig { returns(T.nilable(String)) }
      def as_of_time
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def as_of_time=(_)
      end

      sig { returns(T.nilable(String)) }
      def as_of_timezone
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def as_of_timezone=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(Symbol) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      sig { returns(T::Hash[Symbol, String]) }
      def custom_identifiers
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def custom_identifiers=(_)
      end

      sig { returns(String) }
      def direction
      end

      sig { params(_: String).returns(String) }
      def direction=(_)
      end

      sig { returns(T.nilable(Time)) }
      def discarded_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def discarded_at=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::Transaction::ForeignExchangeRate)) }
      def foreign_exchange_rate
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::Transaction::ForeignExchangeRate)).returns(T.nilable(ModernTreasury::Models::Transaction::ForeignExchangeRate))
      end
      def foreign_exchange_rate=(_)
      end

      sig { returns(String) }
      def internal_account_id
      end

      sig { params(_: String).returns(String) }
      def internal_account_id=(_)
      end

      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      sig { returns(T::Boolean) }
      def posted
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def posted=(_)
      end

      sig { returns(T::Boolean) }
      def reconciled
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def reconciled=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def vendor_code
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def vendor_code=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def vendor_code_type
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def vendor_code_type=(_)
      end

      sig { returns(T.nilable(String)) }
      def vendor_customer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def vendor_customer_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def vendor_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def vendor_id=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def details
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def details=(_)
      end

      sig { returns(T.nilable(String)) }
      def vendor_description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def vendor_description=(_)
      end

      sig do
        params(
          id: String,
          amount: Integer,
          as_of_date: T.nilable(Date),
          as_of_time: T.nilable(String),
          as_of_timezone: T.nilable(String),
          created_at: Time,
          currency: Symbol,
          custom_identifiers: T::Hash[Symbol, String],
          direction: String,
          discarded_at: T.nilable(Time),
          foreign_exchange_rate: T.nilable(ModernTreasury::Models::Transaction::ForeignExchangeRate),
          internal_account_id: String,
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          posted: T::Boolean,
          reconciled: T::Boolean,
          type: Symbol,
          updated_at: Time,
          vendor_code: T.nilable(String),
          vendor_code_type: T.nilable(Symbol),
          vendor_customer_id: T.nilable(String),
          vendor_id: T.nilable(String),
          details: T::Hash[Symbol, String],
          vendor_description: T.nilable(String)
        ).void
      end
      def initialize(
        id:,
        amount:,
        as_of_date:,
        as_of_time:,
        as_of_timezone:,
        created_at:,
        currency:,
        custom_identifiers:,
        direction:,
        discarded_at:,
        foreign_exchange_rate:,
        internal_account_id:,
        live_mode:,
        metadata:,
        object:,
        posted:,
        reconciled:,
        type:,
        updated_at:,
        vendor_code:,
        vendor_code_type:,
        vendor_customer_id:,
        vendor_id:,
        details: nil,
        vendor_description: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount: Integer,
            as_of_date: T.nilable(Date),
            as_of_time: T.nilable(String),
            as_of_timezone: T.nilable(String),
            created_at: Time,
            currency: Symbol,
            custom_identifiers: T::Hash[Symbol, String],
            direction: String,
            discarded_at: T.nilable(Time),
            foreign_exchange_rate: T.nilable(ModernTreasury::Models::Transaction::ForeignExchangeRate),
            internal_account_id: String,
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            object: String,
            posted: T::Boolean,
            reconciled: T::Boolean,
            type: Symbol,
            updated_at: Time,
            vendor_code: T.nilable(String),
            vendor_code_type: T.nilable(Symbol),
            vendor_customer_id: T.nilable(String),
            vendor_id: T.nilable(String),
            details: T::Hash[Symbol, String],
            vendor_description: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class ForeignExchangeRate < ModernTreasury::BaseModel
        sig { returns(Integer) }
        def base_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def base_amount=(_)
        end

        sig { returns(Symbol) }
        def base_currency
        end

        sig { params(_: Symbol).returns(Symbol) }
        def base_currency=(_)
        end

        sig { returns(Integer) }
        def exponent
        end

        sig { params(_: Integer).returns(Integer) }
        def exponent=(_)
        end

        sig { returns(String) }
        def rate_string
        end

        sig { params(_: String).returns(String) }
        def rate_string=(_)
        end

        sig { returns(Integer) }
        def target_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def target_amount=(_)
        end

        sig { returns(Symbol) }
        def target_currency
        end

        sig { params(_: Symbol).returns(Symbol) }
        def target_currency=(_)
        end

        sig { returns(Integer) }
        def value
        end

        sig { params(_: Integer).returns(Integer) }
        def value=(_)
        end

        sig do
          params(
            base_amount: Integer,
            base_currency: Symbol,
            exponent: Integer,
            rate_string: String,
            target_amount: Integer,
            target_currency: Symbol,
            value: Integer
          ).void
        end
        def initialize(
          base_amount:,
          base_currency:,
          exponent:,
          rate_string:,
          target_amount:,
          target_currency:,
          value:
        )
        end

        sig do
          override.returns(
            {
              base_amount: Integer,
              base_currency: Symbol,
              exponent: Integer,
              rate_string: String,
              target_amount: Integer,
              target_currency: Symbol,
              value: Integer
            }
          )
        end
        def to_hash
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
        OTHER = :other

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class VendorCodeType < ModernTreasury::Enum
        abstract!

        BAI2 = T.let(:bai2, T.nilable(Symbol))
        BANKING_CIRCLE = T.let(:banking_circle, T.nilable(Symbol))
        BANKPROV = T.let(:bankprov, T.nilable(Symbol))
        BNK_DEV = T.let(:bnk_dev, T.nilable(Symbol))
        CLEARTOUCH = T.let(:cleartouch, T.nilable(Symbol))
        COLUMN = T.let(:column, T.nilable(Symbol))
        CROSS_RIVER = T.let(:cross_river, T.nilable(Symbol))
        CURRENCYCLOUD = T.let(:currencycloud, T.nilable(Symbol))
        DC_BANK = T.let(:dc_bank, T.nilable(Symbol))
        DWOLLA = T.let(:dwolla, T.nilable(Symbol))
        EVOLVE = T.let(:evolve, T.nilable(Symbol))
        GOLDMAN_SACHS = T.let(:goldman_sachs, T.nilable(Symbol))
        ISO20022 = T.let(:iso20022, T.nilable(Symbol))
        JPMC = T.let(:jpmc, T.nilable(Symbol))
        MX = T.let(:mx, T.nilable(Symbol))
        PLAID = T.let(:plaid, T.nilable(Symbol))
        PNC = T.let(:pnc, T.nilable(Symbol))
        RSPEC_VENDOR = T.let(:rspec_vendor, T.nilable(Symbol))
        SIGNET = T.let(:signet, T.nilable(Symbol))
        SILVERGATE = T.let(:silvergate, T.nilable(Symbol))
        SWIFT = T.let(:swift, T.nilable(Symbol))
        US_BANK = T.let(:us_bank, T.nilable(Symbol))
        USER = T.let(:user, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
