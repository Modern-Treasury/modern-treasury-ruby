# frozen_string_literal: true

module ModernTreasury
  module Models
    module Invoices
      # @see ModernTreasury::Resources::Invoices::LineItems#update
      class LineItemUpdateParams < ModernTreasury::Internal::Type::BaseModel
        # @!parse
        #   extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

        # @!attribute invoice_id
        #
        #   @return [String]
        required :invoice_id, String

        # @!attribute [r] description
        #   An optional free-form description of the line item.
        #
        #   @return [String, nil]
        optional :description, String

        # @!parse
        #   # @return [String]
        #   attr_writer :description

        # @!attribute [r] direction
        #   Either `debit` or `credit`. `debit` indicates that a client owes the business
        #   money and increases the invoice's `total_amount` due. `credit` has the opposite
        #   intention and effect.
        #
        #   @return [String, nil]
        optional :direction, String

        # @!parse
        #   # @return [String]
        #   attr_writer :direction

        # @!attribute [r] metadata
        #   Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :metadata

        # @!attribute [r] name
        #   The name of the line item, typically a product or SKU name.
        #
        #   @return [String, nil]
        optional :name, String

        # @!parse
        #   # @return [String]
        #   attr_writer :name

        # @!attribute [r] quantity
        #   The number of units of a product or service that this line item is for. Must be
        #   a whole number. Defaults to 1 if not provided.
        #
        #   @return [Integer, nil]
        optional :quantity, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :quantity

        # @!attribute [r] unit_amount
        #   The cost per unit of the product or service that this line item is for,
        #   specified in the invoice currency's smallest unit.
        #
        #   @return [Integer, nil]
        optional :unit_amount, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :unit_amount

        # @!attribute [r] unit_amount_decimal
        #   The cost per unit of the product or service that this line item is for,
        #   specified in the invoice currency's smallest unit. Accepts decimal strings with
        #   up to 12 decimals
        #
        #   @return [String, nil]
        optional :unit_amount_decimal, String

        # @!parse
        #   # @return [String]
        #   attr_writer :unit_amount_decimal

        # @!method initialize(invoice_id:, description: nil, direction: nil, metadata: nil, name: nil, quantity: nil, unit_amount: nil, unit_amount_decimal: nil, request_options: {})
        #   @param invoice_id [String]
        #   @param description [String]
        #   @param direction [String]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param name [String]
        #   @param quantity [Integer]
        #   @param unit_amount [Integer]
        #   @param unit_amount_decimal [String]
        #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
