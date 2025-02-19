# typed: strong

module ModernTreasury
  module Models
    class BulkResult < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

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
      def entity
      end

      sig do
        params(
          _: T.any(
            ModernTreasury::Models::PaymentOrder,
            ModernTreasury::Models::ExpectedPayment,
            ModernTreasury::Models::LedgerTransaction,
            ModernTreasury::Models::Transaction,
            ModernTreasury::Models::BulkResult::Entity::BulkError
          )
        )
          .returns(
            T.any(
              ModernTreasury::Models::PaymentOrder,
              ModernTreasury::Models::ExpectedPayment,
              ModernTreasury::Models::LedgerTransaction,
              ModernTreasury::Models::Transaction,
              ModernTreasury::Models::BulkResult::Entity::BulkError
            )
          )
      end
      def entity=(_)
      end

      sig { returns(String) }
      def entity_id
      end

      sig { params(_: String).returns(String) }
      def entity_id=(_)
      end

      sig { returns(Symbol) }
      def entity_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def entity_type=(_)
      end

      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      sig { returns(String) }
      def request_id
      end

      sig { params(_: String).returns(String) }
      def request_id=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def request_params
      end

      sig { params(_: T.nilable(T::Hash[Symbol, String])).returns(T.nilable(T::Hash[Symbol, String])) }
      def request_params=(_)
      end

      sig { returns(Symbol) }
      def request_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def request_type=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

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
        )
          .void
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
      )
      end

      sig do
        override
          .returns(
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
      def to_hash
      end

      class Entity < ModernTreasury::Union
        abstract!

        class BulkError < ModernTreasury::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Time) }
          def created_at
          end

          sig { params(_: Time).returns(Time) }
          def created_at=(_)
          end

          sig { returns(T::Boolean) }
          def live_mode
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def live_mode=(_)
          end

          sig { returns(String) }
          def object
          end

          sig { params(_: String).returns(String) }
          def object=(_)
          end

          sig { returns(T::Array[ModernTreasury::Models::BulkResult::Entity::BulkError::RequestError]) }
          def request_errors
          end

          sig do
            params(_: T::Array[ModernTreasury::Models::BulkResult::Entity::BulkError::RequestError])
              .returns(T::Array[ModernTreasury::Models::BulkResult::Entity::BulkError::RequestError])
          end
          def request_errors=(_)
          end

          sig { returns(Time) }
          def updated_at
          end

          sig { params(_: Time).returns(Time) }
          def updated_at=(_)
          end

          sig do
            params(
              id: String,
              created_at: Time,
              live_mode: T::Boolean,
              object: String,
              request_errors: T::Array[ModernTreasury::Models::BulkResult::Entity::BulkError::RequestError],
              updated_at: Time
            )
              .void
          end
          def initialize(id:, created_at:, live_mode:, object:, request_errors:, updated_at:)
          end

          sig do
            override
              .returns(
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
          def to_hash
          end

          class RequestError < ModernTreasury::BaseModel
            sig { returns(T.nilable(String)) }
            def code
            end

            sig { params(_: String).returns(String) }
            def code=(_)
            end

            sig { returns(T.nilable(String)) }
            def message
            end

            sig { params(_: String).returns(String) }
            def message=(_)
            end

            sig { returns(T.nilable(String)) }
            def parameter
            end

            sig { params(_: String).returns(String) }
            def parameter=(_)
            end

            sig { params(code: String, message: String, parameter: String).void }
            def initialize(code: nil, message: nil, parameter: nil)
            end

            sig { override.returns({code: String, message: String, parameter: String}) }
            def to_hash
            end
          end
        end

        sig do
          override
            .returns(
              [[NilClass, ModernTreasury::Models::PaymentOrder], [NilClass, ModernTreasury::Models::ExpectedPayment], [NilClass, ModernTreasury::Models::LedgerTransaction], [NilClass, ModernTreasury::Models::Transaction], [NilClass, ModernTreasury::Models::BulkResult::Entity::BulkError]]
            )
        end
        private_class_method def self.variants
        end
      end

      class EntityType < ModernTreasury::Enum
        abstract!

        PAYMENT_ORDER = :payment_order
        LEDGER_TRANSACTION = :ledger_transaction
        TRANSACTION = :transaction
        EXPECTED_PAYMENT = :expected_payment
        BULK_ERROR = :bulk_error

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class RequestType < ModernTreasury::Enum
        abstract!

        BULK_REQUEST = :bulk_request

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Status < ModernTreasury::Enum
        abstract!

        PENDING = :pending
        SUCCESSFUL = :successful
        FAILED = :failed

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
