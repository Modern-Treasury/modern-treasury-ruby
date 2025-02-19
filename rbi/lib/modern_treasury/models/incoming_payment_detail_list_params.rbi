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

      sig { returns(T.nilable(Date)) }
      def as_of_date_end
      end

      sig { params(_: Date).returns(Date) }
      def as_of_date_end=(_)
      end

      sig { returns(T.nilable(Date)) }
      def as_of_date_start
      end

      sig { params(_: Date).returns(Date) }
      def as_of_date_start=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def direction
      end

      sig { params(_: Symbol).returns(Symbol) }
      def direction=(_)
      end

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

      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

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
          .void
      end
      def initialize(
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

      class Status < ModernTreasury::Enum
        abstract!

        COMPLETED = :completed
        PENDING = :pending
        RETURNED = :returned

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < ModernTreasury::Enum
        abstract!

        ACH = :ach
        BOOK = :book
        CHECK = :check
        EFT = :eft
        INTERAC = :interac
        RTP = :rtp
        SEPA = :sepa
        SIGNET = :signet
        WIRE = :wire

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
