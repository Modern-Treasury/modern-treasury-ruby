# typed: strong

module ModernTreasury
  module Models
    class Transaction < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(ModernTreasury::Transaction, ModernTreasury::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # Value in specified currency's smallest unit. e.g. $10 would be represented
      # as 1000.
      sig { returns(Integer) }
      attr_accessor :amount

      # The date on which the transaction occurred.
      sig { returns(T.nilable(Date)) }
      attr_accessor :as_of_date

      # The time on which the transaction occurred. Depending on the granularity of the
      # timestamp information received from the bank, it may be `null`.
      sig { returns(T.nilable(Time)) }
      attr_accessor :as_of_time

      # The timezone in which the `as_of_time` is represented. Can be `null` if the bank
      # does not provide timezone info.
      sig { returns(T.nilable(String)) }
      attr_accessor :as_of_timezone

      sig { returns(Time) }
      attr_accessor :created_at

      # Currency that this transaction is denominated in.
      sig { returns(ModernTreasury::Currency::TaggedSymbol) }
      attr_accessor :currency

      # An object containing key-value pairs, each with a custom identifier as the key
      # and a string value.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :custom_identifiers

      # Either `credit` or `debit`.
      sig { returns(String) }
      attr_accessor :direction

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      # Associated serialized foreign exchange rate information.
      sig { returns(T.nilable(ModernTreasury::ForeignExchangeRate)) }
      attr_reader :foreign_exchange_rate

      sig do
        params(
          foreign_exchange_rate:
            T.nilable(ModernTreasury::ForeignExchangeRate::OrHash)
        ).void
      end
      attr_writer :foreign_exchange_rate

      # The ID of the relevant Internal Account.
      sig { returns(String) }
      attr_accessor :internal_account_id

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :object

      # This field will be `true` if the transaction has posted to the account.
      sig { returns(T::Boolean) }
      attr_accessor :posted

      # This field will be `true` if a transaction is reconciled by the Modern Treasury
      # system. This means that it has transaction line items that sum up to the
      # transaction's amount.
      sig { returns(T::Boolean) }
      attr_accessor :reconciled

      # The type of the transaction. Examples could be
      # `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
      sig { returns(ModernTreasury::Transaction::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(Time) }
      attr_accessor :updated_at

      # When applicable, the bank-given code that determines the transaction's category.
      # For most banks this is the BAI2/BTRS transaction code.
      sig { returns(T.nilable(String)) }
      attr_accessor :vendor_code

      # The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
      # `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
      # `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
      # `swift`, `us_bank`, or others.
      sig do
        returns(
          T.nilable(ModernTreasury::Transaction::VendorCodeType::TaggedSymbol)
        )
      end
      attr_accessor :vendor_code_type

      # An identifier given to this transaction by the bank, often `null`.
      sig { returns(T.nilable(String)) }
      attr_accessor :vendor_customer_id

      # An identifier given to this transaction by the bank.
      sig { returns(T.nilable(String)) }
      attr_accessor :vendor_id

      # This field contains additional information that the bank provided about the
      # transaction. This is structured data. Some of the data in here might overlap
      # with what is in the `vendor_description`. For example, the OBI could be a part
      # of the vendor description, and it would also be included in here. The attributes
      # that are passed through the details field will vary based on your banking
      # partner. Currently, the following keys may be in the details object:
      # `originator_name`, `originator_to_beneficiary_information`.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :details

      sig { params(details: T::Hash[Symbol, String]).void }
      attr_writer :details

      # The transaction detail text that often appears in on your bank statement and in
      # your banking portal.
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
          currency: ModernTreasury::Currency::OrSymbol,
          custom_identifiers: T::Hash[Symbol, String],
          direction: String,
          discarded_at: T.nilable(Time),
          foreign_exchange_rate:
            T.nilable(ModernTreasury::ForeignExchangeRate::OrHash),
          internal_account_id: String,
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          posted: T::Boolean,
          reconciled: T::Boolean,
          type: ModernTreasury::Transaction::Type::OrSymbol,
          updated_at: Time,
          vendor_code: T.nilable(String),
          vendor_code_type:
            T.nilable(ModernTreasury::Transaction::VendorCodeType::OrSymbol),
          vendor_customer_id: T.nilable(String),
          vendor_id: T.nilable(String),
          details: T::Hash[Symbol, String],
          vendor_description: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Value in specified currency's smallest unit. e.g. $10 would be represented
        # as 1000.
        amount:,
        # The date on which the transaction occurred.
        as_of_date:,
        # The time on which the transaction occurred. Depending on the granularity of the
        # timestamp information received from the bank, it may be `null`.
        as_of_time:,
        # The timezone in which the `as_of_time` is represented. Can be `null` if the bank
        # does not provide timezone info.
        as_of_timezone:,
        created_at:,
        # Currency that this transaction is denominated in.
        currency:,
        # An object containing key-value pairs, each with a custom identifier as the key
        # and a string value.
        custom_identifiers:,
        # Either `credit` or `debit`.
        direction:,
        discarded_at:,
        # Associated serialized foreign exchange rate information.
        foreign_exchange_rate:,
        # The ID of the relevant Internal Account.
        internal_account_id:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata:,
        object:,
        # This field will be `true` if the transaction has posted to the account.
        posted:,
        # This field will be `true` if a transaction is reconciled by the Modern Treasury
        # system. This means that it has transaction line items that sum up to the
        # transaction's amount.
        reconciled:,
        # The type of the transaction. Examples could be
        # `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
        type:,
        updated_at:,
        # When applicable, the bank-given code that determines the transaction's category.
        # For most banks this is the BAI2/BTRS transaction code.
        vendor_code:,
        # The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
        # `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
        # `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
        # `swift`, `us_bank`, or others.
        vendor_code_type:,
        # An identifier given to this transaction by the bank, often `null`.
        vendor_customer_id:,
        # An identifier given to this transaction by the bank.
        vendor_id:,
        # This field contains additional information that the bank provided about the
        # transaction. This is structured data. Some of the data in here might overlap
        # with what is in the `vendor_description`. For example, the OBI could be a part
        # of the vendor description, and it would also be included in here. The attributes
        # that are passed through the details field will vary based on your banking
        # partner. Currently, the following keys may be in the details object:
        # `originator_name`, `originator_to_beneficiary_information`.
        details: nil,
        # The transaction detail text that often appears in on your bank statement and in
        # your banking portal.
        vendor_description: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount: Integer,
            as_of_date: T.nilable(Date),
            as_of_time: T.nilable(Time),
            as_of_timezone: T.nilable(String),
            created_at: Time,
            currency: ModernTreasury::Currency::TaggedSymbol,
            custom_identifiers: T::Hash[Symbol, String],
            direction: String,
            discarded_at: T.nilable(Time),
            foreign_exchange_rate:
              T.nilable(ModernTreasury::ForeignExchangeRate),
            internal_account_id: String,
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            object: String,
            posted: T::Boolean,
            reconciled: T::Boolean,
            type: ModernTreasury::Transaction::Type::TaggedSymbol,
            updated_at: Time,
            vendor_code: T.nilable(String),
            vendor_code_type:
              T.nilable(
                ModernTreasury::Transaction::VendorCodeType::TaggedSymbol
              ),
            vendor_customer_id: T.nilable(String),
            vendor_id: T.nilable(String),
            details: T::Hash[Symbol, String],
            vendor_description: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # The type of the transaction. Examples could be
      # `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
      module Type
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Transaction::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH = T.let(:ach, ModernTreasury::Transaction::Type::TaggedSymbol)
        AU_BECS =
          T.let(:au_becs, ModernTreasury::Transaction::Type::TaggedSymbol)
        BACS = T.let(:bacs, ModernTreasury::Transaction::Type::TaggedSymbol)
        BASE = T.let(:base, ModernTreasury::Transaction::Type::TaggedSymbol)
        BOOK = T.let(:book, ModernTreasury::Transaction::Type::TaggedSymbol)
        CARD = T.let(:card, ModernTreasury::Transaction::Type::TaggedSymbol)
        CHATS = T.let(:chats, ModernTreasury::Transaction::Type::TaggedSymbol)
        CHECK = T.let(:check, ModernTreasury::Transaction::Type::TaggedSymbol)
        CROSS_BORDER =
          T.let(:cross_border, ModernTreasury::Transaction::Type::TaggedSymbol)
        DK_NETS =
          T.let(:dk_nets, ModernTreasury::Transaction::Type::TaggedSymbol)
        EFT = T.let(:eft, ModernTreasury::Transaction::Type::TaggedSymbol)
        ETHEREUM =
          T.let(:ethereum, ModernTreasury::Transaction::Type::TaggedSymbol)
        GB_FPS = T.let(:gb_fps, ModernTreasury::Transaction::Type::TaggedSymbol)
        HU_ICS = T.let(:hu_ics, ModernTreasury::Transaction::Type::TaggedSymbol)
        INTERAC =
          T.let(:interac, ModernTreasury::Transaction::Type::TaggedSymbol)
        MASAV = T.let(:masav, ModernTreasury::Transaction::Type::TaggedSymbol)
        MX_CCEN =
          T.let(:mx_ccen, ModernTreasury::Transaction::Type::TaggedSymbol)
        NEFT = T.let(:neft, ModernTreasury::Transaction::Type::TaggedSymbol)
        NICS = T.let(:nics, ModernTreasury::Transaction::Type::TaggedSymbol)
        NZ_BECS =
          T.let(:nz_becs, ModernTreasury::Transaction::Type::TaggedSymbol)
        PL_ELIXIR =
          T.let(:pl_elixir, ModernTreasury::Transaction::Type::TaggedSymbol)
        POLYGON =
          T.let(:polygon, ModernTreasury::Transaction::Type::TaggedSymbol)
        PROVXCHANGE =
          T.let(:provxchange, ModernTreasury::Transaction::Type::TaggedSymbol)
        RO_SENT =
          T.let(:ro_sent, ModernTreasury::Transaction::Type::TaggedSymbol)
        RTP = T.let(:rtp, ModernTreasury::Transaction::Type::TaggedSymbol)
        SE_BANKGIROT =
          T.let(:se_bankgirot, ModernTreasury::Transaction::Type::TaggedSymbol)
        SEN = T.let(:sen, ModernTreasury::Transaction::Type::TaggedSymbol)
        SEPA = T.let(:sepa, ModernTreasury::Transaction::Type::TaggedSymbol)
        SG_GIRO =
          T.let(:sg_giro, ModernTreasury::Transaction::Type::TaggedSymbol)
        SIC = T.let(:sic, ModernTreasury::Transaction::Type::TaggedSymbol)
        SIGNET = T.let(:signet, ModernTreasury::Transaction::Type::TaggedSymbol)
        SKNBI = T.let(:sknbi, ModernTreasury::Transaction::Type::TaggedSymbol)
        SOLANA = T.let(:solana, ModernTreasury::Transaction::Type::TaggedSymbol)
        WIRE = T.let(:wire, ModernTreasury::Transaction::Type::TaggedSymbol)
        ZENGIN = T.let(:zengin, ModernTreasury::Transaction::Type::TaggedSymbol)
        OTHER = T.let(:other, ModernTreasury::Transaction::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[ModernTreasury::Transaction::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
      # `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
      # `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
      # `swift`, `us_bank`, or others.
      module VendorCodeType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::Transaction::VendorCodeType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BAI2 =
          T.let(
            :bai2,
            ModernTreasury::Transaction::VendorCodeType::TaggedSymbol
          )
        BANKING_CIRCLE =
          T.let(
            :banking_circle,
            ModernTreasury::Transaction::VendorCodeType::TaggedSymbol
          )
        BANKPROV =
          T.let(
            :bankprov,
            ModernTreasury::Transaction::VendorCodeType::TaggedSymbol
          )
        BNK_DEV =
          T.let(
            :bnk_dev,
            ModernTreasury::Transaction::VendorCodeType::TaggedSymbol
          )
        BRALE =
          T.let(
            :brale,
            ModernTreasury::Transaction::VendorCodeType::TaggedSymbol
          )
        BRIDGE =
          T.let(
            :bridge,
            ModernTreasury::Transaction::VendorCodeType::TaggedSymbol
          )
        CLEARTOUCH =
          T.let(
            :cleartouch,
            ModernTreasury::Transaction::VendorCodeType::TaggedSymbol
          )
        COLUMN =
          T.let(
            :column,
            ModernTreasury::Transaction::VendorCodeType::TaggedSymbol
          )
        CROSS_RIVER =
          T.let(
            :cross_river,
            ModernTreasury::Transaction::VendorCodeType::TaggedSymbol
          )
        CURRENCYCLOUD =
          T.let(
            :currencycloud,
            ModernTreasury::Transaction::VendorCodeType::TaggedSymbol
          )
        DC_BANK =
          T.let(
            :dc_bank,
            ModernTreasury::Transaction::VendorCodeType::TaggedSymbol
          )
        DWOLLA =
          T.let(
            :dwolla,
            ModernTreasury::Transaction::VendorCodeType::TaggedSymbol
          )
        EVOLVE =
          T.let(
            :evolve,
            ModernTreasury::Transaction::VendorCodeType::TaggedSymbol
          )
        FAKE_VENDOR =
          T.let(
            :fake_vendor,
            ModernTreasury::Transaction::VendorCodeType::TaggedSymbol
          )
        GOLDMAN_SACHS =
          T.let(
            :goldman_sachs,
            ModernTreasury::Transaction::VendorCodeType::TaggedSymbol
          )
        HIFI =
          T.let(
            :hifi,
            ModernTreasury::Transaction::VendorCodeType::TaggedSymbol
          )
        ISO20022 =
          T.let(
            :iso20022,
            ModernTreasury::Transaction::VendorCodeType::TaggedSymbol
          )
        JPMC =
          T.let(
            :jpmc,
            ModernTreasury::Transaction::VendorCodeType::TaggedSymbol
          )
        MT_FOF =
          T.let(
            :mt_fof,
            ModernTreasury::Transaction::VendorCodeType::TaggedSymbol
          )
        MX =
          T.let(:mx, ModernTreasury::Transaction::VendorCodeType::TaggedSymbol)
        PAYPAL =
          T.let(
            :paypal,
            ModernTreasury::Transaction::VendorCodeType::TaggedSymbol
          )
        PLAID =
          T.let(
            :plaid,
            ModernTreasury::Transaction::VendorCodeType::TaggedSymbol
          )
        PNC =
          T.let(:pnc, ModernTreasury::Transaction::VendorCodeType::TaggedSymbol)
        SIGNET =
          T.let(
            :signet,
            ModernTreasury::Transaction::VendorCodeType::TaggedSymbol
          )
        SILVERGATE =
          T.let(
            :silvergate,
            ModernTreasury::Transaction::VendorCodeType::TaggedSymbol
          )
        SWIFT =
          T.let(
            :swift,
            ModernTreasury::Transaction::VendorCodeType::TaggedSymbol
          )
        US_BANK =
          T.let(
            :us_bank,
            ModernTreasury::Transaction::VendorCodeType::TaggedSymbol
          )
        USER =
          T.let(
            :user,
            ModernTreasury::Transaction::VendorCodeType::TaggedSymbol
          )
        WESTERN_ALLIANCE =
          T.let(
            :western_alliance,
            ModernTreasury::Transaction::VendorCodeType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::Transaction::VendorCodeType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
