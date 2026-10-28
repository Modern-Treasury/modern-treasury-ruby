# typed: strong

module ModernTreasury
  module Models
    class TransactionCreateRequest < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::TransactionCreateRequest,
            ModernTreasury::Internal::AnyHash
          )
        end

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
      # `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dwolla`, `evolve`,
      # `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `silvergate`, `swift`, `us_bank`, or
      # others.
      sig { returns(T.nilable(String)) }
      attr_accessor :vendor_code_type

      # Value in specified currency's smallest unit. e.g. $10 would be represented
      # as 1000.
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount

      sig { params(amount: Integer).void }
      attr_writer :amount

      # The transaction amount as a string, preserving full precision for values that
      # may exceed safe integer limits in some languages.
      sig { returns(T.nilable(String)) }
      attr_reader :amount_string

      sig { params(amount_string: String).void }
      attr_writer :amount_string

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
      # `card, `ach`, `wire`, `check`, `rtp`, or `book`.
      sig do
        returns(
          T.nilable(ModernTreasury::TransactionCreateRequest::Type::OrSymbol)
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

      # At least one of "amount" or "amount_string" is required.
      sig do
        params(
          as_of_date: T.nilable(Date),
          direction: String,
          internal_account_id: String,
          vendor_code: T.nilable(String),
          vendor_code_type: T.nilable(String),
          amount: Integer,
          amount_string: String,
          metadata: T::Hash[Symbol, String],
          posted: T::Boolean,
          type:
            T.nilable(ModernTreasury::TransactionCreateRequest::Type::OrSymbol),
          vendor_customer_id: T.nilable(String),
          vendor_description: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
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
        # `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dwolla`, `evolve`,
        # `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `silvergate`, `swift`, `us_bank`, or
        # others.
        vendor_code_type:,
        # Value in specified currency's smallest unit. e.g. $10 would be represented
        # as 1000.
        amount: nil,
        # The transaction amount as a string, preserving full precision for values that
        # may exceed safe integer limits in some languages.
        amount_string: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        # This field will be `true` if the transaction has posted to the account.
        posted: nil,
        # The type of the transaction. Examples could be
        # `card, `ach`, `wire`, `check`, `rtp`, or `book`.
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
            as_of_date: T.nilable(Date),
            direction: String,
            internal_account_id: String,
            vendor_code: T.nilable(String),
            vendor_code_type: T.nilable(String),
            amount: Integer,
            amount_string: String,
            metadata: T::Hash[Symbol, String],
            posted: T::Boolean,
            type:
              T.nilable(
                ModernTreasury::TransactionCreateRequest::Type::OrSymbol
              ),
            vendor_customer_id: T.nilable(String),
            vendor_description: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # The type of the transaction. Examples could be
      # `card, `ach`, `wire`, `check`, `rtp`, or `book`.
      module Type
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::TransactionCreateRequest::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH =
          T.let(
            :ach,
            ModernTreasury::TransactionCreateRequest::Type::TaggedSymbol
          )
        AU_BECS =
          T.let(
            :au_becs,
            ModernTreasury::TransactionCreateRequest::Type::TaggedSymbol
          )
        BACS =
          T.let(
            :bacs,
            ModernTreasury::TransactionCreateRequest::Type::TaggedSymbol
          )
        BOOK =
          T.let(
            :book,
            ModernTreasury::TransactionCreateRequest::Type::TaggedSymbol
          )
        CARD =
          T.let(
            :card,
            ModernTreasury::TransactionCreateRequest::Type::TaggedSymbol
          )
        CHATS =
          T.let(
            :chats,
            ModernTreasury::TransactionCreateRequest::Type::TaggedSymbol
          )
        CHECK =
          T.let(
            :check,
            ModernTreasury::TransactionCreateRequest::Type::TaggedSymbol
          )
        CROSS_BORDER =
          T.let(
            :cross_border,
            ModernTreasury::TransactionCreateRequest::Type::TaggedSymbol
          )
        DK_NETS =
          T.let(
            :dk_nets,
            ModernTreasury::TransactionCreateRequest::Type::TaggedSymbol
          )
        EFT =
          T.let(
            :eft,
            ModernTreasury::TransactionCreateRequest::Type::TaggedSymbol
          )
        GB_FPS =
          T.let(
            :gb_fps,
            ModernTreasury::TransactionCreateRequest::Type::TaggedSymbol
          )
        MASAV =
          T.let(
            :masav,
            ModernTreasury::TransactionCreateRequest::Type::TaggedSymbol
          )
        MX_CCEN =
          T.let(
            :mx_ccen,
            ModernTreasury::TransactionCreateRequest::Type::TaggedSymbol
          )
        NEFT =
          T.let(
            :neft,
            ModernTreasury::TransactionCreateRequest::Type::TaggedSymbol
          )
        NICS =
          T.let(
            :nics,
            ModernTreasury::TransactionCreateRequest::Type::TaggedSymbol
          )
        NZ_BECS =
          T.let(
            :nz_becs,
            ModernTreasury::TransactionCreateRequest::Type::TaggedSymbol
          )
        PL_ELIXIR =
          T.let(
            :pl_elixir,
            ModernTreasury::TransactionCreateRequest::Type::TaggedSymbol
          )
        RTP =
          T.let(
            :rtp,
            ModernTreasury::TransactionCreateRequest::Type::TaggedSymbol
          )
        SE_BANKGIROT =
          T.let(
            :se_bankgirot,
            ModernTreasury::TransactionCreateRequest::Type::TaggedSymbol
          )
        SEPA =
          T.let(
            :sepa,
            ModernTreasury::TransactionCreateRequest::Type::TaggedSymbol
          )
        SG_GIRO =
          T.let(
            :sg_giro,
            ModernTreasury::TransactionCreateRequest::Type::TaggedSymbol
          )
        SIC =
          T.let(
            :sic,
            ModernTreasury::TransactionCreateRequest::Type::TaggedSymbol
          )
        STABLECOIN =
          T.let(
            :stablecoin,
            ModernTreasury::TransactionCreateRequest::Type::TaggedSymbol
          )
        WIRE =
          T.let(
            :wire,
            ModernTreasury::TransactionCreateRequest::Type::TaggedSymbol
          )
        ZENGIN =
          T.let(
            :zengin,
            ModernTreasury::TransactionCreateRequest::Type::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            ModernTreasury::TransactionCreateRequest::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::TransactionCreateRequest::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
