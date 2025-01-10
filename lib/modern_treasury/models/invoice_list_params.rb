# frozen_string_literal: true

module ModernTreasury
  module Models
    class InvoiceListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String

      # @!attribute counterparty_id
      #
      #   @return [String]
      optional :counterparty_id, String

      # @!attribute due_date_end
      #   An inclusive upper bound for searching due_date
      #
      #   @return [Date]
      optional :due_date_end, Date

      # @!attribute due_date_start
      #   An inclusive lower bound for searching due_date
      #
      #   @return [Date]
      optional :due_date_start, Date

      # @!attribute expected_payment_id
      #
      #   @return [String]
      optional :expected_payment_id, String

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #
      #   @return [Hash{Symbol => String}]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!attribute number
      #   A unique record number assigned to each invoice that is issued.
      #
      #   @return [String]
      optional :number, String

      # @!attribute originating_account_id
      #
      #   @return [String]
      optional :originating_account_id, String

      # @!attribute payment_order_id
      #
      #   @return [String]
      optional :payment_order_id, String

      # @!attribute per_page
      #
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute status
      #
      #   @return [Symbol, ModernTreasury::Models::InvoiceListParams::Status]
      optional :status, enum: -> { ModernTreasury::Models::InvoiceListParams::Status }

      # @!parse
      #   # @param after_cursor [String, nil]
      #   #
      #   # @param counterparty_id [String]
      #   #
      #   # @param due_date_end [String] An inclusive upper bound for searching due_date
      #   #
      #   # @param due_date_start [String] An inclusive lower bound for searching due_date
      #   #
      #   # @param expected_payment_id [String]
      #   #
      #   # @param metadata [Hash{Symbol => String}] For example, if you want to query for records with metadata key `Type` and value
      #   #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   #   parameters.
      #   #
      #   # @param number [String] A unique record number assigned to each invoice that is issued.
      #   #
      #   # @param originating_account_id [String]
      #   #
      #   # @param payment_order_id [String]
      #   #
      #   # @param per_page [Integer]
      #   #
      #   # @param status [String]
      #   #
      #   def initialize(
      #     after_cursor: nil,
      #     counterparty_id: nil,
      #     due_date_end: nil,
      #     due_date_start: nil,
      #     expected_payment_id: nil,
      #     metadata: nil,
      #     number: nil,
      #     originating_account_id: nil,
      #     payment_order_id: nil,
      #     per_page: nil,
      #     status: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @example
      #
      # ```ruby
      # case status
      # in :draft
      #   # ...
      # in :paid
      #   # ...
      # in :partially_paid
      #   # ...
      # in :payment_pending
      #   # ...
      # in :unpaid
      #   # ...
      # in ...
      #   #...
      # end
      # ```
      class Status < ModernTreasury::Enum
        DRAFT = :draft
        PAID = :paid
        PARTIALLY_PAID = :partially_paid
        PAYMENT_PENDING = :payment_pending
        UNPAID = :unpaid
        VOIDED = :voided

        finalize!
      end
    end
  end
end
