# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Transactions#list
    class TransactionListParams < ModernTreasury::Internal::Type::BaseModel
      # @!parse
      #   extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute [r] as_of_date_end
      #   Filters transactions with an `as_of_date` starting on or before the specified
      #   date (YYYY-MM-DD).
      #
      #   @return [Date, nil]
      optional :as_of_date_end, Date

      # @!parse
      #   # @return [Date]
      #   attr_writer :as_of_date_end

      # @!attribute [r] as_of_date_start
      #   Filters transactions with an `as_of_date` starting on or after the specified
      #   date (YYYY-MM-DD).
      #
      #   @return [Date, nil]
      optional :as_of_date_start, Date

      # @!parse
      #   # @return [Date]
      #   attr_writer :as_of_date_start

      # @!attribute [r] counterparty_id
      #
      #   @return [String, nil]
      optional :counterparty_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :counterparty_id

      # @!attribute [r] description
      #   Filters for transactions including the queried string in the description.
      #
      #   @return [String, nil]
      optional :description, String

      # @!parse
      #   # @return [String]
      #   attr_writer :description

      # @!attribute [r] direction
      #
      #   @return [String, nil]
      optional :direction, String

      # @!parse
      #   # @return [String]
      #   attr_writer :direction

      # @!attribute [r] internal_account_id
      #   Specify `internal_account_id` if you wish to see transactions to/from a specific
      #   account.
      #
      #   @return [String, nil]
      optional :internal_account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :internal_account_id

      # @!attribute [r] metadata
      #   For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!attribute [r] payment_type
      #
      #   @return [String, nil]
      optional :payment_type, String

      # @!parse
      #   # @return [String]
      #   attr_writer :payment_type

      # @!attribute [r] per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :per_page

      # @!attribute [r] posted
      #   Either `true` or `false`.
      #
      #   @return [Boolean, nil]
      optional :posted, ModernTreasury::Internal::Type::Boolean

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :posted

      # @!attribute [r] transactable_type
      #
      #   @return [String, nil]
      optional :transactable_type, String

      # @!parse
      #   # @return [String]
      #   attr_writer :transactable_type

      # @!attribute [r] vendor_id
      #   Filters for transactions including the queried vendor id (an identifier given to
      #   transactions by the bank).
      #
      #   @return [String, nil]
      optional :vendor_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :vendor_id

      # @!attribute [r] virtual_account_id
      #
      #   @return [String, nil]
      optional :virtual_account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :virtual_account_id

      # @!parse
      #   # @param after_cursor [String, nil]
      #   # @param as_of_date_end [Date]
      #   # @param as_of_date_start [Date]
      #   # @param counterparty_id [String]
      #   # @param description [String]
      #   # @param direction [String]
      #   # @param internal_account_id [String]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param payment_type [String]
      #   # @param per_page [Integer]
      #   # @param posted [Boolean]
      #   # @param transactable_type [String]
      #   # @param vendor_id [String]
      #   # @param virtual_account_id [String]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     after_cursor: nil,
      #     as_of_date_end: nil,
      #     as_of_date_start: nil,
      #     counterparty_id: nil,
      #     description: nil,
      #     direction: nil,
      #     internal_account_id: nil,
      #     metadata: nil,
      #     payment_type: nil,
      #     per_page: nil,
      #     posted: nil,
      #     transactable_type: nil,
      #     vendor_id: nil,
      #     virtual_account_id: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void
    end
  end
end
