# typed: strong

module ModernTreasury
  module Models
    class PaymentFlowCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # Required. Value in specified currency's smallest unit. e.g. $10 would be
      #   represented as 1000. Can be any integer up to 36 digits.
      sig { returns(Integer) }
      attr_accessor :amount

      # Required. The ID of a counterparty associated with the payment. As part of the
      #   payment workflow an external account will be associated with this model.
      sig { returns(String) }
      attr_accessor :counterparty_id

      # Required. The currency of the payment.
      sig { returns(String) }
      attr_accessor :currency

      # Required. Describes the direction money is flowing in the transaction. Can only
      #   be `debit`. A `debit` pulls money from someone else's account to your own.
      sig { returns(ModernTreasury::Models::PaymentFlowCreateParams::Direction::OrSymbol) }
      attr_accessor :direction

      # Required. The ID of one of your organization's internal accounts.
      sig { returns(String) }
      attr_accessor :originating_account_id

      # Optional. Can only be passed in when `effective_date_selection_enabled` is
      #   `true`. When set, the due date is shown to your end-user in the pre-built UI as
      #   they are selecting a payment `effective_date`.
      sig { returns(T.nilable(Date)) }
      attr_reader :due_date

      sig { params(due_date: Date).void }
      attr_writer :due_date

      sig do
        params(
          amount: Integer,
          counterparty_id: String,
          currency: String,
          direction: ModernTreasury::Models::PaymentFlowCreateParams::Direction::OrSymbol,
          originating_account_id: String,
          due_date: Date,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        amount:,
        counterparty_id:,
        currency:,
        direction:,
        originating_account_id:,
        due_date: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              amount: Integer,
              counterparty_id: String,
              currency: String,
              direction: ModernTreasury::Models::PaymentFlowCreateParams::Direction::OrSymbol,
              originating_account_id: String,
              due_date: Date,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Required. Describes the direction money is flowing in the transaction. Can only
      #   be `debit`. A `debit` pulls money from someone else's account to your own.
      module Direction
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::PaymentFlowCreateParams::Direction) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::PaymentFlowCreateParams::Direction::TaggedSymbol) }

        CREDIT = T.let(:credit, ModernTreasury::Models::PaymentFlowCreateParams::Direction::TaggedSymbol)
        DEBIT = T.let(:debit, ModernTreasury::Models::PaymentFlowCreateParams::Direction::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::PaymentFlowCreateParams::Direction::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
