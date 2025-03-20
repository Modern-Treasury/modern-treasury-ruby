# typed: strong

module ModernTreasury
  module Models
    class InvoiceListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      def after_cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def after_cursor=(_)
      end

      sig { returns(T.nilable(String)) }
      def counterparty_id
      end

      sig { params(_: String).returns(String) }
      def counterparty_id=(_)
      end

      # An inclusive upper bound for searching due_date
      sig { returns(T.nilable(Date)) }
      def due_date_end
      end

      sig { params(_: Date).returns(Date) }
      def due_date_end=(_)
      end

      # An inclusive lower bound for searching due_date
      sig { returns(T.nilable(Date)) }
      def due_date_start
      end

      sig { params(_: Date).returns(Date) }
      def due_date_start=(_)
      end

      sig { returns(T.nilable(String)) }
      def expected_payment_id
      end

      sig { params(_: String).returns(String) }
      def expected_payment_id=(_)
      end

      # For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      # A unique record number assigned to each invoice that is issued.
      sig { returns(T.nilable(String)) }
      def number
      end

      sig { params(_: String).returns(String) }
      def number=(_)
      end

      sig { returns(T.nilable(String)) }
      def originating_account_id
      end

      sig { params(_: String).returns(String) }
      def originating_account_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def payment_order_id
      end

      sig { params(_: String).returns(String) }
      def payment_order_id=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def per_page
      end

      sig { params(_: Integer).returns(Integer) }
      def per_page=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::InvoiceListParams::Status::OrSymbol)) }
      def status
      end

      sig do
        params(_: ModernTreasury::Models::InvoiceListParams::Status::OrSymbol)
          .returns(ModernTreasury::Models::InvoiceListParams::Status::OrSymbol)
      end
      def status=(_)
      end

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
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
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

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::InvoiceListParams::Status::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
