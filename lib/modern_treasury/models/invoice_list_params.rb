# frozen_string_literal: true

module ModernTreasury
  module Models
    class InvoiceListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #
      #   @return [String]
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
      #   @return [Hash]
      optional :metadata, Hash

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

      class Status < ModernTreasury::Enum
        DRAFT = :draft
        PAID = :paid
        PARTIALLY_PAID = :partially_paid
        PAYMENT_PENDING = :payment_pending
        UNPAID = :unpaid
        VOIDED = :voided
      end
    end
  end
end
