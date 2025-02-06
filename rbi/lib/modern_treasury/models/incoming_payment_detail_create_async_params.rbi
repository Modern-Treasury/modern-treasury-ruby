# typed: strong

module ModernTreasury
  module Models
    class IncomingPaymentDetailCreateAsyncParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(Integer)) }
      attr_reader :amount

      sig { params(amount: Integer).void }
      attr_writer :amount

      sig { returns(T.nilable(Date)) }
      attr_accessor :as_of_date

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :currency

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(Symbol)) }
      attr_reader :direction

      sig { params(direction: Symbol).void }
      attr_writer :direction

      sig { returns(T.nilable(String)) }
      attr_reader :internal_account_id

      sig { params(internal_account_id: String).void }
      attr_writer :internal_account_id

      sig { returns(T.nilable(Symbol)) }
      attr_reader :type

      sig { params(type: Symbol).void }
      attr_writer :type

      sig { returns(T.nilable(String)) }
      attr_accessor :virtual_account_id

      sig do
        params(
          amount: Integer,
          as_of_date: T.nilable(Date),
          currency: T.nilable(Symbol),
          description: T.nilable(String),
          direction: Symbol,
          internal_account_id: String,
          type: Symbol,
          virtual_account_id: T.nilable(String),
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        amount: nil,
        as_of_date: nil,
        currency: nil,
        description: nil,
        direction: nil,
        internal_account_id: nil,
        type: nil,
        virtual_account_id: nil,
        request_options: {}
      ); end

      sig do
        override.returns(
          {
            amount: Integer,
            as_of_date: T.nilable(Date),
            currency: T.nilable(Symbol),
            description: T.nilable(String),
            direction: Symbol,
            internal_account_id: String,
            type: Symbol,
            virtual_account_id: T.nilable(String),
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash; end

      class Direction < ModernTreasury::Enum
        abstract!

        CREDIT = :credit
        DEBIT = :debit

        sig { override.returns(T::Array[Symbol]) }
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

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
