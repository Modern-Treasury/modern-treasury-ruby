# frozen_string_literal: true

module ModernTreasury
  module Models
    class BulkRequest < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute action_type
      #   One of create, or update.
      #
      #   @return [Symbol, ModernTreasury::Models::BulkRequest::ActionType]
      required :action_type, enum: -> { ModernTreasury::Models::BulkRequest::ActionType }

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute failed_result_count
      #   Total number of failed bulk results so far for this request
      #
      #   @return [Integer]
      required :failed_result_count, Integer

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash]
      required :metadata, Hash

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute resource_type
      #   One of payment_order, expected_payment, or ledger_transaction.
      #
      #   @return [Symbol, ModernTreasury::Models::BulkRequest::ResourceType]
      required :resource_type, enum: -> { ModernTreasury::Models::BulkRequest::ResourceType }

      # @!attribute status
      #   One of pending, processing, or completed.
      #
      #   @return [Symbol, ModernTreasury::Models::BulkRequest::Status]
      required :status, enum: -> { ModernTreasury::Models::BulkRequest::Status }

      # @!attribute success_result_count
      #   Total number of successful bulk results so far for this request
      #
      #   @return [Integer]
      required :success_result_count, Integer

      # @!attribute total_resource_count
      #   Total number of items in the `resources` array. Once a bulk request is completed, `success_result_count` + `failed_result_count` will be equal to `total_result_count`.
      #
      #   @return [Integer]
      required :total_resource_count, Integer

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param action_type [String] One of create, or update.
      #   #
      #   # @param created_at [String]
      #   #
      #   # @param failed_result_count [Integer] Total number of failed bulk results so far for this request
      #   #
      #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
      #   #   if it exists in the test environment.
      #   #
      #   # @param metadata [Hash] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   # @param object [String]
      #   #
      #   # @param resource_type [String] One of payment_order, expected_payment, or ledger_transaction.
      #   #
      #   # @param status [String] One of pending, processing, or completed.
      #   #
      #   # @param success_result_count [Integer] Total number of successful bulk results so far for this request
      #   #
      #   # @param total_resource_count [Integer] Total number of items in the `resources` array. Once a bulk request is
      #   #   completed, `success_result_count` + `failed_result_count` will be equal to
      #   #   `total_result_count`.
      #   #
      #   # @param updated_at [String]
      #   #
      #   def initialize(
      #     id:,
      #     action_type:,
      #     created_at:,
      #     failed_result_count:,
      #     live_mode:,
      #     metadata:,
      #     object:,
      #     resource_type:,
      #     status:,
      #     success_result_count:,
      #     total_resource_count:,
      #     updated_at:
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # One of create, or update.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :create
      #   # ...
      # in :update
      #   # ...
      # in :delete
      #   # ...
      # end
      # ```
      class ActionType < ModernTreasury::Enum
        CREATE = :create
        UPDATE = :update
        DELETE = :delete
      end

      # One of payment_order, expected_payment, or ledger_transaction.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :payment_order
      #   # ...
      # in :ledger_transaction
      #   # ...
      # in :transaction
      #   # ...
      # in :expected_payment
      #   # ...
      # end
      # ```
      class ResourceType < ModernTreasury::Enum
        PAYMENT_ORDER = :payment_order
        LEDGER_TRANSACTION = :ledger_transaction
        TRANSACTION = :transaction
        EXPECTED_PAYMENT = :expected_payment
      end

      # One of pending, processing, or completed.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :pending
      #   # ...
      # in :processing
      #   # ...
      # in :completed
      #   # ...
      # end
      # ```
      class Status < ModernTreasury::Enum
        PENDING = :pending
        PROCESSING = :processing
        COMPLETED = :completed
      end
    end
  end
end
