# typed: strong

module ModernTreasury
  module Models
    class ExpectedPaymentListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      def after_cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def after_cursor=(_)
      end

      # Specify counterparty_id to see expected_payments for a specific account.
      sig { returns(T.nilable(String)) }
      def counterparty_id
      end

      sig { params(_: String).returns(String) }
      def counterparty_id=(_)
      end

      # Used to return expected payments created after some datetime
      sig { returns(T.nilable(Time)) }
      def created_at_lower_bound
      end

      sig { params(_: Time).returns(Time) }
      def created_at_lower_bound=(_)
      end

      # Used to return expected payments created before some datetime
      sig { returns(T.nilable(Time)) }
      def created_at_upper_bound
      end

      sig { params(_: Time).returns(Time) }
      def created_at_upper_bound=(_)
      end

      # One of credit, debit
      sig { returns(T.nilable(ModernTreasury::Models::TransactionDirection::OrSymbol)) }
      def direction
      end

      sig do
        params(_: ModernTreasury::Models::TransactionDirection::OrSymbol)
          .returns(ModernTreasury::Models::TransactionDirection::OrSymbol)
      end
      def direction=(_)
      end

      # Specify internal_account_id to see expected_payments for a specific account.
      sig { returns(T.nilable(String)) }
      def internal_account_id
      end

      sig { params(_: String).returns(String) }
      def internal_account_id=(_)
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

      sig { returns(T.nilable(Integer)) }
      def per_page
      end

      sig { params(_: Integer).returns(Integer) }
      def per_page=(_)
      end

      # One of unreconciled, reconciled, or archived.
      sig { returns(T.nilable(ModernTreasury::Models::ExpectedPaymentListParams::Status::OrSymbol)) }
      def status
      end

      sig do
        params(_: ModernTreasury::Models::ExpectedPaymentListParams::Status::OrSymbol)
          .returns(ModernTreasury::Models::ExpectedPaymentListParams::Status::OrSymbol)
      end
      def status=(_)
      end

      # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp,sen,
      #   sepa, signet, wire
      sig { returns(T.nilable(ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)) }
      def type
      end

      sig do
        params(_: ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
          .returns(ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
      end
      def type=(_)
      end

      sig do
        params(
          after_cursor: T.nilable(String),
          counterparty_id: String,
          created_at_lower_bound: Time,
          created_at_upper_bound: Time,
          direction: ModernTreasury::Models::TransactionDirection::OrSymbol,
          internal_account_id: String,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          status: ModernTreasury::Models::ExpectedPaymentListParams::Status::OrSymbol,
          type: ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        counterparty_id: nil,
        created_at_lower_bound: nil,
        created_at_upper_bound: nil,
        direction: nil,
        internal_account_id: nil,
        metadata: nil,
        per_page: nil,
        status: nil,
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
              created_at_lower_bound: Time,
              created_at_upper_bound: Time,
              direction: ModernTreasury::Models::TransactionDirection::OrSymbol,
              internal_account_id: String,
              metadata: T::Hash[Symbol, String],
              per_page: Integer,
              status: ModernTreasury::Models::ExpectedPaymentListParams::Status::OrSymbol,
              type: ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      # One of unreconciled, reconciled, or archived.
      module Status
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::ExpectedPaymentListParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::ExpectedPaymentListParams::Status::TaggedSymbol) }

        ARCHIVED = T.let(:archived, ModernTreasury::Models::ExpectedPaymentListParams::Status::OrSymbol)
        PARTIALLY_RECONCILED =
          T.let(:partially_reconciled, ModernTreasury::Models::ExpectedPaymentListParams::Status::OrSymbol)
        RECONCILED = T.let(:reconciled, ModernTreasury::Models::ExpectedPaymentListParams::Status::OrSymbol)
        UNRECONCILED = T.let(:unreconciled, ModernTreasury::Models::ExpectedPaymentListParams::Status::OrSymbol)
      end

      # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp,sen,
      #   sepa, signet, wire
      module Type
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::ExpectedPaymentListParams::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol) }

        ACH = T.let(:ach, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
        AU_BECS = T.let(:au_becs, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
        BACS = T.let(:bacs, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
        BOOK = T.let(:book, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
        CARD = T.let(:card, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
        CHATS = T.let(:chats, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
        CHECK = T.let(:check, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
        CROSS_BORDER = T.let(:cross_border, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
        DK_NETS = T.let(:dk_nets, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
        EFT = T.let(:eft, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
        HU_ICS = T.let(:hu_ics, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
        INTERAC = T.let(:interac, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
        MASAV = T.let(:masav, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
        MX_CCEN = T.let(:mx_ccen, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
        NEFT = T.let(:neft, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
        NICS = T.let(:nics, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
        NZ_BECS = T.let(:nz_becs, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
        PL_ELIXIR = T.let(:pl_elixir, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
        PROVXCHANGE = T.let(:provxchange, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
        RO_SENT = T.let(:ro_sent, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
        RTP = T.let(:rtp, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
        SE_BANKGIROT = T.let(:se_bankgirot, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
        SEN = T.let(:sen, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
        SEPA = T.let(:sepa, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
        SG_GIRO = T.let(:sg_giro, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
        SIC = T.let(:sic, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
        SIGNET = T.let(:signet, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
        SKNBI = T.let(:sknbi, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
        WIRE = T.let(:wire, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
        ZENGIN = T.let(:zengin, ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)
      end
    end
  end
end
