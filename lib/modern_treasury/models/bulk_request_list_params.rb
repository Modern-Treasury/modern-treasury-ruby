# frozen_string_literal: true

module ModernTreasury
  module Models
    class BulkRequestListParams < ModernTreasury::BaseModel
      # @!attribute [rw] action_type
      #   One of create, or update.
      #   @return [Symbol, ModernTreasury::Models::BulkRequestListParams::ActionType]
      optional :action_type, enum: -> { ModernTreasury::Models::BulkRequestListParams::ActionType }

      # @!attribute [rw] after_cursor
      #   @return [String]
      optional :after_cursor, String

      # @!attribute [rw] metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute [rw] per_page
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute [rw] resource_type
      #   One of payment_order, expected_payment, or ledger_transaction.
      #   @return [Symbol, ModernTreasury::Models::BulkRequestListParams::ResourceType]
      optional :resource_type, enum: -> { ModernTreasury::Models::BulkRequestListParams::ResourceType }

      # @!attribute [rw] status
      #   One of pending, processing, or completed.
      #   @return [Symbol, ModernTreasury::Models::BulkRequestListParams::Status]
      optional :status, enum: -> { ModernTreasury::Models::BulkRequestListParams::Status }

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
    end
  end
end
