# typed: strong

module ModernTreasury
  module Models
    class PaymentFlowCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            amount: Integer,
            counterparty_id: String,
            currency: String,
            direction: Symbol,
            originating_account_id: String,
            due_date: Date
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(String) }
      attr_accessor :counterparty_id

      sig { returns(String) }
      attr_accessor :currency

      sig { returns(Symbol) }
      attr_accessor :direction

      sig { returns(String) }
      attr_accessor :originating_account_id

      sig { returns(T.nilable(Date)) }
      attr_reader :due_date

      sig { params(due_date: Date).void }
      attr_writer :due_date

      sig do
        params(
          amount: Integer,
          counterparty_id: String,
          currency: String,
          direction: Symbol,
          originating_account_id: String,
          due_date: Date,
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(
        amount:,
        counterparty_id:,
        currency:,
        direction:,
        originating_account_id:,
        due_date: nil,
        request_options: {}
      ); end

      sig { returns(ModernTreasury::Models::PaymentFlowCreateParams::Shape) }
      def to_h; end

      class Direction < ModernTreasury::Enum
        abstract!

        CREDIT = :credit
        DEBIT = :debit

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
