# typed: strong

module ModernTreasury
  module Models
    class IncomingPaymentDetailListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      # Filters incoming payment details with an as_of_date starting on or before the
      #   specified date (YYYY-MM-DD).
      sig { returns(T.nilable(Date)) }
      attr_reader :as_of_date_end

      sig { params(as_of_date_end: Date).void }
      attr_writer :as_of_date_end

      # Filters incoming payment details with an as_of_date starting on or after the
      #   specified date (YYYY-MM-DD).
      sig { returns(T.nilable(Date)) }
      attr_reader :as_of_date_start

      sig { params(as_of_date_start: Date).void }
      attr_writer :as_of_date_start

      # One of `credit` or `debit`.
      sig { returns(T.nilable(ModernTreasury::Models::TransactionDirection::OrSymbol)) }
      attr_reader :direction

      sig { params(direction: ModernTreasury::Models::TransactionDirection::OrSymbol).void }
      attr_writer :direction

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

      # The current status of the incoming payment order. One of `pending`, `completed`,
      #   or `returned`.
      sig { returns(T.nilable(ModernTreasury::Models::IncomingPaymentDetailListParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: ModernTreasury::Models::IncomingPaymentDetailListParams::Status::OrSymbol).void }
      attr_writer :status

      # One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or
      #   `wire`.
      sig { returns(T.nilable(ModernTreasury::Models::IncomingPaymentDetailListParams::Type::OrSymbol)) }
      attr_reader :type

      sig { params(type: ModernTreasury::Models::IncomingPaymentDetailListParams::Type::OrSymbol).void }
      attr_writer :type

      # If the incoming payment detail is in a virtual account, the ID of the Virtual
      #   Account.
      sig { returns(T.nilable(String)) }
      attr_reader :virtual_account_id

      sig { params(virtual_account_id: String).void }
      attr_writer :virtual_account_id

      sig do
        params(
          after_cursor: T.nilable(String),
          as_of_date_end: Date,
          as_of_date_start: Date,
          direction: ModernTreasury::Models::TransactionDirection::OrSymbol,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          status: ModernTreasury::Models::IncomingPaymentDetailListParams::Status::OrSymbol,
          type: ModernTreasury::Models::IncomingPaymentDetailListParams::Type::OrSymbol,
          virtual_account_id: String,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        as_of_date_end: nil,
        as_of_date_start: nil,
        direction: nil,
        metadata: nil,
        per_page: nil,
        status: nil,
        type: nil,
        virtual_account_id: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              after_cursor: T.nilable(String),
              as_of_date_end: Date,
              as_of_date_start: Date,
              direction: ModernTreasury::Models::TransactionDirection::OrSymbol,
              metadata: T::Hash[Symbol, String],
              per_page: Integer,
              status: ModernTreasury::Models::IncomingPaymentDetailListParams::Status::OrSymbol,
              type: ModernTreasury::Models::IncomingPaymentDetailListParams::Type::OrSymbol,
              virtual_account_id: String,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      # The current status of the incoming payment order. One of `pending`, `completed`,
      #   or `returned`.
      module Status
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::IncomingPaymentDetailListParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::IncomingPaymentDetailListParams::Status::TaggedSymbol) }

        COMPLETED =
          T.let(:completed, ModernTreasury::Models::IncomingPaymentDetailListParams::Status::TaggedSymbol)
        PENDING = T.let(:pending, ModernTreasury::Models::IncomingPaymentDetailListParams::Status::TaggedSymbol)
        RETURNED =
          T.let(:returned, ModernTreasury::Models::IncomingPaymentDetailListParams::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::IncomingPaymentDetailListParams::Status::TaggedSymbol]) }
          def values
          end
        end
      end

      # One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or
      #   `wire`.
      module Type
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::IncomingPaymentDetailListParams::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::IncomingPaymentDetailListParams::Type::TaggedSymbol) }

        ACH = T.let(:ach, ModernTreasury::Models::IncomingPaymentDetailListParams::Type::TaggedSymbol)
        BOOK = T.let(:book, ModernTreasury::Models::IncomingPaymentDetailListParams::Type::TaggedSymbol)
        CHECK = T.let(:check, ModernTreasury::Models::IncomingPaymentDetailListParams::Type::TaggedSymbol)
        EFT = T.let(:eft, ModernTreasury::Models::IncomingPaymentDetailListParams::Type::TaggedSymbol)
        INTERAC = T.let(:interac, ModernTreasury::Models::IncomingPaymentDetailListParams::Type::TaggedSymbol)
        RTP = T.let(:rtp, ModernTreasury::Models::IncomingPaymentDetailListParams::Type::TaggedSymbol)
        SEPA = T.let(:sepa, ModernTreasury::Models::IncomingPaymentDetailListParams::Type::TaggedSymbol)
        SIGNET = T.let(:signet, ModernTreasury::Models::IncomingPaymentDetailListParams::Type::TaggedSymbol)
        WIRE = T.let(:wire, ModernTreasury::Models::IncomingPaymentDetailListParams::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::IncomingPaymentDetailListParams::Type::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
