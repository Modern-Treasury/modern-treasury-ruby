# typed: strong

module ModernTreasury
  module Models
    class TransactionCreate < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::TransactionCreate,
            ModernTreasury::Internal::AnyHash
          )
        end

      # Value in specified currency's smallest unit. e.g. $10 would be represented
      # as 1000.
      sig { returns(Integer) }
      attr_accessor :amount

      # The date on which the transaction occurred.
      sig { returns(T.nilable(Date)) }
      attr_accessor :as_of_date

      # Either `credit` or `debit`.
      sig { returns(String) }
      attr_accessor :direction

      # The ID of the relevant Internal Account.
      sig { returns(String) }
      attr_accessor :internal_account_id

      # When applicable, the bank-given code that determines the transaction's category.
      # For most banks this is the BAI2/BTRS transaction code.
      sig { returns(T.nilable(String)) }
      attr_accessor :vendor_code

      # The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
      # `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
      # `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
      # `swift`, `us_bank`, or others.
      sig { returns(T.nilable(String)) }
      attr_accessor :vendor_code_type

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # This field will be `true` if the transaction has posted to the account.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :posted

      sig { params(posted: T::Boolean).void }
      attr_writer :posted

      # The type of the transaction. Examples could be
      # `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
      sig do
        returns(T.nilable(ModernTreasury::TransactionCreate::Type::OrSymbol))
      end
      attr_accessor :type

      # An identifier given to this transaction by the bank, often `null`.
      sig { returns(T.nilable(String)) }
      attr_accessor :vendor_customer_id

      # The transaction detail text that often appears in on your bank statement and in
      # your banking portal.
      sig { returns(T.nilable(String)) }
      attr_accessor :vendor_description

      sig do
        params(
          amount: Integer,
          as_of_date: T.nilable(Date),
          direction: String,
          internal_account_id: String,
          vendor_code: T.nilable(String),
          vendor_code_type: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          posted: T::Boolean,
          type: T.nilable(ModernTreasury::TransactionCreate::Type::OrSymbol),
          vendor_customer_id: T.nilable(String),
          vendor_description: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Value in specified currency's smallest unit. e.g. $10 would be represented
        # as 1000.
        amount:,
        # The date on which the transaction occurred.
        as_of_date:,
        # Either `credit` or `debit`.
        direction:,
        # The ID of the relevant Internal Account.
        internal_account_id:,
        # When applicable, the bank-given code that determines the transaction's category.
        # For most banks this is the BAI2/BTRS transaction code.
        vendor_code:,
        # The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
        # `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
        # `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
        # `swift`, `us_bank`, or others.
        vendor_code_type:,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        # This field will be `true` if the transaction has posted to the account.
        posted: nil,
        # The type of the transaction. Examples could be
        # `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
        type: nil,
        # An identifier given to this transaction by the bank, often `null`.
        vendor_customer_id: nil,
        # The transaction detail text that often appears in on your bank statement and in
        # your banking portal.
        vendor_description: nil
      )
      end

      sig do
        override.returns(
          {
            amount: Integer,
            as_of_date: T.nilable(Date),
            direction: String,
            internal_account_id: String,
            vendor_code: T.nilable(String),
            vendor_code_type: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            posted: T::Boolean,
            type: T.nilable(ModernTreasury::TransactionCreate::Type::OrSymbol),
            vendor_customer_id: T.nilable(String),
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
          T.type_alias do
            T.all(Symbol, ModernTreasury::TransactionCreate::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH = T.let(:ach, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        AU_BECS =
          T.let(:au_becs, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        BACS =
          T.let(:bacs, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        BASE =
          T.let(:base, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        BOOK =
          T.let(:book, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        CARD =
          T.let(:card, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        CHATS =
          T.let(:chats, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        CHECK =
          T.let(:check, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        CROSS_BORDER =
          T.let(
            :cross_border,
            ModernTreasury::TransactionCreate::Type::TaggedSymbol
          )
        DK_NETS =
          T.let(:dk_nets, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        EFT = T.let(:eft, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        ETHEREUM =
          T.let(
            :ethereum,
            ModernTreasury::TransactionCreate::Type::TaggedSymbol
          )
        GB_FPS =
          T.let(:gb_fps, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        HU_ICS =
          T.let(:hu_ics, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        INTERAC =
          T.let(:interac, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        MASAV =
          T.let(:masav, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        MX_CCEN =
          T.let(:mx_ccen, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        NEFT =
          T.let(:neft, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        NICS =
          T.let(:nics, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        NZ_BECS =
          T.let(:nz_becs, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        PL_ELIXIR =
          T.let(
            :pl_elixir,
            ModernTreasury::TransactionCreate::Type::TaggedSymbol
          )
        POLYGON =
          T.let(:polygon, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        PROVXCHANGE =
          T.let(
            :provxchange,
            ModernTreasury::TransactionCreate::Type::TaggedSymbol
          )
        RO_SENT =
          T.let(:ro_sent, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        RTP = T.let(:rtp, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        SE_BANKGIROT =
          T.let(
            :se_bankgirot,
            ModernTreasury::TransactionCreate::Type::TaggedSymbol
          )
        SEN = T.let(:sen, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        SEPA =
          T.let(:sepa, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        SG_GIRO =
          T.let(:sg_giro, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        SIC = T.let(:sic, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        SIGNET =
          T.let(:signet, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        SKNBI =
          T.let(:sknbi, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        SOLANA =
          T.let(:solana, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        WIRE =
          T.let(:wire, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        ZENGIN =
          T.let(:zengin, ModernTreasury::TransactionCreate::Type::TaggedSymbol)
        OTHER =
          T.let(:other, ModernTreasury::TransactionCreate::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[ModernTreasury::TransactionCreate::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
