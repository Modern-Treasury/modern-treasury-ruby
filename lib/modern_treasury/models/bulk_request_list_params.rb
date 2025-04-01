# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::BulkRequests#list
    class BulkRequestListParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute [r] action_type
      #   One of create, or update.
      #
      #   @return [Symbol, ModernTreasury::Models::BulkRequestListParams::ActionType, nil]
      optional :action_type, enum: -> { ModernTreasury::Models::BulkRequestListParams::ActionType }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::BulkRequestListParams::ActionType]
      #   attr_writer :action_type

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute [r] metadata
      #   For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!attribute [r] per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :per_page

      # @!attribute [r] resource_type
      #   One of payment_order, expected_payment, or ledger_transaction.
      #
      #   @return [Symbol, ModernTreasury::Models::BulkRequestListParams::ResourceType, nil]
      optional :resource_type, enum: -> { ModernTreasury::Models::BulkRequestListParams::ResourceType }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::BulkRequestListParams::ResourceType]
      #   attr_writer :resource_type

      # @!attribute [r] status
      #   One of pending, processing, or completed.
      #
      #   @return [Symbol, ModernTreasury::Models::BulkRequestListParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::Models::BulkRequestListParams::Status }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::BulkRequestListParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param action_type [Symbol, ModernTreasury::Models::BulkRequestListParams::ActionType]
      #   # @param after_cursor [String, nil]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param per_page [Integer]
      #   # @param resource_type [Symbol, ModernTreasury::Models::BulkRequestListParams::ResourceType]
      #   # @param status [Symbol, ModernTreasury::Models::BulkRequestListParams::Status]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     action_type: nil,
      #     after_cursor: nil,
      #     metadata: nil,
      #     per_page: nil,
      #     resource_type: nil,
      #     status: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # One of create, or update.
      module ActionType
        extend ModernTreasury::Enum

        CREATE = :create
        UPDATE = :update
        DELETE = :delete

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # One of payment_order, expected_payment, or ledger_transaction.
      module ResourceType
        extend ModernTreasury::Enum

        PAYMENT_ORDER = :payment_order
        LEDGER_ACCOUNT = :ledger_account
        LEDGER_TRANSACTION = :ledger_transaction
        EXPECTED_PAYMENT = :expected_payment
        TRANSACTION = :transaction
        ENTITY_LINK = :entity_link

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # One of pending, processing, or completed.
      module Status
        extend ModernTreasury::Enum

        PENDING = :pending
        PROCESSING = :processing
        COMPLETED = :completed

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
