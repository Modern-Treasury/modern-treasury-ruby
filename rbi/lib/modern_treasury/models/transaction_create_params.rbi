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
      sig { returns(T.nilable(Symbol)) }
      def type
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
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
          type: T.nilable(Symbol),
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
              type: T.nilable(Symbol),
              vendor_description: T.nilable(String),
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
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
    end
  end
end
