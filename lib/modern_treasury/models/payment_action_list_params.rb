# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::PaymentActions#list
    class PaymentActionListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute actionable_id
      #   The ID of the associated actionable object.
      #
      #   @return [String, nil]
      optional :actionable_id, String

      # @!attribute actionable_type
      #   The type of the associated actionable object. One of `payment_order`,
      #   `expected_payment`.
      #
      #   @return [String, nil]
      optional :actionable_type, String

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute created_at
      #   Filter by `created_at` using comparison operators like `gt` (>), `gte` (>=),
      #   `lt` (<), `lte` (<=), or `eq` (=) to filter by the created at timestamp. For
      #   example, `created_at[gte]=2024-01-01T00:00:00Z`
      #
      #   @return [ModernTreasury::Models::PaymentActionListParams::CreatedAt, nil]
      optional :created_at, -> { ModernTreasury::PaymentActionListParams::CreatedAt }

      # @!attribute internal_account_id
      #   The ID of one of your internal accounts.
      #
      #   @return [String, nil]
      optional :internal_account_id, String

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

      # @!attribute status
      #   Filter by payment actions of a specific status.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentActionListParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::PaymentActionListParams::Status }

      # @!attribute type
      #   The type of payment action.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentActionListParams::Type, nil]
      optional :type, enum: -> { ModernTreasury::PaymentActionListParams::Type }

      # @!method initialize(actionable_id: nil, actionable_type: nil, after_cursor: nil, created_at: nil, internal_account_id: nil, metadata: nil, per_page: nil, status: nil, type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::PaymentActionListParams} for more details.
      #
      #   @param actionable_id [String] The ID of the associated actionable object.
      #
      #   @param actionable_type [String] The type of the associated actionable object. One of `payment_order`,
      #   `expected\_
      #
      #   @param after_cursor [String, nil]
      #
      #   @param created_at [ModernTreasury::Models::PaymentActionListParams::CreatedAt] Filter by `created_at` using comparison operators like `gt` (>), `gte` (>=), `lt
      #
      #   @param internal_account_id [String] The ID of one of your internal accounts.
      #
      #   @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #
      #   @param per_page [Integer]
      #
      #   @param status [Symbol, ModernTreasury::Models::PaymentActionListParams::Status] Filter by payment actions of a specific status.
      #
      #   @param type [Symbol, ModernTreasury::Models::PaymentActionListParams::Type] The type of payment action.
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      class CreatedAt < ModernTreasury::Internal::Type::BaseModel
        # @!attribute eq
        #
        #   @return [Time, nil]
        optional :eq, Time

        # @!attribute gt
        #
        #   @return [Time, nil]
        optional :gt, Time

        # @!attribute gte
        #
        #   @return [Time, nil]
        optional :gte, Time

        # @!attribute lt
        #
        #   @return [Time, nil]
        optional :lt, Time

        # @!attribute lte
        #
        #   @return [Time, nil]
        optional :lte, Time

        # @!method initialize(eq: nil, gt: nil, gte: nil, lt: nil, lte: nil)
        #   Filter by `created_at` using comparison operators like `gt` (>), `gte` (>=),
        #   `lt` (<), `lte` (<=), or `eq` (=) to filter by the created at timestamp. For
        #   example, `created_at[gte]=2024-01-01T00:00:00Z`
        #
        #   @param eq [Time]
        #   @param gt [Time]
        #   @param gte [Time]
        #   @param lt [Time]
        #   @param lte [Time]
      end

      # Filter by payment actions of a specific status.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        PENDING = :pending
        PROCESSABLE = :processable
        PROCESSING = :processing
        SENT = :sent
        FAILED = :failed
        CANCELLED = :cancelled

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of payment action.
      module Type
        extend ModernTreasury::Internal::Type::Enum

        EVOLVE_NON_PROCESSING_TRANSACTION = :evolve_non_processing_transaction
        STOP = :stop
        ISSUE = :issue

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
