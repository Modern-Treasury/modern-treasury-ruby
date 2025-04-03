# typed: strong

module ModernTreasury
  module Models
    class IncomingPaymentDetailCreateAsyncParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

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

      # An object passed through to the simulated IPD that could reflect what a vendor
      #   would pass.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :data

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
          data: T.nilable(T.anything),
          description: T.nilable(String),
          direction: ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Direction::OrSymbol,
          internal_account_id: String,
          type: ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::OrSymbol,
          virtual_account_id: T.nilable(String),
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        amount: nil,
        as_of_date: nil,
        currency: nil,
        data: nil,
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
              data: T.nilable(T.anything),
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
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Direction) }
        OrSymbol =
          T.type_alias do
            T.any(
              Symbol,
              String,
              ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Direction::TaggedSymbol
            )
          end

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
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol) }

        ACH = T.let(:ach, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol)
        AU_BECS =
          T.let(:au_becs, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol)
        BACS = T.let(:bacs, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol)
        BOOK = T.let(:book, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol)
        CHECK = T.let(:check, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol)
        EFT = T.let(:eft, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol)
        INTERAC =
          T.let(:interac, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol)
        NEFT = T.let(:neft, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol)
        NZ_BECS =
          T.let(:nz_becs, ModernTreasury::Models::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol)
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
