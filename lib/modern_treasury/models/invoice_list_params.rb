# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Invoices#list
    class InvoiceListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute counterparty_id
      #
      #   @return [String, nil]
      optional :counterparty_id, String

      # @!attribute due_date_end
      #   An inclusive upper bound for searching due_date
      #
      #   @return [Date, nil]
      optional :due_date_end, Date

      # @!attribute due_date_start
      #   An inclusive lower bound for searching due_date
      #
      #   @return [Date, nil]
      optional :due_date_start, Date

      # @!attribute expected_payment_id
      #
      #   @return [String, nil]
      optional :expected_payment_id, String

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute number
      #   A unique record number assigned to each invoice that is issued.
      #
      #   @return [String, nil]
      optional :number, String

      # @!attribute originating_account_id
      #
      #   @return [String, nil]
      optional :originating_account_id, String

      # @!attribute payment_order_id
      #
      #   @return [String, nil]
      optional :payment_order_id, String

      # @!attribute per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!attribute status
      #
      #   @return [Symbol, ModernTreasury::Models::InvoiceListParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::Models::InvoiceListParams::Status }

      # @!method initialize(after_cursor: nil, counterparty_id: nil, due_date_end: nil, due_date_start: nil, expected_payment_id: nil, metadata: nil, number: nil, originating_account_id: nil, payment_order_id: nil, per_page: nil, status: nil, request_options: {})
      #   @param after_cursor [String, nil]
      #   @param counterparty_id [String]
      #   @param due_date_end [Date]
      #   @param due_date_start [Date]
      #   @param expected_payment_id [String]
      #   @param metadata [Hash{Symbol=>String}]
      #   @param number [String]
      #   @param originating_account_id [String]
      #   @param payment_order_id [String]
      #   @param per_page [Integer]
      #   @param status [Symbol, ModernTreasury::Models::InvoiceListParams::Status]
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      module Status
        extend ModernTreasury::Internal::Type::Enum

        DRAFT = :draft
        PAID = :paid
        PARTIALLY_PAID = :partially_paid
        PAYMENT_PENDING = :payment_pending
        UNPAID = :unpaid
        VOIDED = :voided

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
