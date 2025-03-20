# frozen_string_literal: true

module ModernTreasury
  module Models
    class InvoiceListParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute [r] counterparty_id
      #
      #   @return [String, nil]
      optional :counterparty_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :counterparty_id

      # @!attribute [r] due_date_end
      #   An inclusive upper bound for searching due_date
      #
      #   @return [Date, nil]
      optional :due_date_end, Date

      # @!parse
      #   # @return [Date]
      #   attr_writer :due_date_end

      # @!attribute [r] due_date_start
      #   An inclusive lower bound for searching due_date
      #
      #   @return [Date, nil]
      optional :due_date_start, Date

      # @!parse
      #   # @return [Date]
      #   attr_writer :due_date_start

      # @!attribute [r] expected_payment_id
      #
      #   @return [String, nil]
      optional :expected_payment_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :expected_payment_id

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

      # @!attribute [r] number
      #   A unique record number assigned to each invoice that is issued.
      #
      #   @return [String, nil]
      optional :number, String

      # @!parse
      #   # @return [String]
      #   attr_writer :number

      # @!attribute [r] originating_account_id
      #
      #   @return [String, nil]
      optional :originating_account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :originating_account_id

      # @!attribute [r] payment_order_id
      #
      #   @return [String, nil]
      optional :payment_order_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :payment_order_id

      # @!attribute [r] per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :per_page

      # @!attribute [r] status
      #
      #   @return [Symbol, ModernTreasury::Models::InvoiceListParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::Models::InvoiceListParams::Status }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::InvoiceListParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param after_cursor [String, nil]
      #   # @param counterparty_id [String]
      #   # @param due_date_end [Date]
      #   # @param due_date_start [Date]
      #   # @param expected_payment_id [String]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param number [String]
      #   # @param originating_account_id [String]
      #   # @param payment_order_id [String]
      #   # @param per_page [Integer]
      #   # @param status [Symbol, ModernTreasury::Models::InvoiceListParams::Status]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
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
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      module Status
        extend ModernTreasury::Enum

        DRAFT = :draft
        PAID = :paid
        PARTIALLY_PAID = :partially_paid
        PAYMENT_PENDING = :payment_pending
        UNPAID = :unpaid
        VOIDED = :voided

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end
    end
  end
end
