# frozen_string_literal: true

module ModernTreasury
  module Models
    module Invoices
      class InvoiceLineItem < ModernTreasury::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   The total amount for this line item specified in the invoice currency's smallest
        #     unit.
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
        #     money and increases the invoice's `total_amount` due. `credit` has the opposite
        #     intention and effect.
        #
        #   @return [String]
        required :direction, String

        # @!attribute live_mode
        #   This field will be true if this object exists in the live environment or false
        #     if it exists in the test environment.
        #
        #   @return [Boolean]
        required :live_mode, ModernTreasury::BooleanModel

        # @!attribute metadata
        #   Additional data represented as key-value pairs. Both the key and value must be
        #     strings.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, ModernTreasury::HashOf[String]

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
        #     a whole number. Defaults to 1 if not provided.
        #
        #   @return [Integer]
        required :quantity, Integer

        # @!attribute unit_amount
        #   The cost per unit of the product or service that this line item is for,
        #     specified in the invoice currency's smallest unit.
        #
        #   @return [Integer]
        required :unit_amount, Integer

        # @!attribute unit_amount_decimal
        #   The cost per unit of the product or service that this line item is for,
        #     specified in the invoice currency's smallest unit. Accepts decimal strings with
        #     up to 12 decimals
        #
        #   @return [String]
        required :unit_amount_decimal, String

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!parse
        #   # @param id [String]
        #   # @param amount [Integer]
        #   # @param created_at [Time]
        #   # @param description [String]
        #   # @param direction [String]
        #   # @param live_mode [Boolean]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param name [String]
        #   # @param object [String]
        #   # @param quantity [Integer]
        #   # @param unit_amount [Integer]
        #   # @param unit_amount_decimal [String]
        #   # @param updated_at [Time]
        #   #
        #   def initialize(
        #     id:,
        #     amount:,
        #     created_at:,
        #     description:,
        #     direction:,
        #     live_mode:,
        #     metadata:,
        #     name:,
        #     object:,
        #     quantity:,
        #     unit_amount:,
        #     unit_amount_decimal:,
        #     updated_at:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end
    end

    InvoiceLineItem = Invoices::InvoiceLineItem
  end
end
