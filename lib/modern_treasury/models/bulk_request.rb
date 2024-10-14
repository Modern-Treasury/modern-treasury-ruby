# frozen_string_literal: true

module ModernTreasury
  module Models
    class BulkRequest < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] action_type
      #   One of create, or update.
      #   @return [Symbol, ModernTreasury::Models::BulkRequest::ActionType]
      required :action_type, enum: -> { ModernTreasury::Models::BulkRequest::ActionType }

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] failed_result_count
      #   Total number of failed bulk results so far for this request
      #   @return [Integer]
      required :failed_result_count, Integer

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      required :metadata, Hash

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] resource_type
      #   One of payment_order, expected_payment, or ledger_transaction.
      #   @return [Symbol, ModernTreasury::Models::BulkRequest::ResourceType]
      required :resource_type, enum: -> { ModernTreasury::Models::BulkRequest::ResourceType }

      # @!attribute [rw] status
      #   One of pending, processing, or completed.
      #   @return [Symbol, ModernTreasury::Models::BulkRequest::Status]
      required :status, enum: -> { ModernTreasury::Models::BulkRequest::Status }

      # @!attribute [rw] success_result_count
      #   Total number of successful bulk results so far for this request
      #   @return [Integer]
      required :success_result_count, Integer

      # @!attribute [rw] total_resource_count
      #   Total number of items in the `resources` array. Once a bulk request is completed, `success_result_count` + `failed_result_count` will be equal to `total_result_count`.
      #   @return [Integer]
      required :total_resource_count, Integer

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      # One of create, or update.
      class ActionType < ModernTreasury::Enum
        CREATE = :create
        UPDATE = :update
        DELETE = :delete
      end

      # One of payment_order, expected_payment, or ledger_transaction.
      class ResourceType < ModernTreasury::Enum
        PAYMENT_ORDER = :payment_order
        LEDGER_TRANSACTION = :ledger_transaction
        TRANSACTION = :transaction
        EXPECTED_PAYMENT = :expected_payment
      end

      # One of pending, processing, or completed.
      class Status < ModernTreasury::Enum
        PENDING = :pending
        PROCESSING = :processing
        COMPLETED = :completed
      end

      # Create a new instance of BulkRequest from a Hash of raw data.
      #
      # @overload initialize(id: nil, action_type: nil, created_at: nil, failed_result_count: nil, live_mode: nil, metadata: nil, object: nil, resource_type: nil, status: nil, success_result_count: nil, total_resource_count: nil, updated_at: nil)
      # @param id [String]
      # @param action_type [String] One of create, or update.
      # @param created_at [String]
      # @param failed_result_count [Integer] Total number of failed bulk results so far for this request
      # @param live_mode [Hash] This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      # @param metadata [Hash] Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @param object [String]
      # @param resource_type [String] One of payment_order, expected_payment, or ledger_transaction.
      # @param status [String] One of pending, processing, or completed.
      # @param success_result_count [Integer] Total number of successful bulk results so far for this request
      # @param total_resource_count [Integer] Total number of items in the `resources` array. Once a bulk request is
      #   completed, `success_result_count` + `failed_result_count` will be equal to
      #   `total_result_count`.
      # @param updated_at [String]
      def initialize(data = {})
        super
      end
    end
  end
end
