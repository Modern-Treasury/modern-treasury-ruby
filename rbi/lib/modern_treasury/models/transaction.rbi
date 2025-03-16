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

      # Value in specified currency's smallest unit. e.g. $10 would be represented
      #   as 1000.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # The date on which the transaction occurred.
      sig { returns(T.nilable(Date)) }
      def as_of_date
      end

      sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
      def as_of_date=(_)
      end

      # The time on which the transaction occurred. Depending on the granularity of the
      #   timestamp information received from the bank, it may be `null`.
      sig { returns(T.nilable(Time)) }
      def as_of_time
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def as_of_time=(_)
      end

      # The timezone in which the `as_of_time` is represented. Can be `null` if the bank
      #   does not provide timezone info.
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

      # Currency that this transaction is denominated in.
      sig { returns(Symbol) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      # An object containing key-value pairs, each with a custom identifier as the key
      #   and a string value.
      sig { returns(T::Hash[Symbol, String]) }
      def custom_identifiers
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def custom_identifiers=(_)
      end

      # Either `credit` or `debit`.
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

      # Associated serialized foreign exchange rate information.
      sig { returns(T.nilable(ModernTreasury::Models::Transaction::ForeignExchangeRate)) }
      def foreign_exchange_rate
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::Transaction::ForeignExchangeRate))
          .returns(T.nilable(ModernTreasury::Models::Transaction::ForeignExchangeRate))
      end
      def foreign_exchange_rate=(_)
      end

      # The ID of the relevant Internal Account.
      sig { returns(String) }
      def internal_account_id
      end

      sig { params(_: String).returns(String) }
      def internal_account_id=(_)
      end

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
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

      # This field will be `true` if the transaction has posted to the account.
      sig { returns(T::Boolean) }
      def posted
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def posted=(_)
      end

      # This field will be `true` if a transaction is reconciled by the Modern Treasury
      #   system. This means that it has transaction line items that sum up to the
      #   transaction's amount.
      sig { returns(T::Boolean) }
      def reconciled
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def reconciled=(_)
      end

      # The type of the transaction. Examples could be
      #   `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
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

      # When applicable, the bank-given code that determines the transaction's category.
      #   For most banks this is the BAI2/BTRS transaction code.
      sig { returns(T.nilable(String)) }
      def vendor_code
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def vendor_code=(_)
      end

      # The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
      #   `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
      #   `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
      #   `swift`, `us_bank`, or others.
      sig { returns(T.nilable(Symbol)) }
      def vendor_code_type
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def vendor_code_type=(_)
      end

      # An identifier given to this transaction by the bank, often `null`.
      sig { returns(T.nilable(String)) }
      def vendor_customer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def vendor_customer_id=(_)
      end

      # An identifier given to this transaction by the bank.
      sig { returns(T.nilable(String)) }
      def vendor_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def vendor_id=(_)
      end

      # This field contains additional information that the bank provided about the
      #   transaction. This is structured data. Some of the data in here might overlap
      #   with what is in the `vendor_description`. For example, the OBI could be a part
      #   of the vendor description, and it would also be included in here. The attributes
      #   that are passed through the details field will vary based on your banking
      #   partner. Currently, the following keys may be in the details object:
      #   `originator_name`, `originator_to_beneficiary_information`.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def details
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def details=(_)
      end

      # The transaction detail text that often appears in on your bank statement and in
      #   your banking portal.
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
          as_of_time: T.nilable(Time),
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
        )
          .returns(T.attached_class)
      end
      def self.new(
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
        override
          .returns(
            {
              id: String,
              amount: Integer,
              as_of_date: T.nilable(Date),
              as_of_time: T.nilable(Time),
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
        # Amount in the lowest denomination of the `base_currency` to convert, often
        #   called the "sell" amount.
        sig { returns(Integer) }
        def base_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def base_amount=(_)
        end

        # Currency to convert, often called the "sell" currency.
        sig { returns(Symbol) }
        def base_currency
        end

        sig { params(_: Symbol).returns(Symbol) }
        def base_currency=(_)
        end

        # The exponent component of the rate. The decimal is calculated as `value` / (10 ^
        #   `exponent`).
        sig { returns(Integer) }
        def exponent
        end

        sig { params(_: Integer).returns(Integer) }
        def exponent=(_)
        end

        # A string representation of the rate.
        sig { returns(String) }
        def rate_string
        end

        sig { params(_: String).returns(String) }
        def rate_string=(_)
        end

        # Amount in the lowest denomination of the `target_currency`, often called the
        #   "buy" amount.
        sig { returns(Integer) }
        def target_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def target_amount=(_)
        end

        # Currency to convert the `base_currency` to, often called the "buy" currency.
        sig { returns(Symbol) }
        def target_currency
        end

        sig { params(_: Symbol).returns(Symbol) }
        def target_currency=(_)
        end

        # The whole number component of the rate. The decimal is calculated as `value` /
        #   (10 ^ `exponent`).
        sig { returns(Integer) }
        def value
        end

        sig { params(_: Integer).returns(Integer) }
        def value=(_)
        end

        # Associated serialized foreign exchange rate information.
        sig do
          params(
            base_amount: Integer,
            base_currency: Symbol,
            exponent: Integer,
            rate_string: String,
            target_amount: Integer,
            target_currency: Symbol,
            value: Integer
          )
            .returns(T.attached_class)
        end
        def self.new(base_amount:, base_currency:, exponent:, rate_string:, target_amount:, target_currency:, value:)
        end

        sig do
          override
            .returns(
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

      # The type of the transaction. Examples could be
      #   `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
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
        OTHER = :other
      end

      # The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
      #   `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
      #   `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
      #   `swift`, `us_bank`, or others.
      class VendorCodeType < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        BAI2 = :bai2
        BANKING_CIRCLE = :banking_circle
        BANKPROV = :bankprov
        BNK_DEV = :bnk_dev
        CLEARTOUCH = :cleartouch
        COLUMN = :column
        CROSS_RIVER = :cross_river
        CURRENCYCLOUD = :currencycloud
        DC_BANK = :dc_bank
        DWOLLA = :dwolla
        EVOLVE = :evolve
        GOLDMAN_SACHS = :goldman_sachs
        ISO20022 = :iso20022
        JPMC = :jpmc
        MX = :mx
        PLAID = :plaid
        PNC = :pnc
        RSPEC_VENDOR = :rspec_vendor
        SIGNET = :signet
        SILVERGATE = :silvergate
        SWIFT = :swift
        US_BANK = :us_bank
        USER = :user
      end
    end
  end
end
