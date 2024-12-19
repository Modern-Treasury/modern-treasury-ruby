# frozen_string_literal: true

module ModernTreasury
  module Models
    class BulkRequestListParams < ModernTreasury::BaseModel
      # @!attribute action_type
      #   One of create, or update.
      #
      #   @return [Symbol, ModernTreasury::Models::BulkRequestListParams::ActionType]
      optional :action_type, enum: -> { ModernTreasury::Models::BulkRequestListParams::ActionType }

      # @!attribute after_cursor
      #
      #   @return [String]
      optional :after_cursor, String

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #
      #   @return [Hash{Symbol => String}]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!attribute per_page
      #
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute resource_type
      #   One of payment_order, expected_payment, or ledger_transaction.
      #
      #   @return [Symbol, ModernTreasury::Models::BulkRequestListParams::ResourceType]
      optional :resource_type, enum: -> { ModernTreasury::Models::BulkRequestListParams::ResourceType }

      # @!attribute status
      #   One of pending, processing, or completed.
      #
      #   @return [Symbol, ModernTreasury::Models::BulkRequestListParams::Status]
      optional :status, enum: -> { ModernTreasury::Models::BulkRequestListParams::Status }

      # @!parse
      #   # @param action_type [String, nil] One of create, or update.
      #   #
      #   # @param after_cursor [String, nil]
      #   #
      #   # @param metadata [Hash{Symbol => String}, nil] For example, if you want to query for records with metadata key `Type` and value
      #   #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   #   parameters.
      #   #
      #   # @param per_page [Integer, nil]
      #   #
      #   # @param resource_type [String, nil] One of payment_order, expected_payment, or ledger_transaction.
      #   #
      #   # @param status [String, nil] One of pending, processing, or completed.
      #   #
      #   def initialize(action_type: nil, after_cursor: nil, metadata: nil, per_page: nil, resource_type: nil, status: nil, **) = super

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
