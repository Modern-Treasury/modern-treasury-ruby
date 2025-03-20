# typed: strong

module ModernTreasury
  module Models
    class IncomingPaymentDetailCreateAsyncParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # Value in specified currency's smallest unit. e.g. $10 would be represented
      #   as 1000.
      sig { returns(T.nilable(Integer)) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # Defaults to today.
      sig { returns(T.nilable(Date)) }
      def as_of_date
      end

      sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
      def as_of_date=(_)
      end

      # Defaults to the currency of the originating account.
      sig { returns(T.nilable(ModernTreasury::Models::Currency::OrSymbol)) }
      def currency
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::Currency::OrSymbol))
          .returns(T.nilable(ModernTreasury::Models::Currency::OrSymbol))
      end
      def currency=(_)
      end

      # Defaults to a random description.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      # One of `credit`, `debit`.
      sig { returns(T.nilable(ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Direction::OrSymbol)) }
      def direction
      end

      sig do
        params(_: ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Direction::OrSymbol)
          .returns(ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Direction::OrSymbol)
      end
      def direction=(_)
      end

      # The ID of one of your internal accounts.
      sig { returns(T.nilable(String)) }
      def internal_account_id
      end

      sig { params(_: String).returns(String) }
      def internal_account_id=(_)
      end

      # One of `ach`, `wire`, `check`.
      sig { returns(T.nilable(ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::OrSymbol)) }
      def type
      end

      sig do
        params(_: ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::OrSymbol)
          .returns(ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::OrSymbol)
      end
      def type=(_)
      end

      # An optional parameter to associate the incoming payment detail to a virtual
      #   account.
      sig { returns(T.nilable(String)) }
      def virtual_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def virtual_account_id=(_)
      end

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
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
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
          T.let(:credit, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Direction::OrSymbol)
        DEBIT =
          T.let(:debit, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Direction::OrSymbol)
      end

      # One of `ach`, `wire`, `check`.
      module Type
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol) }

        ACH = T.let(:ach, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::OrSymbol)
        BOOK = T.let(:book, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::OrSymbol)
        CHECK = T.let(:check, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::OrSymbol)
        EFT = T.let(:eft, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::OrSymbol)
        INTERAC = T.let(:interac, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::OrSymbol)
        RTP = T.let(:rtp, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::OrSymbol)
        SEPA = T.let(:sepa, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::OrSymbol)
        SIGNET = T.let(:signet, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::OrSymbol)
        WIRE = T.let(:wire, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::OrSymbol)
      end
    end
  end
end
