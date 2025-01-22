# frozen_string_literal: true

module ModernTreasury
  module Models
    class BulkResultListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute [r] entity_id
      #   Unique identifier for the result entity object.
      #
      #   @return [String, nil]
      optional :entity_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :entity_id

      # @!attribute [r] entity_type
      #   The type of the request that created this result. bulk_request is the only
      #     supported `request_type`
      #
      #   @return [Symbol, ModernTreasury::Models::BulkResultListParams::EntityType, nil]
      optional :entity_type, enum: -> { ModernTreasury::Models::BulkResultListParams::EntityType }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::BulkResultListParams::EntityType]
      #   attr_writer :entity_type

      # @!attribute [r] per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :per_page

      # @!attribute [r] request_id
      #   Unique identifier for the request that created this bulk result. This is the ID
      #     of the bulk request when `request_type` is bulk_request
      #
      #   @return [String, nil]
      optional :request_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :request_id

      # @!attribute [r] request_type
      #   The type of the request that created this result. bulk_request is the only
      #     supported `request_type`
      #
      #   @return [Symbol, ModernTreasury::Models::BulkResultListParams::RequestType, nil]
      optional :request_type, enum: -> { ModernTreasury::Models::BulkResultListParams::RequestType }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::BulkResultListParams::RequestType]
      #   attr_writer :request_type

      # @!attribute [r] status
      #   One of successful or failed.
      #
      #   @return [Symbol, ModernTreasury::Models::BulkResultListParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::Models::BulkResultListParams::Status }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::BulkResultListParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param after_cursor [String, nil]
      #   # @param entity_id [String]
      #   # @param entity_type [String]
      #   # @param per_page [Integer]
      #   # @param request_id [String]
      #   # @param request_type [String]
      #   # @param status [String]
      #   #
      #   def initialize(
      #     after_cursor: nil,
      #     entity_id: nil,
      #     entity_type: nil,
      #     per_page: nil,
      #     request_id: nil,
      #     request_type: nil,
      #     status: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # The type of the request that created this result. bulk_request is the only
      #   supported `request_type`
      #
      # @example
      # ```ruby
      # case entity_type
      # in :payment_order
      #   # ...
      # in :ledger_transaction
      #   # ...
      # in :transaction
      #   # ...
      # in :expected_payment
      #   # ...
      # in :bulk_error
      #   # ...
      # end
      # ```
      class EntityType < ModernTreasury::Enum
        PAYMENT_ORDER = :payment_order
        LEDGER_TRANSACTION = :ledger_transaction
        TRANSACTION = :transaction
        EXPECTED_PAYMENT = :expected_payment
        BULK_ERROR = :bulk_error

        finalize!
      end

      # The type of the request that created this result. bulk_request is the only
      #   supported `request_type`
      #
      # @example
      # ```ruby
      # case request_type
      # in :bulk_request
      #   # ...
      # end
      # ```
      class RequestType < ModernTreasury::Enum
        BULK_REQUEST = :bulk_request

        finalize!
      end

      # One of successful or failed.
      #
      # @example
      # ```ruby
      # case status
      # in :pending
      #   # ...
      # in :successful
      #   # ...
      # in :failed
      #   # ...
      # end
      # ```
      class Status < ModernTreasury::Enum
        PENDING = :pending
        SUCCESSFUL = :successful
        FAILED = :failed

        finalize!
      end
    end
  end
end
