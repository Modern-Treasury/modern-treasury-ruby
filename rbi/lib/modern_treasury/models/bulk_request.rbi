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

      # One of create, or update.
      sig { returns(ModernTreasury::Models::BulkRequest::ActionType::TaggedSymbol) }
      def action_type
      end

      sig do
        params(_: ModernTreasury::Models::BulkRequest::ActionType::TaggedSymbol)
          .returns(ModernTreasury::Models::BulkRequest::ActionType::TaggedSymbol)
      end
      def action_type=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # Total number of failed bulk results so far for this request
      sig { returns(Integer) }
      def failed_result_count
      end

      sig { params(_: Integer).returns(Integer) }
      def failed_result_count=(_)
      end

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
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

      # One of payment_order, expected_payment, or ledger_transaction.
      sig { returns(ModernTreasury::Models::BulkRequest::ResourceType::TaggedSymbol) }
      def resource_type
      end

      sig do
        params(_: ModernTreasury::Models::BulkRequest::ResourceType::TaggedSymbol)
          .returns(ModernTreasury::Models::BulkRequest::ResourceType::TaggedSymbol)
      end
      def resource_type=(_)
      end

      # One of pending, processing, or completed.
      sig { returns(ModernTreasury::Models::BulkRequest::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: ModernTreasury::Models::BulkRequest::Status::TaggedSymbol)
          .returns(ModernTreasury::Models::BulkRequest::Status::TaggedSymbol)
      end
      def status=(_)
      end

      # Total number of successful bulk results so far for this request
      sig { returns(Integer) }
      def success_result_count
      end

      sig { params(_: Integer).returns(Integer) }
      def success_result_count=(_)
      end

      # Total number of items in the `resources` array. Once a bulk request is
      #   completed, `success_result_count` + `failed_result_count` will be equal to
      #   `total_result_count`.
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
          action_type: ModernTreasury::Models::BulkRequest::ActionType::TaggedSymbol,
          created_at: Time,
          failed_result_count: Integer,
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          resource_type: ModernTreasury::Models::BulkRequest::ResourceType::TaggedSymbol,
          status: ModernTreasury::Models::BulkRequest::Status::TaggedSymbol,
          success_result_count: Integer,
          total_resource_count: Integer,
          updated_at: Time
        )
          .returns(T.attached_class)
      end
      def self.new(
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
              action_type: ModernTreasury::Models::BulkRequest::ActionType::TaggedSymbol,
              created_at: Time,
              failed_result_count: Integer,
              live_mode: T::Boolean,
              metadata: T::Hash[Symbol, String],
              object: String,
              resource_type: ModernTreasury::Models::BulkRequest::ResourceType::TaggedSymbol,
              status: ModernTreasury::Models::BulkRequest::Status::TaggedSymbol,
              success_result_count: Integer,
              total_resource_count: Integer,
              updated_at: Time
            }
          )
      end
      def to_hash
      end

      # One of create, or update.
      module ActionType
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::BulkRequest::ActionType) }
        OrSymbol = T.type_alias { T.any(Symbol, ModernTreasury::Models::BulkRequest::ActionType::TaggedSymbol) }

        CREATE = T.let(:create, ModernTreasury::Models::BulkRequest::ActionType::TaggedSymbol)
        UPDATE = T.let(:update, ModernTreasury::Models::BulkRequest::ActionType::TaggedSymbol)
        DELETE = T.let(:delete, ModernTreasury::Models::BulkRequest::ActionType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::BulkRequest::ActionType::TaggedSymbol]) }
          def values
          end
        end
      end

      # One of payment_order, expected_payment, or ledger_transaction.
      module ResourceType
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::BulkRequest::ResourceType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::BulkRequest::ResourceType::TaggedSymbol) }

        PAYMENT_ORDER = T.let(:payment_order, ModernTreasury::Models::BulkRequest::ResourceType::TaggedSymbol)
        LEDGER_TRANSACTION =
          T.let(:ledger_transaction, ModernTreasury::Models::BulkRequest::ResourceType::TaggedSymbol)
        TRANSACTION = T.let(:transaction, ModernTreasury::Models::BulkRequest::ResourceType::TaggedSymbol)
        EXPECTED_PAYMENT =
          T.let(:expected_payment, ModernTreasury::Models::BulkRequest::ResourceType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::BulkRequest::ResourceType::TaggedSymbol]) }
          def values
          end
        end
      end

      # One of pending, processing, or completed.
      module Status
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::BulkRequest::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, ModernTreasury::Models::BulkRequest::Status::TaggedSymbol) }

        PENDING = T.let(:pending, ModernTreasury::Models::BulkRequest::Status::TaggedSymbol)
        PROCESSING = T.let(:processing, ModernTreasury::Models::BulkRequest::Status::TaggedSymbol)
        COMPLETED = T.let(:completed, ModernTreasury::Models::BulkRequest::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::BulkRequest::Status::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
