# typed: strong

module ModernTreasury
  module Models
    class BulkRequest < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      # One of create, or update.
      sig { returns(ModernTreasury::BulkRequest::ActionType::TaggedSymbol) }
      attr_accessor :action_type

      sig { returns(Time) }
      attr_accessor :created_at

      # Total number of failed bulk results so far for this request
      sig { returns(Integer) }
      attr_accessor :failed_result_count

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :object

      # One of payment_order, expected_payment, or ledger_transaction.
      sig { returns(ModernTreasury::BulkRequest::ResourceType::TaggedSymbol) }
      attr_accessor :resource_type

      # One of pending, processing, or completed.
      sig { returns(ModernTreasury::BulkRequest::Status::TaggedSymbol) }
      attr_accessor :status

      # Total number of successful bulk results so far for this request
      sig { returns(Integer) }
      attr_accessor :success_result_count

      # Total number of items in the `resources` array. Once a bulk request is
      # completed, `success_result_count` + `failed_result_count` will be equal to
      # `total_result_count`.
      sig { returns(Integer) }
      attr_accessor :total_resource_count

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          action_type: ModernTreasury::BulkRequest::ActionType::OrSymbol,
          created_at: Time,
          failed_result_count: Integer,
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          resource_type: ModernTreasury::BulkRequest::ResourceType::OrSymbol,
          status: ModernTreasury::BulkRequest::Status::OrSymbol,
          success_result_count: Integer,
          total_resource_count: Integer,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # One of create, or update.
        action_type:,
        created_at:,
        # Total number of failed bulk results so far for this request
        failed_result_count:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata:,
        object:,
        # One of payment_order, expected_payment, or ledger_transaction.
        resource_type:,
        # One of pending, processing, or completed.
        status:,
        # Total number of successful bulk results so far for this request
        success_result_count:,
        # Total number of items in the `resources` array. Once a bulk request is
        # completed, `success_result_count` + `failed_result_count` will be equal to
        # `total_result_count`.
        total_resource_count:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            action_type: ModernTreasury::BulkRequest::ActionType::TaggedSymbol,
            created_at: Time,
            failed_result_count: Integer,
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            object: String,
            resource_type:
              ModernTreasury::BulkRequest::ResourceType::TaggedSymbol,
            status: ModernTreasury::BulkRequest::Status::TaggedSymbol,
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
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::BulkRequest::ActionType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATE =
          T.let(:create, ModernTreasury::BulkRequest::ActionType::TaggedSymbol)
        UPDATE =
          T.let(:update, ModernTreasury::BulkRequest::ActionType::TaggedSymbol)
        DELETE =
          T.let(:delete, ModernTreasury::BulkRequest::ActionType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[ModernTreasury::BulkRequest::ActionType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # One of payment_order, expected_payment, or ledger_transaction.
      module ResourceType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::BulkRequest::ResourceType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAYMENT_ORDER =
          T.let(
            :payment_order,
            ModernTreasury::BulkRequest::ResourceType::TaggedSymbol
          )
        LEDGER_ACCOUNT =
          T.let(
            :ledger_account,
            ModernTreasury::BulkRequest::ResourceType::TaggedSymbol
          )
        LEDGER_TRANSACTION =
          T.let(
            :ledger_transaction,
            ModernTreasury::BulkRequest::ResourceType::TaggedSymbol
          )
        EXPECTED_PAYMENT =
          T.let(
            :expected_payment,
            ModernTreasury::BulkRequest::ResourceType::TaggedSymbol
          )
        TRANSACTION =
          T.let(
            :transaction,
            ModernTreasury::BulkRequest::ResourceType::TaggedSymbol
          )
        ENTITY_LINK =
          T.let(
            :entity_link,
            ModernTreasury::BulkRequest::ResourceType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::BulkRequest::ResourceType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # One of pending, processing, or completed.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::BulkRequest::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(:pending, ModernTreasury::BulkRequest::Status::TaggedSymbol)
        PROCESSING =
          T.let(:processing, ModernTreasury::BulkRequest::Status::TaggedSymbol)
        COMPLETED =
          T.let(:completed, ModernTreasury::BulkRequest::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[ModernTreasury::BulkRequest::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
