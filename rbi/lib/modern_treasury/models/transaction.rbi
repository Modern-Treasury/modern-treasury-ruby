# typed: strong

module ModernTreasury
  module Models
    class Transaction < ModernTreasury::BaseModel
      sig { returns(String) }
      attr_accessor :id

      # Value in specified currency's smallest unit. e.g. $10 would be represented
      #   as 1000.
      sig { returns(Integer) }
      attr_accessor :amount

      # The date on which the transaction occurred.
      sig { returns(T.nilable(Date)) }
      attr_accessor :as_of_date

      # The time on which the transaction occurred. Depending on the granularity of the
      #   timestamp information received from the bank, it may be `null`.
      sig { returns(T.nilable(Time)) }
      attr_accessor :as_of_time

      # The timezone in which the `as_of_time` is represented. Can be `null` if the bank
      #   does not provide timezone info.
      sig { returns(T.nilable(String)) }
      attr_accessor :as_of_timezone

      sig { returns(Time) }
      attr_accessor :created_at

      # Currency that this transaction is denominated in.
      sig { returns(ModernTreasury::Models::Currency::TaggedSymbol) }
      attr_accessor :currency

      # An object containing key-value pairs, each with a custom identifier as the key
      #   and a string value.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :custom_identifiers

      # Either `credit` or `debit`.
      sig { returns(String) }
      attr_accessor :direction

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      # Associated serialized foreign exchange rate information.
      sig { returns(T.nilable(ModernTreasury::Models::Transaction::ForeignExchangeRate)) }
      attr_reader :foreign_exchange_rate

      sig do
        params(
          foreign_exchange_rate: T.nilable(T.any(ModernTreasury::Models::Transaction::ForeignExchangeRate, ModernTreasury::Util::AnyHash))
        )
          .void
      end
      attr_writer :foreign_exchange_rate

      # The ID of the relevant Internal Account.
      sig { returns(String) }
      attr_accessor :internal_account_id

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :object

      # This field will be `true` if the transaction has posted to the account.
      sig { returns(T::Boolean) }
      attr_accessor :posted

      # This field will be `true` if a transaction is reconciled by the Modern Treasury
      #   system. This means that it has transaction line items that sum up to the
      #   transaction's amount.
      sig { returns(T::Boolean) }
      attr_accessor :reconciled

      # The type of the transaction. Examples could be
      #   `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
      sig { returns(ModernTreasury::Models::Transaction::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(Time) }
      attr_accessor :updated_at

      # When applicable, the bank-given code that determines the transaction's category.
      #   For most banks this is the BAI2/BTRS transaction code.
      sig { returns(T.nilable(String)) }
      attr_accessor :vendor_code

      # The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
      #   `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
      #   `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
      #   `swift`, `us_bank`, or others.
      sig { returns(T.nilable(ModernTreasury::Models::Transaction::VendorCodeType::TaggedSymbol)) }
      attr_accessor :vendor_code_type

      # An identifier given to this transaction by the bank, often `null`.
      sig { returns(T.nilable(String)) }
      attr_accessor :vendor_customer_id

      # An identifier given to this transaction by the bank.
      sig { returns(T.nilable(String)) }
      attr_accessor :vendor_id

      # This field contains additional information that the bank provided about the
      #   transaction. This is structured data. Some of the data in here might overlap
      #   with what is in the `vendor_description`. For example, the OBI could be a part
      #   of the vendor description, and it would also be included in here. The attributes
      #   that are passed through the details field will vary based on your banking
      #   partner. Currently, the following keys may be in the details object:
      #   `originator_name`, `originator_to_beneficiary_information`.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :details

      sig { params(details: T::Hash[Symbol, String]).void }
      attr_writer :details

      # The transaction detail text that often appears in on your bank statement and in
      #   your banking portal.
      sig { returns(T.nilable(String)) }
      attr_accessor :vendor_description

      sig do
        params(
          id: String,
          amount: Integer,
          as_of_date: T.nilable(Date),
          as_of_time: T.nilable(Time),
          as_of_timezone: T.nilable(String),
          created_at: Time,
          currency: ModernTreasury::Models::Currency::OrSymbol,
          custom_identifiers: T::Hash[Symbol, String],
          direction: String,
          discarded_at: T.nilable(Time),
          foreign_exchange_rate: T.nilable(T.any(ModernTreasury::Models::Transaction::ForeignExchangeRate, ModernTreasury::Util::AnyHash)),
          internal_account_id: String,
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          posted: T::Boolean,
          reconciled: T::Boolean,
          type: ModernTreasury::Models::Transaction::Type::OrSymbol,
          updated_at: Time,
          vendor_code: T.nilable(String),
          vendor_code_type: T.nilable(ModernTreasury::Models::Transaction::VendorCodeType::OrSymbol),
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
              currency: ModernTreasury::Models::Currency::TaggedSymbol,
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
              type: ModernTreasury::Models::Transaction::Type::TaggedSymbol,
              updated_at: Time,
              vendor_code: T.nilable(String),
              vendor_code_type: T.nilable(ModernTreasury::Models::Transaction::VendorCodeType::TaggedSymbol),
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
        attr_accessor :base_amount

        # Currency to convert, often called the "sell" currency.
        sig { returns(ModernTreasury::Models::Currency::TaggedSymbol) }
        attr_accessor :base_currency

        # The exponent component of the rate. The decimal is calculated as `value` / (10 ^
        #   `exponent`).
        sig { returns(Integer) }
        attr_accessor :exponent

        # A string representation of the rate.
        sig { returns(String) }
        attr_accessor :rate_string

        # Amount in the lowest denomination of the `target_currency`, often called the
        #   "buy" amount.
        sig { returns(Integer) }
        attr_accessor :target_amount

        # Currency to convert the `base_currency` to, often called the "buy" currency.
        sig { returns(ModernTreasury::Models::Currency::TaggedSymbol) }
        attr_accessor :target_currency

        # The whole number component of the rate. The decimal is calculated as `value` /
        #   (10 ^ `exponent`).
        sig { returns(Integer) }
        attr_accessor :value

        # Associated serialized foreign exchange rate information.
        sig do
          params(
            base_amount: Integer,
            base_currency: ModernTreasury::Models::Currency::OrSymbol,
            exponent: Integer,
            rate_string: String,
            target_amount: Integer,
            target_currency: ModernTreasury::Models::Currency::OrSymbol,
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
                base_currency: ModernTreasury::Models::Currency::TaggedSymbol,
                exponent: Integer,
                rate_string: String,
                target_amount: Integer,
                target_currency: ModernTreasury::Models::Currency::TaggedSymbol,
                value: Integer
              }
            )
        end
        def to_hash
        end
      end

      # The type of the transaction. Examples could be
      #   `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
      module Type
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::Transaction::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, ModernTreasury::Models::Transaction::Type::TaggedSymbol) }

        ACH = T.let(:ach, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        AU_BECS = T.let(:au_becs, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        BACS = T.let(:bacs, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        BOOK = T.let(:book, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        CARD = T.let(:card, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        CHATS = T.let(:chats, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        CHECK = T.let(:check, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        CROSS_BORDER = T.let(:cross_border, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        DK_NETS = T.let(:dk_nets, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        EFT = T.let(:eft, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        HU_ICS = T.let(:hu_ics, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        INTERAC = T.let(:interac, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        MASAV = T.let(:masav, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        MX_CCEN = T.let(:mx_ccen, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        NEFT = T.let(:neft, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        NICS = T.let(:nics, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        NZ_BECS = T.let(:nz_becs, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        PL_ELIXIR = T.let(:pl_elixir, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        PROVXCHANGE = T.let(:provxchange, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        RO_SENT = T.let(:ro_sent, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        RTP = T.let(:rtp, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        SE_BANKGIROT = T.let(:se_bankgirot, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        SEN = T.let(:sen, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        SEPA = T.let(:sepa, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        SG_GIRO = T.let(:sg_giro, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        SIC = T.let(:sic, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        SIGNET = T.let(:signet, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        SKNBI = T.let(:sknbi, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        WIRE = T.let(:wire, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        ZENGIN = T.let(:zengin, ModernTreasury::Models::Transaction::Type::TaggedSymbol)
        OTHER = T.let(:other, ModernTreasury::Models::Transaction::Type::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::Transaction::Type::TaggedSymbol]) }
        def self.values
        end
      end

      # The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
      #   `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
      #   `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
      #   `swift`, `us_bank`, or others.
      module VendorCodeType
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::Transaction::VendorCodeType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::Transaction::VendorCodeType::TaggedSymbol) }

        BAI2 = T.let(:bai2, ModernTreasury::Models::Transaction::VendorCodeType::TaggedSymbol)
        BANKING_CIRCLE =
          T.let(:banking_circle, ModernTreasury::Models::Transaction::VendorCodeType::TaggedSymbol)
        BANKPROV = T.let(:bankprov, ModernTreasury::Models::Transaction::VendorCodeType::TaggedSymbol)
        BNK_DEV = T.let(:bnk_dev, ModernTreasury::Models::Transaction::VendorCodeType::TaggedSymbol)
        CLEARTOUCH = T.let(:cleartouch, ModernTreasury::Models::Transaction::VendorCodeType::TaggedSymbol)
        COLUMN = T.let(:column, ModernTreasury::Models::Transaction::VendorCodeType::TaggedSymbol)
        CROSS_RIVER = T.let(:cross_river, ModernTreasury::Models::Transaction::VendorCodeType::TaggedSymbol)
        CURRENCYCLOUD = T.let(:currencycloud, ModernTreasury::Models::Transaction::VendorCodeType::TaggedSymbol)
        DC_BANK = T.let(:dc_bank, ModernTreasury::Models::Transaction::VendorCodeType::TaggedSymbol)
        DWOLLA = T.let(:dwolla, ModernTreasury::Models::Transaction::VendorCodeType::TaggedSymbol)
        EVOLVE = T.let(:evolve, ModernTreasury::Models::Transaction::VendorCodeType::TaggedSymbol)
        GOLDMAN_SACHS = T.let(:goldman_sachs, ModernTreasury::Models::Transaction::VendorCodeType::TaggedSymbol)
        ISO20022 = T.let(:iso20022, ModernTreasury::Models::Transaction::VendorCodeType::TaggedSymbol)
        JPMC = T.let(:jpmc, ModernTreasury::Models::Transaction::VendorCodeType::TaggedSymbol)
        MX = T.let(:mx, ModernTreasury::Models::Transaction::VendorCodeType::TaggedSymbol)
        PLAID = T.let(:plaid, ModernTreasury::Models::Transaction::VendorCodeType::TaggedSymbol)
        PNC = T.let(:pnc, ModernTreasury::Models::Transaction::VendorCodeType::TaggedSymbol)
        RSPEC_VENDOR = T.let(:rspec_vendor, ModernTreasury::Models::Transaction::VendorCodeType::TaggedSymbol)
        SIGNET = T.let(:signet, ModernTreasury::Models::Transaction::VendorCodeType::TaggedSymbol)
        SILVERGATE = T.let(:silvergate, ModernTreasury::Models::Transaction::VendorCodeType::TaggedSymbol)
        SWIFT = T.let(:swift, ModernTreasury::Models::Transaction::VendorCodeType::TaggedSymbol)
        US_BANK = T.let(:us_bank, ModernTreasury::Models::Transaction::VendorCodeType::TaggedSymbol)
        USER = T.let(:user, ModernTreasury::Models::Transaction::VendorCodeType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::Transaction::VendorCodeType::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
