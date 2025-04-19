# typed: strong

module ModernTreasury
  module Models
    class BulkRequest < ModernTreasury::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :id

      # One of create, or update.
      sig { returns(ModernTreasury::Models::BulkRequest::ActionType::TaggedSymbol) }
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
      sig { returns(ModernTreasury::Models::BulkRequest::ResourceType::TaggedSymbol) }
      attr_accessor :resource_type

      # One of pending, processing, or completed.
      sig { returns(ModernTreasury::Models::BulkRequest::Status::TaggedSymbol) }
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
          action_type: ModernTreasury::Models::BulkRequest::ActionType::OrSymbol,
          created_at: Time,
          failed_result_count: Integer,
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          resource_type: ModernTreasury::Models::BulkRequest::ResourceType::OrSymbol,
          status: ModernTreasury::Models::BulkRequest::Status::OrSymbol,
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
      ); end
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
      def to_hash; end

      # One of create, or update.
      module ActionType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::BulkRequest::ActionType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATE = T.let(:create, ModernTreasury::Models::BulkRequest::ActionType::TaggedSymbol)
        UPDATE = T.let(:update, ModernTreasury::Models::BulkRequest::ActionType::TaggedSymbol)
        DELETE = T.let(:delete, ModernTreasury::Models::BulkRequest::ActionType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::BulkRequest::ActionType::TaggedSymbol]) }
        def self.values; end
      end

      # One of payment_order, expected_payment, or ledger_transaction.
      module ResourceType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::BulkRequest::ResourceType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAYMENT_ORDER = T.let(:payment_order, ModernTreasury::Models::BulkRequest::ResourceType::TaggedSymbol)
        LEDGER_ACCOUNT = T.let(:ledger_account, ModernTreasury::Models::BulkRequest::ResourceType::TaggedSymbol)
        LEDGER_TRANSACTION =
          T.let(:ledger_transaction, ModernTreasury::Models::BulkRequest::ResourceType::TaggedSymbol)
        EXPECTED_PAYMENT =
          T.let(:expected_payment, ModernTreasury::Models::BulkRequest::ResourceType::TaggedSymbol)
        TRANSACTION = T.let(:transaction, ModernTreasury::Models::BulkRequest::ResourceType::TaggedSymbol)
        ENTITY_LINK = T.let(:entity_link, ModernTreasury::Models::BulkRequest::ResourceType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::BulkRequest::ResourceType::TaggedSymbol]) }
        def self.values; end
      end

      # One of pending, processing, or completed.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::BulkRequest::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING = T.let(:pending, ModernTreasury::Models::BulkRequest::Status::TaggedSymbol)
        PROCESSING = T.let(:processing, ModernTreasury::Models::BulkRequest::Status::TaggedSymbol)
        COMPLETED = T.let(:completed, ModernTreasury::Models::BulkRequest::Status::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::BulkRequest::Status::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
