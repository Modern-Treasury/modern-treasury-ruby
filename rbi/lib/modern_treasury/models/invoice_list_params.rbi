# typed: strong

module ModernTreasury
  module Models
    class InvoiceListParams < ModernTreasury::BaseModel
      extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(String)) }
      attr_reader :counterparty_id

      sig { params(counterparty_id: String).void }
      attr_writer :counterparty_id

      # An inclusive upper bound for searching due_date
      sig { returns(T.nilable(Date)) }
      attr_reader :due_date_end

      sig { params(due_date_end: Date).void }
      attr_writer :due_date_end

      # An inclusive lower bound for searching due_date
      sig { returns(T.nilable(Date)) }
      attr_reader :due_date_start

      sig { params(due_date_start: Date).void }
      attr_writer :due_date_start

      sig { returns(T.nilable(String)) }
      attr_reader :expected_payment_id

      sig { params(expected_payment_id: String).void }
      attr_writer :expected_payment_id

      # For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # A unique record number assigned to each invoice that is issued.
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

      sig { returns(T.nilable(ModernTreasury::Models::InvoiceListParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: ModernTreasury::Models::InvoiceListParams::Status::OrSymbol).void }
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
          status: ModernTreasury::Models::InvoiceListParams::Status::OrSymbol,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
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
      )
      end

      sig do
        override
          .returns(
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
              status: ModernTreasury::Models::InvoiceListParams::Status::OrSymbol,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      module Status
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::InvoiceListParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::InvoiceListParams::Status::TaggedSymbol) }

        DRAFT = T.let(:draft, ModernTreasury::Models::InvoiceListParams::Status::TaggedSymbol)
        PAID = T.let(:paid, ModernTreasury::Models::InvoiceListParams::Status::TaggedSymbol)
        PARTIALLY_PAID = T.let(:partially_paid, ModernTreasury::Models::InvoiceListParams::Status::TaggedSymbol)
        PAYMENT_PENDING =
          T.let(:payment_pending, ModernTreasury::Models::InvoiceListParams::Status::TaggedSymbol)
        UNPAID = T.let(:unpaid, ModernTreasury::Models::InvoiceListParams::Status::TaggedSymbol)
        VOIDED = T.let(:voided, ModernTreasury::Models::InvoiceListParams::Status::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::InvoiceListParams::Status::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
