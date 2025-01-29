# typed: strong

module ModernTreasury
  module Models
    class IncomingPaymentDetailListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            after_cursor: T.nilable(String),
            as_of_date_end: Date,
            as_of_date_start: Date,
            direction: Symbol,
            metadata: T::Hash[Symbol, String],
            per_page: Integer,
            status: Symbol,
            type: Symbol,
            virtual_account_id: String
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(Date)) }
      attr_reader :as_of_date_end

      sig { params(as_of_date_end: Date).void }
      attr_writer :as_of_date_end

      sig { returns(T.nilable(Date)) }
      attr_reader :as_of_date_start

      sig { params(as_of_date_start: Date).void }
      attr_writer :as_of_date_start

      sig { returns(T.nilable(Symbol)) }
      attr_reader :direction

      sig { params(direction: Symbol).void }
      attr_writer :direction

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig { returns(T.nilable(Symbol)) }
      attr_reader :status

      sig { params(status: Symbol).void }
      attr_writer :status

      sig { returns(T.nilable(Symbol)) }
      attr_reader :type

      sig { params(type: Symbol).void }
      attr_writer :type

      sig { returns(T.nilable(String)) }
      attr_reader :virtual_account_id

      sig { params(virtual_account_id: String).void }
      attr_writer :virtual_account_id

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
          request_options: ModernTreasury::RequestOpts
        ).void
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
      ); end

      sig { returns(ModernTreasury::Models::IncomingPaymentDetailListParams::Shape) }
      def to_h; end

      class Status < ModernTreasury::Enum
        abstract!

        COMPLETED = :completed
        PENDING = :pending
        RETURNED = :returned

        sig { returns(T::Array[Symbol]) }
        def self.values; end
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

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
