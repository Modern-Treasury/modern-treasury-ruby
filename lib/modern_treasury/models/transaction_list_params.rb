# frozen_string_literal: true

module ModernTreasury
  module Models
    class TransactionListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #
      #   @return [String]
      optional :after_cursor, String

      # @!attribute as_of_date_end
      #   Filters transactions with an `as_of_date` starting on or before the specified date (YYYY-MM-DD).
      #
      #   @return [Date]
      optional :as_of_date_end, Date

      # @!attribute as_of_date_start
      #   Filters transactions with an `as_of_date` starting on or after the specified date (YYYY-MM-DD).
      #
      #   @return [Date]
      optional :as_of_date_start, Date

      # @!attribute counterparty_id
      #
      #   @return [String]
      optional :counterparty_id, String

      # @!attribute description
      #   Filters for transactions including the queried string in the description.
      #
      #   @return [String]
      optional :description, String

      # @!attribute direction
      #
      #   @return [String]
      optional :direction, String

      # @!attribute internal_account_id
      #   Specify `internal_account_id` if you wish to see transactions to/from a specific account.
      #
      #   @return [String]
      optional :internal_account_id, String

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #
      #   @return [Hash{Symbol => String}]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!attribute payment_type
      #
      #   @return [String]
      optional :payment_type, String

      # @!attribute per_page
      #
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute posted
      #   Either `true` or `false`.
      #
      #   @return [Boolean]
      optional :posted, ModernTreasury::BooleanModel

      # @!attribute transactable_type
      #
      #   @return [String]
      optional :transactable_type, String

      # @!attribute vendor_id
      #   Filters for transactions including the queried vendor id (an identifier given to transactions by the bank).
      #
      #   @return [String]
      optional :vendor_id, String

      # @!attribute virtual_account_id
      #
      #   @return [String]
      optional :virtual_account_id, String

      # @!parse
      #   # @param after_cursor [String, nil]
      #   #
      #   # @param as_of_date_end [String, nil] Filters transactions with an `as_of_date` starting on or before the specified
      #   #   date (YYYY-MM-DD).
      #   #
      #   # @param as_of_date_start [String, nil] Filters transactions with an `as_of_date` starting on or after the specified
      #   #   date (YYYY-MM-DD).
      #   #
      #   # @param counterparty_id [String, nil]
      #   #
      #   # @param description [String, nil] Filters for transactions including the queried string in the description.
      #   #
      #   # @param direction [String, nil]
      #   #
      #   # @param internal_account_id [String, nil] Specify `internal_account_id` if you wish to see transactions to/from a specific
      #   #   account.
      #   #
      #   # @param metadata [Hash{Symbol => String}, nil] For example, if you want to query for records with metadata key `Type` and value
      #   #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   #   parameters.
      #   #
      #   # @param payment_type [String, nil]
      #   #
      #   # @param per_page [Integer, nil]
      #   #
      #   # @param posted [Boolean, nil] Either `true` or `false`.
      #   #
      #   # @param transactable_type [String, nil]
      #   #
      #   # @param vendor_id [String, nil] Filters for transactions including the queried vendor id (an identifier given to
      #   #   transactions by the bank).
      #   #
      #   # @param virtual_account_id [String, nil]
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
      #     virtual_account_id: nil
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
