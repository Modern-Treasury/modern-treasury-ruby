# typed: strong

module ModernTreasury
  module Models
    class PaymentOrderListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      def after_cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def after_cursor=(_)
      end

      sig { returns(T.nilable(String)) }
      def counterparty_id
      end

      sig { params(_: String).returns(String) }
      def counterparty_id=(_)
      end

      # An inclusive upper bound for searching created_at
      sig { returns(T.nilable(Date)) }
      def created_at_end
      end

      sig { params(_: Date).returns(Date) }
      def created_at_end=(_)
      end

      # An inclusive lower bound for searching created_at
      sig { returns(T.nilable(Date)) }
      def created_at_start
      end

      sig { params(_: Date).returns(Date) }
      def created_at_start=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::TransactionDirection::OrSymbol)) }
      def direction
      end

      sig do
        params(_: ModernTreasury::Models::TransactionDirection::OrSymbol)
          .returns(ModernTreasury::Models::TransactionDirection::OrSymbol)
      end
      def direction=(_)
      end

      # An inclusive upper bound for searching effective_date
      sig { returns(T.nilable(Date)) }
      def effective_date_end
      end

      sig { params(_: Date).returns(Date) }
      def effective_date_end=(_)
      end

      # An inclusive lower bound for searching effective_date
      sig { returns(T.nilable(Date)) }
      def effective_date_start
      end

      sig { params(_: Date).returns(Date) }
      def effective_date_start=(_)
      end

      # For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(T.nilable(String)) }
      def originating_account_id
      end

      sig { params(_: String).returns(String) }
      def originating_account_id=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def per_page
      end

      sig { params(_: Integer).returns(Integer) }
      def per_page=(_)
      end

      # Either `normal` or `high`. For ACH and EFT payments, `high` represents a
      #   same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
      #   an overnight check rather than standard mail.
      sig { returns(T.nilable(ModernTreasury::Models::PaymentOrderListParams::Priority::OrSymbol)) }
      def priority
      end

      sig do
        params(_: ModernTreasury::Models::PaymentOrderListParams::Priority::OrSymbol)
          .returns(ModernTreasury::Models::PaymentOrderListParams::Priority::OrSymbol)
      end
      def priority=(_)
      end

      # An inclusive upper bound for searching process_after
      sig { returns(T.nilable(Time)) }
      def process_after_end
      end

      sig { params(_: Time).returns(Time) }
      def process_after_end=(_)
      end

      # An inclusive lower bound for searching process_after
      sig { returns(T.nilable(Time)) }
      def process_after_start
      end

      sig { params(_: Time).returns(Time) }
      def process_after_start=(_)
      end

      # Query for records with the provided reference number
      sig { returns(T.nilable(String)) }
      def reference_number
      end

      sig { params(_: String).returns(String) }
      def reference_number=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::PaymentOrderListParams::Status::OrSymbol)) }
      def status
      end

      sig do
        params(_: ModernTreasury::Models::PaymentOrderListParams::Status::OrSymbol)
          .returns(ModernTreasury::Models::PaymentOrderListParams::Status::OrSymbol)
      end
      def status=(_)
      end

      # The ID of a transaction that the payment order has been reconciled to.
      sig { returns(T.nilable(String)) }
      def transaction_id
      end

      sig { params(_: String).returns(String) }
      def transaction_id=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::PaymentOrderListParams::Type::OrSymbol)) }
      def type
      end

      sig do
        params(_: ModernTreasury::Models::PaymentOrderListParams::Type::OrSymbol)
          .returns(ModernTreasury::Models::PaymentOrderListParams::Type::OrSymbol)
      end
      def type=(_)
      end

      sig do
        params(
          after_cursor: T.nilable(String),
          counterparty_id: String,
          created_at_end: Date,
          created_at_start: Date,
          direction: ModernTreasury::Models::TransactionDirection::OrSymbol,
          effective_date_end: Date,
          effective_date_start: Date,
          metadata: T::Hash[Symbol, String],
          originating_account_id: String,
          per_page: Integer,
          priority: ModernTreasury::Models::PaymentOrderListParams::Priority::OrSymbol,
          process_after_end: Time,
          process_after_start: Time,
          reference_number: String,
          status: ModernTreasury::Models::PaymentOrderListParams::Status::OrSymbol,
          transaction_id: String,
          type: ModernTreasury::Models::PaymentOrderListParams::Type::OrSymbol,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        counterparty_id: nil,
        created_at_end: nil,
        created_at_start: nil,
        direction: nil,
        effective_date_end: nil,
        effective_date_start: nil,
        metadata: nil,
        originating_account_id: nil,
        per_page: nil,
        priority: nil,
        process_after_end: nil,
        process_after_start: nil,
        reference_number: nil,
        status: nil,
        transaction_id: nil,
        type: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              after_cursor: T.nilable(String),
              counterparty_id: String,
              created_at_end: Date,
              created_at_start: Date,
              direction: ModernTreasury::Models::TransactionDirection::OrSymbol,
              effective_date_end: Date,
              effective_date_start: Date,
              metadata: T::Hash[Symbol, String],
              originating_account_id: String,
              per_page: Integer,
              priority: ModernTreasury::Models::PaymentOrderListParams::Priority::OrSymbol,
              process_after_end: Time,
              process_after_start: Time,
              reference_number: String,
              status: ModernTreasury::Models::PaymentOrderListParams::Status::OrSymbol,
              transaction_id: String,
              type: ModernTreasury::Models::PaymentOrderListParams::Type::OrSymbol,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Either `normal` or `high`. For ACH and EFT payments, `high` represents a
      #   same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
      #   an overnight check rather than standard mail.
      module Priority
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::PaymentOrderListParams::Priority) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::PaymentOrderListParams::Priority::TaggedSymbol) }

        HIGH = T.let(:high, ModernTreasury::Models::PaymentOrderListParams::Priority::TaggedSymbol)
        NORMAL = T.let(:normal, ModernTreasury::Models::PaymentOrderListParams::Priority::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::PaymentOrderListParams::Priority::TaggedSymbol]) }
          def values
          end
        end
      end

      module Status
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::PaymentOrderListParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::PaymentOrderListParams::Status::TaggedSymbol) }

        APPROVED = T.let(:approved, ModernTreasury::Models::PaymentOrderListParams::Status::TaggedSymbol)
        CANCELLED = T.let(:cancelled, ModernTreasury::Models::PaymentOrderListParams::Status::TaggedSymbol)
        COMPLETED = T.let(:completed, ModernTreasury::Models::PaymentOrderListParams::Status::TaggedSymbol)
        DENIED = T.let(:denied, ModernTreasury::Models::PaymentOrderListParams::Status::TaggedSymbol)
        FAILED = T.let(:failed, ModernTreasury::Models::PaymentOrderListParams::Status::TaggedSymbol)
        NEEDS_APPROVAL =
          T.let(:needs_approval, ModernTreasury::Models::PaymentOrderListParams::Status::TaggedSymbol)
        PENDING = T.let(:pending, ModernTreasury::Models::PaymentOrderListParams::Status::TaggedSymbol)
        PROCESSING = T.let(:processing, ModernTreasury::Models::PaymentOrderListParams::Status::TaggedSymbol)
        RETURNED = T.let(:returned, ModernTreasury::Models::PaymentOrderListParams::Status::TaggedSymbol)
        REVERSED = T.let(:reversed, ModernTreasury::Models::PaymentOrderListParams::Status::TaggedSymbol)
        SENT = T.let(:sent, ModernTreasury::Models::PaymentOrderListParams::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::PaymentOrderListParams::Status::TaggedSymbol]) }
          def values
          end
        end
      end

      module Type
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::PaymentOrderListParams::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol) }

        ACH = T.let(:ach, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)
        AU_BECS = T.let(:au_becs, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)
        BACS = T.let(:bacs, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)
        BOOK = T.let(:book, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)
        CARD = T.let(:card, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)
        CHATS = T.let(:chats, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)
        CHECK = T.let(:check, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)
        CROSS_BORDER = T.let(:cross_border, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)
        DK_NETS = T.let(:dk_nets, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)
        EFT = T.let(:eft, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)
        HU_ICS = T.let(:hu_ics, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)
        INTERAC = T.let(:interac, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)
        MASAV = T.let(:masav, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)
        MX_CCEN = T.let(:mx_ccen, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)
        NEFT = T.let(:neft, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)
        NICS = T.let(:nics, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)
        NZ_BECS = T.let(:nz_becs, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)
        PL_ELIXIR = T.let(:pl_elixir, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)
        PROVXCHANGE = T.let(:provxchange, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)
        RO_SENT = T.let(:ro_sent, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)
        RTP = T.let(:rtp, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)
        SE_BANKGIROT = T.let(:se_bankgirot, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)
        SEN = T.let(:sen, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)
        SEPA = T.let(:sepa, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)
        SG_GIRO = T.let(:sg_giro, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)
        SIC = T.let(:sic, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)
        SIGNET = T.let(:signet, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)
        SKNBI = T.let(:sknbi, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)
        WIRE = T.let(:wire, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)
        ZENGIN = T.let(:zengin, ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::PaymentOrderListParams::Type::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
