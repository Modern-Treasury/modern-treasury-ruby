# frozen_string_literal: true

module ModernTreasury
  module Models
    class BulkResultListParams < ModernTreasury::BaseModel
      # @!attribute [rw] after_cursor
      #   @return [String]
      optional :after_cursor, String

      # @!attribute [rw] entity_id
      #   Unique identifier for the result entity object.
      #   @return [String]
      optional :entity_id, String

      # @!attribute [rw] entity_type
      #   The type of the request that created this result. bulk_request is the only supported `request_type`
      #   @return [Symbol, ModernTreasury::Models::BulkResultListParams::EntityType]
      optional :entity_type, enum: -> { ModernTreasury::Models::BulkResultListParams::EntityType }

      # @!attribute [rw] per_page
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute [rw] request_id
      #   Unique identifier for the request that created this bulk result. This is the ID of the bulk request when `request_type` is bulk_request
      #   @return [String]
      optional :request_id, String

      # @!attribute [rw] request_type
      #   The type of the request that created this result. bulk_request is the only supported `request_type`
      #   @return [Symbol, ModernTreasury::Models::BulkResultListParams::RequestType]
      optional :request_type, enum: -> { ModernTreasury::Models::BulkResultListParams::RequestType }

      # @!attribute [rw] status
      #   One of successful or failed.
      #   @return [Symbol, ModernTreasury::Models::BulkResultListParams::Status]
      optional :status, enum: -> { ModernTreasury::Models::BulkResultListParams::Status }

      # The type of the request that created this result. bulk_request is the only supported `request_type`
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
