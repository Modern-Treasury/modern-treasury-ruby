# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::BulkRequests#list
    class BulkRequestListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute action_type
      #   One of create, or update.
      #
      #   @return [Symbol, ModernTreasury::Models::BulkRequestListParams::ActionType, nil]
      optional :action_type, enum: -> { ModernTreasury::BulkRequestListParams::ActionType }

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!attribute resource_type
      #   One of payment_order, expected_payment, or ledger_transaction.
      #
      #   @return [Symbol, ModernTreasury::Models::BulkRequestListParams::ResourceType, nil]
      optional :resource_type, enum: -> { ModernTreasury::BulkRequestListParams::ResourceType }

      # @!attribute status
      #   One of pending, processing, or completed.
      #
      #   @return [Symbol, ModernTreasury::Models::BulkRequestListParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::BulkRequestListParams::Status }

      # @!method initialize(action_type: nil, after_cursor: nil, metadata: nil, per_page: nil, resource_type: nil, status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::BulkRequestListParams} for more details.
      #
      #   @param action_type [Symbol, ModernTreasury::Models::BulkRequestListParams::ActionType] One of create, or update.
      #
      #   @param after_cursor [String, nil]
      #
      #   @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #
      #   @param per_page [Integer]
      #
      #   @param resource_type [Symbol, ModernTreasury::Models::BulkRequestListParams::ResourceType] One of payment_order, expected_payment, or ledger_transaction.
      #
      #   @param status [Symbol, ModernTreasury::Models::BulkRequestListParams::Status] One of pending, processing, or completed.
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # One of create, or update.
      module ActionType
        extend ModernTreasury::Internal::Type::Enum

        CREATE = :create
        UPDATE = :update
        DELETE = :delete

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # One of payment_order, expected_payment, or ledger_transaction.
      module ResourceType
        extend ModernTreasury::Internal::Type::Enum

        PAYMENT_ORDER = :payment_order
        LEDGER_ACCOUNT = :ledger_account
        LEDGER_TRANSACTION = :ledger_transaction
        EXPECTED_PAYMENT = :expected_payment
        TRANSACTION = :transaction
        ENTITY_LINK = :entity_link

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # One of pending, processing, or completed.
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
