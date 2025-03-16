# typed: strong

module ModernTreasury
  module Models
    class BulkResultListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      def after_cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def after_cursor=(_)
      end

      # Unique identifier for the result entity object.
      sig { returns(T.nilable(String)) }
      def entity_id
      end

      sig { params(_: String).returns(String) }
      def entity_id=(_)
      end

      # The type of the request that created this result. bulk_request is the only
      #   supported `request_type`
      sig { returns(T.nilable(Symbol)) }
      def entity_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def entity_type=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def per_page
      end

      sig { params(_: Integer).returns(Integer) }
      def per_page=(_)
      end

      # Unique identifier for the request that created this bulk result. This is the ID
      #   of the bulk request when `request_type` is bulk_request
      sig { returns(T.nilable(String)) }
      def request_id
      end

      sig { params(_: String).returns(String) }
      def request_id=(_)
      end

      # The type of the request that created this result. bulk_request is the only
      #   supported `request_type`
      sig { returns(T.nilable(Symbol)) }
      def request_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def request_type=(_)
      end

      # One of successful or failed.
      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

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
        )
          .returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        entity_id: nil,
        entity_type: nil,
        per_page: nil,
        request_id: nil,
        request_type: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
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
      def to_hash
      end

      # The type of the request that created this result. bulk_request is the only
      #   supported `request_type`
      class EntityType < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        PAYMENT_ORDER = :payment_order
        LEDGER_TRANSACTION = :ledger_transaction
        TRANSACTION = :transaction
        EXPECTED_PAYMENT = :expected_payment
        BULK_ERROR = :bulk_error
      end

      # The type of the request that created this result. bulk_request is the only
      #   supported `request_type`
      class RequestType < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        BULK_REQUEST = :bulk_request
      end

      # One of successful or failed.
      class Status < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        PENDING = :pending
        SUCCESSFUL = :successful
        FAILED = :failed
      end
    end
  end
end
