# typed: strong

module ModernTreasury
  module Models
    class IncomingPaymentDetailCreateAsyncParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # Value in specified currency's smallest unit. e.g. $10 would be represented
      #   as 1000.
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount

      sig { params(amount: Integer).void }
      attr_writer :amount

      # Defaults to today.
      sig { returns(T.nilable(Date)) }
      attr_accessor :as_of_date

      # Defaults to the currency of the originating account.
      sig { returns(T.nilable(ModernTreasury::Models::Currency::OrSymbol)) }
      attr_accessor :currency

      # Defaults to a random description.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # One of `credit`, `debit`.
      sig { returns(T.nilable(ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Direction::OrSymbol)) }
      attr_reader :direction

      sig { params(direction: ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Direction::OrSymbol).void }
      attr_writer :direction

      # The ID of one of your internal accounts.
      sig { returns(T.nilable(String)) }
      attr_reader :internal_account_id

      sig { params(internal_account_id: String).void }
      attr_writer :internal_account_id

      # One of `ach`, `wire`, `check`.
      sig { returns(T.nilable(ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::OrSymbol)) }
      attr_reader :type

      sig { params(type: ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::OrSymbol).void }
      attr_writer :type

      # An optional parameter to associate the incoming payment detail to a virtual
      #   account.
      sig { returns(T.nilable(String)) }
      attr_accessor :virtual_account_id

      sig do
        params(
          amount: Integer,
          as_of_date: T.nilable(Date),
          currency: T.nilable(ModernTreasury::Models::Currency::OrSymbol),
          description: T.nilable(String),
          direction: ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Direction::OrSymbol,
          internal_account_id: String,
          type: ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::OrSymbol,
          virtual_account_id: T.nilable(String),
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        amount: nil,
        as_of_date: nil,
        currency: nil,
        description: nil,
        direction: nil,
        internal_account_id: nil,
        type: nil,
        virtual_account_id: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              amount: Integer,
              as_of_date: T.nilable(Date),
              currency: T.nilable(ModernTreasury::Models::Currency::OrSymbol),
              description: T.nilable(String),
              direction: ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Direction::OrSymbol,
              internal_account_id: String,
              type: ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::OrSymbol,
              virtual_account_id: T.nilable(String),
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      # One of `credit`, `debit`.
      module Direction
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Direction) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Direction::TaggedSymbol) }

        CREDIT =
          T.let(:credit, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Direction::TaggedSymbol)
        DEBIT =
          T.let(:debit, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Direction::TaggedSymbol)

        sig do
          override
            .returns(T::Array[ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Direction::TaggedSymbol])
        end
        def self.values
        end
      end

      # One of `ach`, `wire`, `check`.
      module Type
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol) }

        ACH = T.let(:ach, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol)
        BOOK = T.let(:book, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol)
        CHECK = T.let(:check, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol)
        EFT = T.let(:eft, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol)
        INTERAC =
          T.let(:interac, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol)
        RTP = T.let(:rtp, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol)
        SEPA = T.let(:sepa, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol)
        SIGNET =
          T.let(:signet, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol)
        WIRE = T.let(:wire, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol)

        sig do
          override
            .returns(T::Array[ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
