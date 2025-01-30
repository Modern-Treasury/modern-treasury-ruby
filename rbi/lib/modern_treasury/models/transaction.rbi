# typed: strong

module ModernTreasury
  module Models
    class Transaction < ModernTreasury::BaseModel
      Shape = T.type_alias do
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
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(T.nilable(Date)) }
      attr_accessor :as_of_date

      sig { returns(T.nilable(String)) }
      attr_accessor :as_of_time

      sig { returns(T.nilable(String)) }
      attr_accessor :as_of_timezone

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Symbol) }
      attr_accessor :currency

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :custom_identifiers

      sig { returns(String) }
      attr_accessor :direction

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      sig { returns(T.nilable(ModernTreasury::Models::Transaction::ForeignExchangeRate)) }
      attr_accessor :foreign_exchange_rate

      sig { returns(String) }
      attr_accessor :internal_account_id

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :object

      sig { returns(T::Boolean) }
      attr_accessor :posted

      sig { returns(T::Boolean) }
      attr_accessor :reconciled

      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(T.nilable(String)) }
      attr_accessor :vendor_code

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :vendor_code_type

      sig { returns(T.nilable(String)) }
      attr_accessor :vendor_customer_id

      sig { returns(T.nilable(String)) }
      attr_accessor :vendor_id

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :details

      sig { params(details: T::Hash[Symbol, String]).void }
      attr_writer :details

      sig { returns(T.nilable(String)) }
      attr_accessor :vendor_description

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
      ); end

      sig { returns(ModernTreasury::Models::Transaction::Shape) }
      def to_h; end

      class ForeignExchangeRate < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {
            base_amount: Integer,
            base_currency: Symbol,
            exponent: Integer,
            rate_string: String,
            target_amount: Integer,
            target_currency: Symbol,
            value: Integer
          }
        end

        sig { returns(Integer) }
        attr_accessor :base_amount

        sig { returns(Symbol) }
        attr_accessor :base_currency

        sig { returns(Integer) }
        attr_accessor :exponent

        sig { returns(String) }
        attr_accessor :rate_string

        sig { returns(Integer) }
        attr_accessor :target_amount

        sig { returns(Symbol) }
        attr_accessor :target_currency

        sig { returns(Integer) }
        attr_accessor :value

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

        sig { returns(ModernTreasury::Models::Transaction::ForeignExchangeRate::Shape) }
        def to_h; end
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
        def self.values; end
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
        def self.values; end
      end
    end
  end
end
