# typed: strong

module ModernTreasury
  module Models
    class TransactionCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

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

      # Either `credit` or `debit`.
      sig { returns(String) }
      def direction
      end

      sig { params(_: String).returns(String) }
      def direction=(_)
      end

      # The ID of the relevant Internal Account.
      sig { returns(String) }
      def internal_account_id
      end

      sig { params(_: String).returns(String) }
      def internal_account_id=(_)
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
      sig { returns(T.nilable(String)) }
      def vendor_code_type
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def vendor_code_type=(_)
      end

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      # This field will be `true` if the transaction has posted to the account.
      sig { returns(T.nilable(T::Boolean)) }
      def posted
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def posted=(_)
      end

      # The type of the transaction. Examples could be
      #   `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
      sig { returns(T.nilable(ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)) }
      def type
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol))
          .returns(T.nilable(ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol))
      end
      def type=(_)
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
          amount: Integer,
          as_of_date: T.nilable(Date),
          direction: String,
          internal_account_id: String,
          vendor_code: T.nilable(String),
          vendor_code_type: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          posted: T::Boolean,
          type: T.nilable(ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol),
          vendor_description: T.nilable(String),
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        amount:,
        as_of_date:,
        direction:,
        internal_account_id:,
        vendor_code:,
        vendor_code_type:,
        metadata: nil,
        posted: nil,
        type: nil,
        vendor_description: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              amount: Integer,
              as_of_date: T.nilable(Date),
              direction: String,
              internal_account_id: String,
              vendor_code: T.nilable(String),
              vendor_code_type: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              posted: T::Boolean,
              type: T.nilable(ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol),
              vendor_description: T.nilable(String),
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      # The type of the transaction. Examples could be
      #   `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
      module Type
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::TransactionCreateParams::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol) }

        ACH = T.let(:ach, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        AU_BECS = T.let(:au_becs, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        BACS = T.let(:bacs, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        BOOK = T.let(:book, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        CARD = T.let(:card, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        CHATS = T.let(:chats, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        CHECK = T.let(:check, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        CROSS_BORDER = T.let(:cross_border, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        DK_NETS = T.let(:dk_nets, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        EFT = T.let(:eft, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        HU_ICS = T.let(:hu_ics, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        INTERAC = T.let(:interac, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        MASAV = T.let(:masav, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        MX_CCEN = T.let(:mx_ccen, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        NEFT = T.let(:neft, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        NICS = T.let(:nics, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        NZ_BECS = T.let(:nz_becs, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        PL_ELIXIR = T.let(:pl_elixir, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        PROVXCHANGE = T.let(:provxchange, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        RO_SENT = T.let(:ro_sent, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        RTP = T.let(:rtp, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        SE_BANKGIROT = T.let(:se_bankgirot, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        SEN = T.let(:sen, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        SEPA = T.let(:sepa, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        SG_GIRO = T.let(:sg_giro, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        SIC = T.let(:sic, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        SIGNET = T.let(:signet, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        SKNBI = T.let(:sknbi, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        WIRE = T.let(:wire, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        ZENGIN = T.let(:zengin, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
        OTHER = T.let(:other, ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)
      end
    end
  end
end
