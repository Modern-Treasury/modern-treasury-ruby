# typed: strong

module ModernTreasury
  module Models
    class BulkResultListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            after_cursor: T.nilable(String),
            entity_id: String,
            entity_type: Symbol,
            per_page: Integer,
            request_id: String,
            request_type: Symbol,
            status: Symbol
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(String)) }
      attr_reader :entity_id

      sig { params(entity_id: String).void }
      attr_writer :entity_id

      sig { returns(T.nilable(Symbol)) }
      attr_reader :entity_type

      sig { params(entity_type: Symbol).void }
      attr_writer :entity_type

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig { returns(T.nilable(String)) }
      attr_reader :request_id

      sig { params(request_id: String).void }
      attr_writer :request_id

      sig { returns(T.nilable(Symbol)) }
      attr_reader :request_type

      sig { params(request_type: Symbol).void }
      attr_writer :request_type

      sig { returns(T.nilable(Symbol)) }
      attr_reader :status

      sig { params(status: Symbol).void }
      attr_writer :status

      sig do
        params(
          after_cursor: T.nilable(String),
          entity_id: String,
          entity_type: Symbol,
          per_page: Integer,
          request_id: String,
          request_type: Symbol,
          status: Symbol,
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(
        after_cursor: nil,
        entity_id: nil,
        entity_type: nil,
        per_page: nil,
        request_id: nil,
        request_type: nil,
        status: nil,
        request_options: {}
      ); end

      sig { returns(ModernTreasury::Models::BulkResultListParams::Shape) }
      def to_h; end

      class EntityType < ModernTreasury::Enum
        abstract!

        PAYMENT_ORDER = :payment_order
        LEDGER_TRANSACTION = :ledger_transaction
        TRANSACTION = :transaction
        EXPECTED_PAYMENT = :expected_payment
        BULK_ERROR = :bulk_error

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end

      class RequestType < ModernTreasury::Enum
        abstract!

        BULK_REQUEST = :bulk_request

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end

      class Status < ModernTreasury::Enum
        abstract!

        PENDING = :pending
        SUCCESSFUL = :successful
        FAILED = :failed

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
