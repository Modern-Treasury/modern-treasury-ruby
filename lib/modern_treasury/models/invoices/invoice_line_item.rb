# frozen_string_literal: true

module ModernTreasury
  module Models
    module Invoices
      # @see ModernTreasury::Resources::Invoices::LineItems#create
      class InvoiceLineItem < ModernTreasury::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   The total amount for this line item specified in the invoice currency's smallest
        #   unit.
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute description
        #   An optional free-form description of the line item.
        #
        #   @return [String]
        required :description, String

        # @!attribute direction
        #   Either `debit` or `credit`. `debit` indicates that a client owes the business
        #   money and increases the invoice's `total_amount` due. `credit` has the opposite
        #   intention and effect.
        #
        #   @return [String]
        required :direction, String

        # @!attribute invoice_id
        #   The ID of the invoice for this line item.
        #
        #   @return [String]
        required :invoice_id, String

        # @!attribute live_mode
        #   This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
        #
        #   @return [Boolean]
        required :live_mode, ModernTreasury::Internal::Type::Boolean

        # @!attribute metadata
        #   Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, ModernTreasury::Internal::Type::HashOf[String]

        # @!attribute name
        #   The name of the line item, typically a product or SKU name.
        #
        #   @return [String]
        required :name, String

        # @!attribute object
        #
        #   @return [String]
        required :object, String

        # @!attribute quantity
        #   The number of units of a product or service that this line item is for. Must be
        #   a whole number. Defaults to 1 if not provided.
        #
        #   @return [Integer]
        required :quantity, Integer

        # @!attribute unit_amount
        #   The cost per unit of the product or service that this line item is for,
        #   specified in the invoice currency's smallest unit.
        #
        #   @return [Integer]
        required :unit_amount, Integer

        # @!attribute unit_amount_decimal
        #   The cost per unit of the product or service that this line item is for,
        #   specified in the invoice currency's smallest unit. Accepts decimal strings with
        #   up to 12 decimals
        #
        #   @return [String]
        required :unit_amount_decimal, String

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!method initialize(id:, amount:, created_at:, description:, direction:, invoice_id:, live_mode:, metadata:, name:, object:, quantity:, unit_amount:, unit_amount_decimal:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::Invoices::InvoiceLineItem} for more details.
        #
        #   @param id [String]
        #
        #   @param amount [Integer] The total amount for this line item specified in the invoice currency's smallest
        #
        #   @param created_at [Time]
        #
        #   @param description [String] An optional free-form description of the line item.
        #
        #   @param direction [String] Either `debit` or `credit`. `debit` indicates that a client owes the business mo
        #
        #   @param invoice_id [String] The ID of the invoice for this line item.
        #
        #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
        #
        #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
        #
        #   @param name [String] The name of the line item, typically a product or SKU name.
        #
        #   @param object [String]
        #
        #   @param quantity [Integer] The number of units of a product or service that this line item is for.
        #
        #   @param unit_amount [Integer] The cost per unit of the product or service that this line item is for,
        #
        #   @param unit_amount_decimal [String] The cost per unit of the product or service that this line item is for,
        #
        #   @param updated_at [Time]
      end
    end

    InvoiceLineItem = Invoices::InvoiceLineItem
  end
end
