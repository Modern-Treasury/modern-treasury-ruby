# typed: strong

module ModernTreasury
  module Models
    class BulkResult < ModernTreasury::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig do
        returns(
          T.any(
            ModernTreasury::Models::PaymentOrder,
            ModernTreasury::Models::ExpectedPayment,
            ModernTreasury::Models::LedgerTransaction,
            ModernTreasury::Models::Transaction,
            ModernTreasury::Models::BulkResult::Entity::BulkError
          )
        )
      end
      attr_accessor :entity

      sig { returns(String) }
      attr_accessor :entity_id

      sig { returns(Symbol) }
      attr_accessor :entity_type

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      sig { returns(String) }
      attr_accessor :request_id

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :request_params

      sig { returns(Symbol) }
      attr_accessor :request_type

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          created_at: Time,
          entity: T.any(
            ModernTreasury::Models::PaymentOrder,
            ModernTreasury::Models::ExpectedPayment,
            ModernTreasury::Models::LedgerTransaction,
            ModernTreasury::Models::Transaction,
            ModernTreasury::Models::BulkResult::Entity::BulkError
          ),
          entity_id: String,
          entity_type: Symbol,
          live_mode: T::Boolean,
          object: String,
          request_id: String,
          request_params: T.nilable(T::Hash[Symbol, String]),
          request_type: Symbol,
          status: Symbol,
          updated_at: Time
        ).void
      end
      def initialize(
        id:,
        created_at:,
        entity:,
        entity_id:,
        entity_type:,
        live_mode:,
        object:,
        request_id:,
        request_params:,
        request_type:,
        status:,
        updated_at:
      ); end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            entity: T.any(
              ModernTreasury::Models::PaymentOrder,
              ModernTreasury::Models::ExpectedPayment,
              ModernTreasury::Models::LedgerTransaction,
              ModernTreasury::Models::Transaction,
              ModernTreasury::Models::BulkResult::Entity::BulkError
            ),
            entity_id: String,
            entity_type: Symbol,
            live_mode: T::Boolean,
            object: String,
            request_id: String,
            request_params: T.nilable(T::Hash[Symbol, String]),
            request_type: Symbol,
            status: Symbol,
            updated_at: Time
          }
        )
      end
      def to_hash; end

      class Entity < ModernTreasury::Union
        abstract!

        class BulkError < ModernTreasury::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(T::Boolean) }
          attr_accessor :live_mode

          sig { returns(String) }
          attr_accessor :object

          sig { returns(T::Array[ModernTreasury::Models::BulkResult::Entity::BulkError::RequestError]) }
          attr_accessor :request_errors

          sig { returns(Time) }
          attr_accessor :updated_at

          sig do
            params(
              id: String,
              created_at: Time,
              live_mode: T::Boolean,
              object: String,
              request_errors: T::Array[ModernTreasury::Models::BulkResult::Entity::BulkError::RequestError],
              updated_at: Time
            ).void
          end
          def initialize(id:, created_at:, live_mode:, object:, request_errors:, updated_at:); end

          sig do
            override.returns(
              {
                id: String,
                created_at: Time,
                live_mode: T::Boolean,
                object: String,
                request_errors: T::Array[ModernTreasury::Models::BulkResult::Entity::BulkError::RequestError],
                updated_at: Time
              }
            )
          end
          def to_hash; end

          class RequestError < ModernTreasury::BaseModel
            sig { returns(T.nilable(String)) }
            attr_reader :code

            sig { params(code: String).void }
            attr_writer :code

            sig { returns(T.nilable(String)) }
            attr_reader :message

            sig { params(message: String).void }
            attr_writer :message

            sig { returns(T.nilable(String)) }
            attr_reader :parameter

            sig { params(parameter: String).void }
            attr_writer :parameter

            sig { params(code: String, message: String, parameter: String).void }
            def initialize(code: nil, message: nil, parameter: nil); end

            sig { override.returns({code: String, message: String, parameter: String}) }
            def to_hash; end
          end
        end

        sig do
          override.returns(
            [
              [NilClass, ModernTreasury::Models::PaymentOrder],
              [NilClass, ModernTreasury::Models::ExpectedPayment],
              [NilClass, ModernTreasury::Models::LedgerTransaction],
              [NilClass, ModernTreasury::Models::Transaction],
              [NilClass, ModernTreasury::Models::BulkResult::Entity::BulkError]
            ]
          )
        end
        private_class_method def self.variants; end
      end

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
