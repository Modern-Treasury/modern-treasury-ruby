# frozen_string_literal: true

module ModernTreasury
  module Models
    class BulkResultListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String

      # @!attribute entity_id
      #   Unique identifier for the result entity object.
      #
      #   @return [String]
      optional :entity_id, String

      # @!attribute entity_type
      #   The type of the request that created this result. bulk_request is the only supported `request_type`
      #
      #   @return [Symbol, ModernTreasury::Models::BulkResultListParams::EntityType]
      optional :entity_type, enum: -> { ModernTreasury::Models::BulkResultListParams::EntityType }

      # @!attribute per_page
      #
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute request_id
      #   Unique identifier for the request that created this bulk result. This is the ID of the bulk request when `request_type` is bulk_request
      #
      #   @return [String]
      optional :request_id, String

      # @!attribute request_type
      #   The type of the request that created this result. bulk_request is the only supported `request_type`
      #
      #   @return [Symbol, ModernTreasury::Models::BulkResultListParams::RequestType]
      optional :request_type, enum: -> { ModernTreasury::Models::BulkResultListParams::RequestType }

      # @!attribute status
      #   One of successful or failed.
      #
      #   @return [Symbol, ModernTreasury::Models::BulkResultListParams::Status]
      optional :status, enum: -> { ModernTreasury::Models::BulkResultListParams::Status }

      # @!parse
      #   # @param after_cursor [String, nil]
      #   #
      #   # @param entity_id [String] Unique identifier for the result entity object.
      #   #
      #   # @param entity_type [String] The type of the request that created this result. bulk_request is the only
      #   #   supported `request_type`
      #   #
      #   # @param per_page [Integer]
      #   #
      #   # @param request_id [String] Unique identifier for the request that created this bulk result. This is the ID
      #   #   of the bulk request when `request_type` is bulk_request
      #   #
      #   # @param request_type [String] The type of the request that created this result. bulk_request is the only
      #   #   supported `request_type`
      #   #
      #   # @param status [String] One of successful or failed.
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

      # The type of the request that created this result. bulk_request is the only supported `request_type`
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

      # The type of the request that created this result. bulk_request is the only supported `request_type`
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
