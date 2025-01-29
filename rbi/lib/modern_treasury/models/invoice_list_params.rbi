# typed: strong

module ModernTreasury
  module Models
    class InvoiceListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            after_cursor: T.nilable(String),
            counterparty_id: String,
            due_date_end: Date,
            due_date_start: Date,
            expected_payment_id: String,
            metadata: T::Hash[Symbol, String],
            number: String,
            originating_account_id: String,
            payment_order_id: String,
            per_page: Integer,
            status: Symbol
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(String)) }
      attr_reader :counterparty_id

      sig { params(counterparty_id: String).void }
      attr_writer :counterparty_id

      sig { returns(T.nilable(Date)) }
      attr_reader :due_date_end

      sig { params(due_date_end: Date).void }
      attr_writer :due_date_end

      sig { returns(T.nilable(Date)) }
      attr_reader :due_date_start

      sig { params(due_date_start: Date).void }
      attr_writer :due_date_start

      sig { returns(T.nilable(String)) }
      attr_reader :expected_payment_id

      sig { params(expected_payment_id: String).void }
      attr_writer :expected_payment_id

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(String)) }
      attr_reader :number

      sig { params(number: String).void }
      attr_writer :number

      sig { returns(T.nilable(String)) }
      attr_reader :originating_account_id

      sig { params(originating_account_id: String).void }
      attr_writer :originating_account_id

      sig { returns(T.nilable(String)) }
      attr_reader :payment_order_id

      sig { params(payment_order_id: String).void }
      attr_writer :payment_order_id

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig { returns(T.nilable(Symbol)) }
      attr_reader :status

      sig { params(status: Symbol).void }
      attr_writer :status

      sig do
        params(
          after_cursor: T.nilable(String),
          counterparty_id: String,
          due_date_end: Date,
          due_date_start: Date,
          expected_payment_id: String,
          metadata: T::Hash[Symbol, String],
          number: String,
          originating_account_id: String,
          payment_order_id: String,
          per_page: Integer,
          status: Symbol,
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(
        after_cursor: nil,
        counterparty_id: nil,
        due_date_end: nil,
        due_date_start: nil,
        expected_payment_id: nil,
        metadata: nil,
        number: nil,
        originating_account_id: nil,
        payment_order_id: nil,
        per_page: nil,
        status: nil,
        request_options: {}
      ); end

      sig { returns(ModernTreasury::Models::InvoiceListParams::Shape) }
      def to_h; end

      class Status < ModernTreasury::Enum
        abstract!

        DRAFT = :draft
        PAID = :paid
        PARTIALLY_PAID = :partially_paid
        PAYMENT_PENDING = :payment_pending
        UNPAID = :unpaid
        VOIDED = :voided

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
