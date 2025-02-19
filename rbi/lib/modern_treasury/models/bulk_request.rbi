# typed: strong

module ModernTreasury
  module Models
    class BulkRequest < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Symbol) }
      def action_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def action_type=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(Integer) }
      def failed_result_count
      end

      sig { params(_: Integer).returns(Integer) }
      def failed_result_count=(_)
      end

      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      sig { returns(Symbol) }
      def resource_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def resource_type=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(Integer) }
      def success_result_count
      end

      sig { params(_: Integer).returns(Integer) }
      def success_result_count=(_)
      end

      sig { returns(Integer) }
      def total_resource_count
      end

      sig { params(_: Integer).returns(Integer) }
      def total_resource_count=(_)
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
          action_type: Symbol,
          created_at: Time,
          failed_result_count: Integer,
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          resource_type: Symbol,
          status: Symbol,
          success_result_count: Integer,
          total_resource_count: Integer,
          updated_at: Time
        )
          .void
      end
      def initialize(
        id:,
        action_type:,
        created_at:,
        failed_result_count:,
        live_mode:,
        metadata:,
        object:,
        resource_type:,
        status:,
        success_result_count:,
        total_resource_count:,
        updated_at:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              action_type: Symbol,
              created_at: Time,
              failed_result_count: Integer,
              live_mode: T::Boolean,
              metadata: T::Hash[Symbol, String],
              object: String,
              resource_type: Symbol,
              status: Symbol,
              success_result_count: Integer,
              total_resource_count: Integer,
              updated_at: Time
            }
          )
      end
      def to_hash
      end

      class ActionType < ModernTreasury::Enum
        abstract!

        CREATE = :create
        UPDATE = :update
        DELETE = :delete

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class ResourceType < ModernTreasury::Enum
        abstract!

        PAYMENT_ORDER = :payment_order
        LEDGER_TRANSACTION = :ledger_transaction
        TRANSACTION = :transaction
        EXPECTED_PAYMENT = :expected_payment

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Status < ModernTreasury::Enum
        abstract!

        PENDING = :pending
        PROCESSING = :processing
        COMPLETED = :completed

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
