# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::BulkResults#list
    class BulkResultListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute entity_id
      #   Unique identifier for the result entity object.
      #
      #   @return [String, nil]
      optional :entity_id, String

      # @!attribute entity_type
      #   The type of the request that created this result. bulk_request is the only
      #   supported `request_type`
      #
      #   @return [Symbol, ModernTreasury::Models::BulkResultListParams::EntityType, nil]
      optional :entity_type, enum: -> { ModernTreasury::Models::BulkResultListParams::EntityType }

      # @!attribute per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!attribute request_id
      #   Unique identifier for the request that created this bulk result. This is the ID
      #   of the bulk request when `request_type` is bulk_request
      #
      #   @return [String, nil]
      optional :request_id, String

      # @!attribute request_type
      #   The type of the request that created this result. bulk_request is the only
      #   supported `request_type`
      #
      #   @return [Symbol, ModernTreasury::Models::BulkResultListParams::RequestType, nil]
      optional :request_type, enum: -> { ModernTreasury::Models::BulkResultListParams::RequestType }

      # @!attribute status
      #   One of successful or failed.
      #
      #   @return [Symbol, ModernTreasury::Models::BulkResultListParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::Models::BulkResultListParams::Status }

      # @!method initialize(after_cursor: nil, entity_id: nil, entity_type: nil, per_page: nil, request_id: nil, request_type: nil, status: nil, request_options: {})
      #   @param after_cursor [String, nil]
      #   @param entity_id [String]
      #   @param entity_type [Symbol, ModernTreasury::Models::BulkResultListParams::EntityType]
      #   @param per_page [Integer]
      #   @param request_id [String]
      #   @param request_type [Symbol, ModernTreasury::Models::BulkResultListParams::RequestType]
      #   @param status [Symbol, ModernTreasury::Models::BulkResultListParams::Status]
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # The type of the request that created this result. bulk_request is the only
      # supported `request_type`
      module EntityType
        extend ModernTreasury::Internal::Type::Enum

        PAYMENT_ORDER = :payment_order
        LEDGER_ACCOUNT = :ledger_account
        LEDGER_TRANSACTION = :ledger_transaction
        EXPECTED_PAYMENT = :expected_payment
        TRANSACTION = :transaction
        ENTITY_LINK = :entity_link
        BULK_ERROR = :bulk_error

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of the request that created this result. bulk_request is the only
      # supported `request_type`
      module RequestType
        extend ModernTreasury::Internal::Type::Enum

        BULK_REQUEST = :bulk_request

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # One of successful or failed.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        PENDING = :pending
        SUCCESSFUL = :successful
        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
