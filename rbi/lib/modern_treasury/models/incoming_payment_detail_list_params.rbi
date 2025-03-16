# typed: strong

module ModernTreasury
  module Models
    class IncomingPaymentDetailListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      def after_cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def after_cursor=(_)
      end

      # Filters incoming payment details with an as_of_date starting on or before the
      #   specified date (YYYY-MM-DD).
      sig { returns(T.nilable(Date)) }
      def as_of_date_end
      end

      sig { params(_: Date).returns(Date) }
      def as_of_date_end=(_)
      end

      # Filters incoming payment details with an as_of_date starting on or after the
      #   specified date (YYYY-MM-DD).
      sig { returns(T.nilable(Date)) }
      def as_of_date_start
      end

      sig { params(_: Date).returns(Date) }
      def as_of_date_start=(_)
      end

      # One of `credit` or `debit`.
      sig { returns(T.nilable(Symbol)) }
      def direction
      end

      sig { params(_: Symbol).returns(Symbol) }
      def direction=(_)
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

      # The current status of the incoming payment order. One of `pending`, `completed`,
      #   or `returned`.
      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or
      #   `wire`.
      sig { returns(T.nilable(Symbol)) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # If the incoming payment detail is in a virtual account, the ID of the Virtual
      #   Account.
      sig { returns(T.nilable(String)) }
      def virtual_account_id
      end

      sig { params(_: String).returns(String) }
      def virtual_account_id=(_)
      end

      sig do
        params(
          after_cursor: T.nilable(String),
          as_of_date_end: Date,
          as_of_date_start: Date,
          direction: Symbol,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          status: Symbol,
          type: Symbol,
          virtual_account_id: String,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
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
              direction: Symbol,
              metadata: T::Hash[Symbol, String],
              per_page: Integer,
              status: Symbol,
              type: Symbol,
              virtual_account_id: String,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      # The current status of the incoming payment order. One of `pending`, `completed`,
      #   or `returned`.
      class Status < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        COMPLETED = :completed
        PENDING = :pending
        RETURNED = :returned
      end

      # One of: `ach`, `book`, `check`, `eft`, `interac`, `rtp`, `sepa`, `signet`, or
      #   `wire`.
      class Type < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ACH = :ach
        BOOK = :book
        CHECK = :check
        EFT = :eft
        INTERAC = :interac
        RTP = :rtp
        SEPA = :sepa
        SIGNET = :signet
        WIRE = :wire
      end
    end
  end
end
