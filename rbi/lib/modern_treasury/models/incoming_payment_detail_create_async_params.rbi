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
      sig { returns(T.nilable(Symbol)) }
      def currency
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
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
      sig { returns(T.nilable(Symbol)) }
      def direction
      end

      sig { params(_: Symbol).returns(Symbol) }
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
      sig { returns(T.nilable(Symbol)) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
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
          currency: T.nilable(Symbol),
          description: T.nilable(String),
          direction: Symbol,
          internal_account_id: String,
          type: Symbol,
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
      def to_hash
      end

      # One of `credit`, `debit`.
      class Direction < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        CREDIT = :credit
        DEBIT = :debit
      end

      # One of `ach`, `wire`, `check`.
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
