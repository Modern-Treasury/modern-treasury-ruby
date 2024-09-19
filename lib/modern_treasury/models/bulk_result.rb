# frozen_string_literal: true

module ModernTreasury
  module Models
    class BulkResult < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] created_at
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] entity
      #   An object with type as indicated by `entity_type`. This is the result object that is generated by performing the requested action on the provided input `request_params`.
      #   @return [ModernTreasury::Models::BulkResult::Entity::UnnamedTypeWithunionParent0|ModernTreasury::Models::ExpectedPayment|ModernTreasury::Models::LedgerTransaction|ModernTreasury::Models::PaymentOrder|ModernTreasury::Models::Transaction]
      required :entity, ModernTreasury::Unknown

      # @!attribute [rw] entity_id
      #   Unique identifier for the result entity object.
      #   @return [String]
      required :entity_id, String

      # @!attribute [rw] entity_type
      #   The type of the result entity object. For a successful bulk result, this is the same as the `resource_type` of the bulk request. For a failed bulk result, this is always bulk_error
      #   One of the constants defined in {ModernTreasury::Models::BulkResult::EntityType}
      #   @return [Symbol]
      required :entity_type, enum: -> { ModernTreasury::Models::BulkResult::EntityType }

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] request_id
      #   Unique identifier for the request that created this bulk result. This is the ID of the bulk request when `request_type` is bulk_request
      #   @return [String]
      required :request_id, String

      # @!attribute [rw] request_params
      #   An optional object that contains the provided input params for the request that created this result. This is an item in the `resources` array for the bulk_request
      #   @return [Hash]
      required :request_params, Hash

      # @!attribute [rw] request_type
      #   The type of the request that created this result. bulk_request is the only supported `request_type`
      #   One of the constants defined in {ModernTreasury::Models::BulkResult::RequestType}
      #   @return [Symbol]
      required :request_type, enum: -> { ModernTreasury::Models::BulkResult::RequestType }

      # @!attribute [rw] status
      #   One of successful or failed.
      #   One of the constants defined in {ModernTreasury::Models::BulkResult::Status}
      #   @return [Symbol]
      required :status, enum: -> { ModernTreasury::Models::BulkResult::Status }

      # @!attribute [rw] updated_at
      #   @return [String]
      required :updated_at, String

      # The type of the result entity object. For a successful bulk result, this is the same as the `resource_type` of the bulk request. For a failed bulk result, this is always bulk_error
      class EntityType < ModernTreasury::Enum
        PAYMENT_ORDER = :payment_order
        LEDGER_TRANSACTION = :ledger_transaction
        TRANSACTION = :transaction
        EXPECTED_PAYMENT = :expected_payment
        BULK_ERROR = :bulk_error
      end

      # The type of the request that created this result. bulk_request is the only supported `request_type`
      class RequestType < ModernTreasury::Enum
        BULK_REQUEST = :bulk_request
      end

      # One of successful or failed.
      class Status < ModernTreasury::Enum
        PENDING = :pending
        SUCCESSFUL = :successful
        FAILED = :failed
      end
    end
  end
end
