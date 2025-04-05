# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::BulkResults#list
    class BulkResultListParams < ModernTreasury::Internal::Type::BaseModel
      # @!parse
      #   extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

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
      #   # @param entity_type [Symbol, ModernTreasury::Models::BulkResultListParams::EntityType]
      #   # @param per_page [Integer]
      #   # @param request_id [String]
      #   # @param request_type [Symbol, ModernTreasury::Models::BulkResultListParams::RequestType]
      #   # @param status [Symbol, ModernTreasury::Models::BulkResultListParams::Status]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     after_cursor: nil,
      #     entity_id: nil,
      #     entity_type: nil,
      #     per_page: nil,
      #     request_id: nil,
      #     request_type: nil,
      #     status: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void

      # The type of the request that created this result. bulk_request is the only
      #   supported `request_type`
      module EntityType
        extend ModernTreasury::Internal::Type::Enum

        PAYMENT_ORDER = :payment_order
        LEDGER_ACCOUNT = :ledger_account
        LEDGER_TRANSACTION = :ledger_transaction
        EXPECTED_PAYMENT = :expected_payment
        TRANSACTION = :transaction
        ENTITY_LINK = :entity_link
        BULK_ERROR = :bulk_error

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # The type of the request that created this result. bulk_request is the only
      #   supported `request_type`
      module RequestType
        extend ModernTreasury::Internal::Type::Enum

        BULK_REQUEST = :bulk_request

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # One of successful or failed.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        PENDING = :pending
        SUCCESSFUL = :successful
        FAILED = :failed

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
