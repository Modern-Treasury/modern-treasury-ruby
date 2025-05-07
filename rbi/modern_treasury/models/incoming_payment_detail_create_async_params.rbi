# typed: strong

module ModernTreasury
  module Models
    class IncomingPaymentDetailCreateAsyncParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

      # Value in specified currency's smallest unit. e.g. $10 would be represented
      # as 1000.
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount

      sig { params(amount: Integer).void }
      attr_writer :amount

      # Defaults to today.
      sig { returns(T.nilable(Date)) }
      attr_accessor :as_of_date

      # Defaults to the currency of the originating account.
      sig { returns(T.nilable(ModernTreasury::Currency::OrSymbol)) }
      attr_accessor :currency

      # An object passed through to the simulated IPD that could reflect what a vendor
      # would pass.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :data

      # Defaults to a random description.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # One of `credit`, `debit`.
      sig do
        returns(
          T.nilable(
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Direction::OrSymbol
          )
        )
      end
      attr_reader :direction

      sig do
        params(
          direction:
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Direction::OrSymbol
        ).void
      end
      attr_writer :direction

      # The ID of one of your internal accounts.
      sig { returns(T.nilable(String)) }
      attr_reader :internal_account_id

      sig { params(internal_account_id: String).void }
      attr_writer :internal_account_id

      # One of `ach`, `wire`, `check`.
      sig do
        returns(
          T.nilable(
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::OrSymbol
          )
        )
      end
      attr_reader :type

      sig do
        params(
          type:
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::OrSymbol
        ).void
      end
      attr_writer :type

      # An optional parameter to associate the incoming payment detail to a virtual
      # account.
      sig { returns(T.nilable(String)) }
      attr_accessor :virtual_account_id

      sig do
        params(
          amount: Integer,
          as_of_date: T.nilable(Date),
          currency: T.nilable(ModernTreasury::Currency::OrSymbol),
          data: T.nilable(T.anything),
          description: T.nilable(String),
          direction:
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Direction::OrSymbol,
          internal_account_id: String,
          type:
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::OrSymbol,
          virtual_account_id: T.nilable(String),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Value in specified currency's smallest unit. e.g. $10 would be represented
        # as 1000.
        amount: nil,
        # Defaults to today.
        as_of_date: nil,
        # Defaults to the currency of the originating account.
        currency: nil,
        # An object passed through to the simulated IPD that could reflect what a vendor
        # would pass.
        data: nil,
        # Defaults to a random description.
        description: nil,
        # One of `credit`, `debit`.
        direction: nil,
        # The ID of one of your internal accounts.
        internal_account_id: nil,
        # One of `ach`, `wire`, `check`.
        type: nil,
        # An optional parameter to associate the incoming payment detail to a virtual
        # account.
        virtual_account_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            amount: Integer,
            as_of_date: T.nilable(Date),
            currency: T.nilable(ModernTreasury::Currency::OrSymbol),
            data: T.nilable(T.anything),
            description: T.nilable(String),
            direction:
              ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Direction::OrSymbol,
            internal_account_id: String,
            type:
              ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::OrSymbol,
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
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Direction
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT =
          T.let(
            :credit,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Direction::TaggedSymbol
          )
        DEBIT =
          T.let(
            :debit,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Direction::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Direction::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # One of `ach`, `wire`, `check`.
      module Type
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH =
          T.let(
            :ach,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol
          )
        AU_BECS =
          T.let(
            :au_becs,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol
          )
        BACS =
          T.let(
            :bacs,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol
          )
        BOOK =
          T.let(
            :book,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol
          )
        CHECK =
          T.let(
            :check,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol
          )
        EFT =
          T.let(
            :eft,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol
          )
        INTERAC =
          T.let(
            :interac,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol
          )
        NEFT =
          T.let(
            :neft,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol
          )
        NZ_BECS =
          T.let(
            :nz_becs,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol
          )
        RTP =
          T.let(
            :rtp,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol
          )
        SEPA =
          T.let(
            :sepa,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol
          )
        SIGNET =
          T.let(
            :signet,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol
          )
        WIRE =
          T.let(
            :wire,
            ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::IncomingPaymentDetailCreateAsyncParams::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
