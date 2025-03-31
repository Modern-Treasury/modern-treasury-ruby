# typed: strong

module ModernTreasury
  module Models
    class ExpectedPaymentListParams < ModernTreasury::BaseModel
      extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      # Specify counterparty_id to see expected_payments for a specific account.
      sig { returns(T.nilable(String)) }
      attr_reader :counterparty_id

      sig { params(counterparty_id: String).void }
      attr_writer :counterparty_id

      # Used to return expected payments created after some datetime
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at_lower_bound

      sig { params(created_at_lower_bound: Time).void }
      attr_writer :created_at_lower_bound

      # Used to return expected payments created before some datetime
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at_upper_bound

      sig { params(created_at_upper_bound: Time).void }
      attr_writer :created_at_upper_bound

      # One of credit, debit
      sig { returns(T.nilable(ModernTreasury::Models::TransactionDirection::OrSymbol)) }
      attr_reader :direction

      sig { params(direction: ModernTreasury::Models::TransactionDirection::OrSymbol).void }
      attr_writer :direction

      # Specify internal_account_id to see expected_payments for a specific account.
      sig { returns(T.nilable(String)) }
      attr_reader :internal_account_id

      sig { params(internal_account_id: String).void }
      attr_writer :internal_account_id

      # For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      # One of unreconciled, reconciled, or archived.
      sig { returns(T.nilable(ModernTreasury::Models::ExpectedPaymentListParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: ModernTreasury::Models::ExpectedPaymentListParams::Status::OrSymbol).void }
      attr_writer :status

      # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp,sen,
      #   sepa, signet, wire
      sig { returns(T.nilable(ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol)) }
      attr_reader :type

      sig { params(type: ModernTreasury::Models::ExpectedPaymentListParams::Type::OrSymbol).void }
      attr_writer :type

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
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
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

        ARCHIVED = T.let(:archived, ModernTreasury::Models::ExpectedPaymentListParams::Status::TaggedSymbol)
        PARTIALLY_RECONCILED =
          T.let(:partially_reconciled, ModernTreasury::Models::ExpectedPaymentListParams::Status::TaggedSymbol)
        RECONCILED = T.let(:reconciled, ModernTreasury::Models::ExpectedPaymentListParams::Status::TaggedSymbol)
        UNRECONCILED =
          T.let(:unreconciled, ModernTreasury::Models::ExpectedPaymentListParams::Status::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::ExpectedPaymentListParams::Status::TaggedSymbol]) }
        def self.values
        end
      end

      # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp,sen,
      #   sepa, signet, wire
      module Type
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::ExpectedPaymentListParams::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol) }

        ACH = T.let(:ach, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)
        AU_BECS = T.let(:au_becs, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)
        BACS = T.let(:bacs, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)
        BOOK = T.let(:book, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)
        CARD = T.let(:card, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)
        CHATS = T.let(:chats, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)
        CHECK = T.let(:check, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)
        CROSS_BORDER =
          T.let(:cross_border, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)
        DK_NETS = T.let(:dk_nets, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)
        EFT = T.let(:eft, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)
        HU_ICS = T.let(:hu_ics, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)
        INTERAC = T.let(:interac, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)
        MASAV = T.let(:masav, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)
        MX_CCEN = T.let(:mx_ccen, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)
        NEFT = T.let(:neft, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)
        NICS = T.let(:nics, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)
        NZ_BECS = T.let(:nz_becs, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)
        PL_ELIXIR = T.let(:pl_elixir, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)
        PROVXCHANGE = T.let(:provxchange, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)
        RO_SENT = T.let(:ro_sent, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)
        RTP = T.let(:rtp, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)
        SE_BANKGIROT =
          T.let(:se_bankgirot, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)
        SEN = T.let(:sen, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)
        SEPA = T.let(:sepa, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)
        SG_GIRO = T.let(:sg_giro, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)
        SIC = T.let(:sic, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)
        SIGNET = T.let(:signet, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)
        SKNBI = T.let(:sknbi, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)
        WIRE = T.let(:wire, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)
        ZENGIN = T.let(:zengin, ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::ExpectedPaymentListParams::Type::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
