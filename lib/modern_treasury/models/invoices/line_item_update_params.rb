# frozen_string_literal: true

module ModernTreasury
  module Models
    module Invoices
      class LineItemUpdateParams < ModernTreasury::BaseModel
        # @!attribute invoice_id
        #   @return [String]
        required :invoice_id, String

        # @!attribute description
        #   An optional free-form description of the line item.
        #   @return [String]
        optional :description, String

        # @!attribute direction
        #   Either `debit` or `credit`. `debit` indicates that a client owes the business money           and increases the invoice's `total_amount` due. `credit` has the opposite intention and effect.
        #   @return [String]
        optional :direction, String

        # @!attribute metadata
        #   Additional data represented as key-value pairs. Both the key and value must be strings.
        #   @return [Hash]
        optional :metadata, Hash

        # @!attribute name
        #   The name of the line item, typically a product or SKU name.
        #   @return [String]
        optional :name, String

        # @!attribute quantity
        #   The number of units of a product or service that this line item is for.           Must be a whole number. Defaults to 1 if not provided.
        #   @return [Integer]
        optional :quantity, Integer

        # @!attribute unit_amount
        #   The cost per unit of the product or service that this line item is for,           specified in the invoice currency's smallest unit.
        #   @return [Integer]
        optional :unit_amount, Integer

        # @!attribute unit_amount_decimal
        #   The cost per unit of the product or service that this line item is for,           specified in the invoice currency's smallest unit. Accepts decimal strings with up to 12 decimals
        #   @return [String]
        optional :unit_amount_decimal, String
      end
    end
  end
end
