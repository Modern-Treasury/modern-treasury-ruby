# frozen_string_literal: true

module ModernTreasury
  module Models
    class BulkRequest < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] action_type
      #   One of create, or update.
      #   @return [Symbol]
      required :action_type, ModernTreasury::Enum.new(:create, :update)

      # @!attribute [rw] created_at
      #   @return [String]
      required :created_at, String

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
      #   @return [Symbol]
      required :resource_type,
               ModernTreasury::Enum.new(:payment_order, :ledger_transaction, :transaction, :expected_payment)

      # @!attribute [rw] status
      #   One of pending, processing, or completed.
      #   @return [Symbol]
      required :status, ModernTreasury::Enum.new(:pending, :processing, :completed)

      # @!attribute [rw] success_result_count
      #   Total number of successful bulk results so far for this request
      #   @return [Integer]
      required :success_result_count, Integer

      # @!attribute [rw] total_resource_count
      #   Total number of items in the `resources` array. Once a bulk request is completed, `success_result_count` + `failed_result_count` will be equal to `total_result_count`.
      #   @return [Integer]
      required :total_resource_count, Integer

      # @!attribute [rw] updated_at
      #   @return [String]
      required :updated_at, String
    end
  end
end
