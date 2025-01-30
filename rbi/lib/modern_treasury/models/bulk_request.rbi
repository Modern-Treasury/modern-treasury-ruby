# typed: strong

module ModernTreasury
  module Models
    class BulkRequest < ModernTreasury::BaseModel
      Shape = T.type_alias do
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
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Symbol) }
      attr_accessor :action_type

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Integer) }
      attr_accessor :failed_result_count

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :object

      sig { returns(Symbol) }
      attr_accessor :resource_type

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(Integer) }
      attr_accessor :success_result_count

      sig { returns(Integer) }
      attr_accessor :total_resource_count

      sig { returns(Time) }
      attr_accessor :updated_at

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
        ).void
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
      ); end

      sig { returns(ModernTreasury::Models::BulkRequest::Shape) }
      def to_h; end

      class ActionType < ModernTreasury::Enum
        abstract!

        CREATE = :create
        UPDATE = :update
        DELETE = :delete

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class ResourceType < ModernTreasury::Enum
        abstract!

        PAYMENT_ORDER = :payment_order
        LEDGER_TRANSACTION = :ledger_transaction
        TRANSACTION = :transaction
        EXPECTED_PAYMENT = :expected_payment

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class Status < ModernTreasury::Enum
        abstract!

        PENDING = :pending
        PROCESSING = :processing
        COMPLETED = :completed

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
