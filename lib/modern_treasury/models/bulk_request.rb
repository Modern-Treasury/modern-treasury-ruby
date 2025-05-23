# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::BulkRequests#create
    class BulkRequest < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute action_type
      #   One of create, or update.
      #
      #   @return [Symbol, ModernTreasury::Models::BulkRequest::ActionType]
      required :action_type, enum: -> { ModernTreasury::BulkRequest::ActionType }

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
      #   This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute resource_type
      #   One of payment_order, expected_payment, or ledger_transaction.
      #
      #   @return [Symbol, ModernTreasury::Models::BulkRequest::ResourceType]
      required :resource_type, enum: -> { ModernTreasury::BulkRequest::ResourceType }

      # @!attribute status
      #   One of pending, processing, or completed.
      #
      #   @return [Symbol, ModernTreasury::Models::BulkRequest::Status]
      required :status, enum: -> { ModernTreasury::BulkRequest::Status }

      # @!attribute success_result_count
      #   Total number of successful bulk results so far for this request
      #
      #   @return [Integer]
      required :success_result_count, Integer

      # @!attribute total_resource_count
      #   Total number of items in the `resources` array. Once a bulk request is
      #   completed, `success_result_count` + `failed_result_count` will be equal to
      #   `total_result_count`.
      #
      #   @return [Integer]
      required :total_resource_count, Integer

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, action_type:, created_at:, failed_result_count:, live_mode:, metadata:, object:, resource_type:, status:, success_result_count:, total_resource_count:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::BulkRequest} for more details.
      #
      #   @param id [String]
      #
      #   @param action_type [Symbol, ModernTreasury::Models::BulkRequest::ActionType] One of create, or update.
      #
      #   @param created_at [Time]
      #
      #   @param failed_result_count [Integer] Total number of failed bulk results so far for this request
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param object [String]
      #
      #   @param resource_type [Symbol, ModernTreasury::Models::BulkRequest::ResourceType] One of payment_order, expected_payment, or ledger_transaction.
      #
      #   @param status [Symbol, ModernTreasury::Models::BulkRequest::Status] One of pending, processing, or completed.
      #
      #   @param success_result_count [Integer] Total number of successful bulk results so far for this request
      #
      #   @param total_resource_count [Integer] Total number of items in the `resources` array. Once a bulk request is completed
      #
      #   @param updated_at [Time]

      # One of create, or update.
      #
      # @see ModernTreasury::Models::BulkRequest#action_type
      module ActionType
        extend ModernTreasury::Internal::Type::Enum

        CREATE = :create
        UPDATE = :update
        DELETE = :delete

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # One of payment_order, expected_payment, or ledger_transaction.
      #
      # @see ModernTreasury::Models::BulkRequest#resource_type
      module ResourceType
        extend ModernTreasury::Internal::Type::Enum

        PAYMENT_ORDER = :payment_order
        LEDGER_ACCOUNT = :ledger_account
        LEDGER_TRANSACTION = :ledger_transaction
        EXPECTED_PAYMENT = :expected_payment
        TRANSACTION = :transaction
        TRANSACTION_LINE_ITEM = :transaction_line_item
        ENTITY_LINK = :entity_link

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # One of pending, processing, or completed.
      #
      # @see ModernTreasury::Models::BulkRequest#status
      module Status
        extend ModernTreasury::Internal::Type::Enum

        PENDING = :pending
        PROCESSING = :processing
        COMPLETED = :completed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
