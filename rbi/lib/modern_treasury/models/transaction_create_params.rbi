# typed: strong

module ModernTreasury
  module Models
    class TransactionCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # Value in specified currency's smallest unit. e.g. $10 would be represented
      #   as 1000.
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
      #   For most banks this is the BAI2/BTRS transaction code.
      sig { returns(T.nilable(String)) }
      attr_accessor :vendor_code

      # The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
      #   `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
      #   `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
      #   `swift`, `us_bank`, or others.
      sig { returns(T.nilable(String)) }
      attr_accessor :vendor_code_type

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
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
      #   `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
      sig { returns(T.nilable(ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol)) }
      attr_accessor :type

      # The transaction detail text that often appears in on your bank statement and in
      #   your banking portal.
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
          type: T.nilable(ModernTreasury::Models::TransactionCreateParams::Type::OrSymbol),
          vendor_description: T.nilable(String),
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
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
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol) }

        ACH = T.let(:ach, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        AU_BECS = T.let(:au_becs, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        BACS = T.let(:bacs, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        BOOK = T.let(:book, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        CARD = T.let(:card, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        CHATS = T.let(:chats, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        CHECK = T.let(:check, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        CROSS_BORDER = T.let(:cross_border, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        DK_NETS = T.let(:dk_nets, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        EFT = T.let(:eft, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        HU_ICS = T.let(:hu_ics, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        INTERAC = T.let(:interac, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        MASAV = T.let(:masav, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        MX_CCEN = T.let(:mx_ccen, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        NEFT = T.let(:neft, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        NICS = T.let(:nics, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        NZ_BECS = T.let(:nz_becs, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        PL_ELIXIR = T.let(:pl_elixir, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        PROVXCHANGE = T.let(:provxchange, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        RO_SENT = T.let(:ro_sent, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        RTP = T.let(:rtp, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        SE_BANKGIROT = T.let(:se_bankgirot, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        SEN = T.let(:sen, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        SEPA = T.let(:sepa, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        SG_GIRO = T.let(:sg_giro, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        SIC = T.let(:sic, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        SIGNET = T.let(:signet, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        SKNBI = T.let(:sknbi, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        WIRE = T.let(:wire, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        ZENGIN = T.let(:zengin, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)
        OTHER = T.let(:other, ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::TransactionCreateParams::Type::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
