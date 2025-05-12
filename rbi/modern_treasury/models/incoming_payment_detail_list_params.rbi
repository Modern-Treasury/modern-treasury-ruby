# typed: strong

module ModernTreasury
  module Models
    class IncomingPaymentDetailListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::IncomingPaymentDetailListParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      # Filters incoming payment details with an as_of_date starting on or before the
      # specified date (YYYY-MM-DD).
      sig { returns(T.nilable(Date)) }
      attr_reader :as_of_date_end

      sig { params(as_of_date_end: Date).void }
      attr_writer :as_of_date_end

      # Filters incoming payment details with an as_of_date starting on or after the
      # specified date (YYYY-MM-DD).
      sig { returns(T.nilable(Date)) }
      attr_reader :as_of_date_start

      sig { params(as_of_date_start: Date).void }
      attr_writer :as_of_date_start

      # One of `credit` or `debit`.
      sig { returns(T.nilable(ModernTreasury::TransactionDirection::OrSymbol)) }
      attr_reader :direction

      sig do
        params(direction: ModernTreasury::TransactionDirection::OrSymbol).void
      end
      attr_writer :direction

      # For example, if you want to query for records with metadata key `Type` and value
      # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      # parameters.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      # The current status of the incoming payment order. One of `pending`, `completed`,
      # or `returned`.
      sig do
        returns(
          T.nilable(
            ModernTreasury::IncomingPaymentDetailListParams::Status::OrSymbol
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status:
            ModernTreasury::IncomingPaymentDetailListParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      # One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or
      # `wire`.
      sig do
        returns(
          T.nilable(
            ModernTreasury::IncomingPaymentDetailListParams::Type::OrSymbol
          )
        )
      end
      attr_reader :type

      sig do
        params(
          type: ModernTreasury::IncomingPaymentDetailListParams::Type::OrSymbol
        ).void
      end
      attr_writer :type

      # If the incoming payment detail is in a virtual account, the ID of the Virtual
      # Account.
      sig { returns(T.nilable(String)) }
      attr_reader :virtual_account_id

      sig { params(virtual_account_id: String).void }
      attr_writer :virtual_account_id

      sig do
        params(
          after_cursor: T.nilable(String),
          as_of_date_end: Date,
          as_of_date_start: Date,
          direction: ModernTreasury::TransactionDirection::OrSymbol,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          status:
            ModernTreasury::IncomingPaymentDetailListParams::Status::OrSymbol,
          type: ModernTreasury::IncomingPaymentDetailListParams::Type::OrSymbol,
          virtual_account_id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        # Filters incoming payment details with an as_of_date starting on or before the
        # specified date (YYYY-MM-DD).
        as_of_date_end: nil,
        # Filters incoming payment details with an as_of_date starting on or after the
        # specified date (YYYY-MM-DD).
        as_of_date_start: nil,
        # One of `credit` or `debit`.
        direction: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        # parameters.
        metadata: nil,
        per_page: nil,
        # The current status of the incoming payment order. One of `pending`, `completed`,
        # or `returned`.
        status: nil,
        # One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or
        # `wire`.
        type: nil,
        # If the incoming payment detail is in a virtual account, the ID of the Virtual
        # Account.
        virtual_account_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after_cursor: T.nilable(String),
            as_of_date_end: Date,
            as_of_date_start: Date,
            direction: ModernTreasury::TransactionDirection::OrSymbol,
            metadata: T::Hash[Symbol, String],
            per_page: Integer,
            status:
              ModernTreasury::IncomingPaymentDetailListParams::Status::OrSymbol,
            type:
              ModernTreasury::IncomingPaymentDetailListParams::Type::OrSymbol,
            virtual_account_id: String,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The current status of the incoming payment order. One of `pending`, `completed`,
      # or `returned`.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::IncomingPaymentDetailListParams::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COMPLETED =
          T.let(
            :completed,
            ModernTreasury::IncomingPaymentDetailListParams::Status::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            ModernTreasury::IncomingPaymentDetailListParams::Status::TaggedSymbol
          )
        RETURNED =
          T.let(
            :returned,
            ModernTreasury::IncomingPaymentDetailListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::IncomingPaymentDetailListParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or
      # `wire`.
      module Type
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::IncomingPaymentDetailListParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH =
          T.let(
            :ach,
            ModernTreasury::IncomingPaymentDetailListParams::Type::TaggedSymbol
          )
        AU_BECS =
          T.let(
            :au_becs,
            ModernTreasury::IncomingPaymentDetailListParams::Type::TaggedSymbol
          )
        BACS =
          T.let(
            :bacs,
            ModernTreasury::IncomingPaymentDetailListParams::Type::TaggedSymbol
          )
        BOOK =
          T.let(
            :book,
            ModernTreasury::IncomingPaymentDetailListParams::Type::TaggedSymbol
          )
        CHECK =
          T.let(
            :check,
            ModernTreasury::IncomingPaymentDetailListParams::Type::TaggedSymbol
          )
        EFT =
          T.let(
            :eft,
            ModernTreasury::IncomingPaymentDetailListParams::Type::TaggedSymbol
          )
        INTERAC =
          T.let(
            :interac,
            ModernTreasury::IncomingPaymentDetailListParams::Type::TaggedSymbol
          )
        NEFT =
          T.let(
            :neft,
            ModernTreasury::IncomingPaymentDetailListParams::Type::TaggedSymbol
          )
        NZ_BECS =
          T.let(
            :nz_becs,
            ModernTreasury::IncomingPaymentDetailListParams::Type::TaggedSymbol
          )
        RTP =
          T.let(
            :rtp,
            ModernTreasury::IncomingPaymentDetailListParams::Type::TaggedSymbol
          )
        SEPA =
          T.let(
            :sepa,
            ModernTreasury::IncomingPaymentDetailListParams::Type::TaggedSymbol
          )
        SIGNET =
          T.let(
            :signet,
            ModernTreasury::IncomingPaymentDetailListParams::Type::TaggedSymbol
          )
        WIRE =
          T.let(
            :wire,
            ModernTreasury::IncomingPaymentDetailListParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::IncomingPaymentDetailListParams::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
