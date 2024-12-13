# frozen_string_literal: true

module ModernTreasury
  module Models
    class BulkResult < ModernTreasury::BaseModel
      # @!attribute id
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute entity
      #   An object with type as indicated by `entity_type`. This is the result object that is generated by performing the requested action on the provided input `request_params`.
      #   @return [ModernTreasury::Models::BulkResult::Entity::UnnamedTypeWithunionParent9, ModernTreasury::Models::ExpectedPayment, ModernTreasury::Models::LedgerTransaction, ModernTreasury::Models::PaymentOrder, ModernTreasury::Models::Transaction]
      required :entity, ModernTreasury::Unknown

      # @!attribute entity_id
      #   Unique identifier for the result entity object.
      #   @return [String]
      required :entity_id, String

      # @!attribute entity_type
      #   The type of the result entity object. For a successful bulk result, this is the same as the `resource_type` of the bulk request. For a failed bulk result, this is always bulk_error
      #   @return [Symbol, ModernTreasury::Models::BulkResult::EntityType]
      required :entity_type, enum: -> { ModernTreasury::Models::BulkResult::EntityType }

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute object
      #   @return [String]
      required :object, String

      # @!attribute request_id
      #   Unique identifier for the request that created this bulk result. This is the ID of the bulk request when `request_type` is bulk_request
      #   @return [String]
      required :request_id, String

      # @!attribute request_params
      #   An optional object that contains the provided input params for the request that created this result. This is an item in the `resources` array for the bulk_request
      #   @return [Hash]
      required :request_params, Hash

      # @!attribute request_type
      #   The type of the request that created this result. bulk_request is the only supported `request_type`
      #   @return [Symbol, ModernTreasury::Models::BulkResult::RequestType]
      required :request_type, enum: -> { ModernTreasury::Models::BulkResult::RequestType }

      # @!attribute status
      #   One of successful or failed.
      #   @return [Symbol, ModernTreasury::Models::BulkResult::Status]
      required :status, enum: -> { ModernTreasury::Models::BulkResult::Status }

      # @!attribute updated_at
      #   @return [Time]
      required :updated_at, Time

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

      # @!parse
      #   # Create a new instance of BulkResult from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [String] :created_at
      #   #   @option data [Object] :entity An object with type as indicated by `entity_type`. This is the result object
      #   #     that is generated by performing the requested action on the provided input
      #   #     `request_params`.
      #   #   @option data [String] :entity_id Unique identifier for the result entity object.
      #   #   @option data [String] :entity_type The type of the result entity object. For a successful bulk result, this is the
      #   #     same as the `resource_type` of the bulk request. For a failed bulk result, this
      #   #     is always bulk_error
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [String] :object
      #   #   @option data [String] :request_id Unique identifier for the request that created this bulk result. This is the ID
      #   #     of the bulk request when `request_type` is bulk_request
      #   #   @option data [Hash] :request_params An optional object that contains the provided input params for the request that
      #   #     created this result. This is an item in the `resources` array for the
      #   #     bulk_request
      #   #   @option data [String] :request_type The type of the request that created this result. bulk_request is the only
      #   #     supported `request_type`
      #   #   @option data [String] :status One of successful or failed.
      #   #   @option data [String] :updated_at
      #   def initialize(data = {}) = super
    end
  end
end
