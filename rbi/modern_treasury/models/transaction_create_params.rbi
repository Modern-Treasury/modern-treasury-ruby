# typed: strong

module ModernTreasury
  module Models
    class TransactionCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::TransactionCreateParams,
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
        returns(
          T.nilable(ModernTreasury::TransactionCreateParams::Type::OrSymbol)
        )
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
          type:
            T.nilable(ModernTreasury::TransactionCreateParams::Type::OrSymbol),
          vendor_customer_id: T.nilable(String),
          vendor_description: T.nilable(String),
          request_options: ModernTreasury::RequestOptions::OrHash
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
        vendor_description: nil,
        request_options: {}
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
            type:
              T.nilable(
                ModernTreasury::TransactionCreateParams::Type::OrSymbol
              ),
            vendor_customer_id: T.nilable(String),
            vendor_description: T.nilable(String),
            request_options: ModernTreasury::RequestOptions
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
            T.all(Symbol, ModernTreasury::TransactionCreateParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH =
          T.let(
            :ach,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        AU_BECS =
          T.let(
            :au_becs,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        BACS =
          T.let(
            :bacs,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        BASE =
          T.let(
            :base,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        BOOK =
          T.let(
            :book,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        CARD =
          T.let(
            :card,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        CHATS =
          T.let(
            :chats,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        CHECK =
          T.let(
            :check,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        CROSS_BORDER =
          T.let(
            :cross_border,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        DK_NETS =
          T.let(
            :dk_nets,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        EFT =
          T.let(
            :eft,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        ETHEREUM =
          T.let(
            :ethereum,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        HU_ICS =
          T.let(
            :hu_ics,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        INTERAC =
          T.let(
            :interac,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        MASAV =
          T.let(
            :masav,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        MX_CCEN =
          T.let(
            :mx_ccen,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        NEFT =
          T.let(
            :neft,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        NICS =
          T.let(
            :nics,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        NZ_BECS =
          T.let(
            :nz_becs,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        PL_ELIXIR =
          T.let(
            :pl_elixir,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        POLYGON =
          T.let(
            :polygon,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        PROVXCHANGE =
          T.let(
            :provxchange,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        RO_SENT =
          T.let(
            :ro_sent,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        RTP =
          T.let(
            :rtp,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        SE_BANKGIROT =
          T.let(
            :se_bankgirot,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        SEN =
          T.let(
            :sen,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        SEPA =
          T.let(
            :sepa,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        SG_GIRO =
          T.let(
            :sg_giro,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        SIC =
          T.let(
            :sic,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        SIGNET =
          T.let(
            :signet,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        SKNBI =
          T.let(
            :sknbi,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        SOLANA =
          T.let(
            :solana,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        WIRE =
          T.let(
            :wire,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        ZENGIN =
          T.let(
            :zengin,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::TransactionCreateParams::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
