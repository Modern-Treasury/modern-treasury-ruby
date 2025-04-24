# frozen_string_literal: true

module ModernTreasury
  module Models
    module Invoices
      # @see ModernTreasury::Resources::Invoices::LineItems#update
      class LineItemUpdateParams < ModernTreasury::Internal::Type::BaseModel
        extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

        # @!attribute invoice_id
        #
        #   @return [String]
        required :invoice_id, String

        # @!attribute description
        #   An optional free-form description of the line item.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute direction
        #   Either `debit` or `credit`. `debit` indicates that a client owes the business
        #   money and increases the invoice's `total_amount` due. `credit` has the opposite
        #   intention and effect.
        #
        #   @return [String, nil]
        optional :direction, String

        # @!attribute metadata
        #   Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

        # @!attribute name
        #   The name of the line item, typically a product or SKU name.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute quantity
        #   The number of units of a product or service that this line item is for. Must be
        #   a whole number. Defaults to 1 if not provided.
        #
        #   @return [Integer, nil]
        optional :quantity, Integer

        # @!attribute unit_amount
        #   The cost per unit of the product or service that this line item is for,
        #   specified in the invoice currency's smallest unit.
        #
        #   @return [Integer, nil]
        optional :unit_amount, Integer

        # @!attribute unit_amount_decimal
        #   The cost per unit of the product or service that this line item is for,
        #   specified in the invoice currency's smallest unit. Accepts decimal strings with
        #   up to 12 decimals
        #
        #   @return [String, nil]
        optional :unit_amount_decimal, String

        # @!method initialize(invoice_id:, description: nil, direction: nil, metadata: nil, name: nil, quantity: nil, unit_amount: nil, unit_amount_decimal: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::Invoices::LineItemUpdateParams} for more details.
        #
        #   @param invoice_id [String]
        #
        #   @param description [String] An optional free-form description of the line item.
        #
        #   @param direction [String] Either `debit` or `credit`. `debit` indicates that a client owes the business mo
        #   ...
        #
        #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
        #   ...
        #
        #   @param name [String] The name of the line item, typically a product or SKU name.
        #
        #   @param quantity [Integer] The number of units of a product or service that this line item is for. ...
        #
        #   @param unit_amount [Integer] The cost per unit of the product or service that this line item is for, ...
        #
        #   @param unit_amount_decimal [String] The cost per unit of the product or service that this line item is for, ...
        #
        #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
