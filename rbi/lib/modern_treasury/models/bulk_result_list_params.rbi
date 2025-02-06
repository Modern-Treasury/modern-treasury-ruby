# typed: strong

module ModernTreasury
  module Models
    class BulkResultListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

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
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
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

      sig do
        override.returns(
          {
            after_cursor: T.nilable(String),
            entity_id: String,
            entity_type: Symbol,
            per_page: Integer,
            request_id: String,
            request_type: Symbol,
            status: Symbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash; end

      class EntityType < ModernTreasury::Enum
        abstract!

        PAYMENT_ORDER = :payment_order
        LEDGER_TRANSACTION = :ledger_transaction
        TRANSACTION = :transaction
        EXPECTED_PAYMENT = :expected_payment
        BULK_ERROR = :bulk_error

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class RequestType < ModernTreasury::Enum
        abstract!

        BULK_REQUEST = :bulk_request

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class Status < ModernTreasury::Enum
        abstract!

        PENDING = :pending
        SUCCESSFUL = :successful
        FAILED = :failed

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
