# frozen_string_literal: true

module ModernTreasury
  module Models
    module Invoices
      class LineItemCreateParams < ModernTreasury::BaseModel
        # @!parse
        #   extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        # @!attribute name
        #   The name of the line item, typically a product or SKU name.
        #
        #   @return [String]
        required :name, String

        # @!attribute unit_amount
        #   The cost per unit of the product or service that this line item is for,
        #     specified in the invoice currency's smallest unit.
        #
        #   @return [Integer]
        required :unit_amount, Integer

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
        #     money and increases the invoice's `total_amount` due. `credit` has the opposite
        #     intention and effect.
        #
        #   @return [String, nil]
        optional :direction, String

        # @!parse
        #   # @return [String]
        #   attr_writer :direction

        # @!attribute [r] metadata
        #   Additional data represented as key-value pairs. Both the key and value must be
        #     strings.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, ModernTreasury::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :metadata

        # @!attribute [r] quantity
        #   The number of units of a product or service that this line item is for. Must be
        #     a whole number. Defaults to 1 if not provided.
        #
        #   @return [Integer, nil]
        optional :quantity, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :quantity

        # @!attribute [r] unit_amount_decimal
        #   The cost per unit of the product or service that this line item is for,
        #     specified in the invoice currency's smallest unit. Accepts decimal strings with
        #     up to 12 decimals
        #
        #   @return [String, nil]
        optional :unit_amount_decimal, String

        # @!parse
        #   # @return [String]
        #   attr_writer :unit_amount_decimal

        # @!parse
        #   # @param name [String]
        #   # @param unit_amount [Integer]
        #   # @param description [String]
        #   # @param direction [String]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param quantity [Integer]
        #   # @param unit_amount_decimal [String]
        #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     name:,
        #     unit_amount:,
        #     description: nil,
        #     direction: nil,
        #     metadata: nil,
        #     quantity: nil,
        #     unit_amount_decimal: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end
    end
  end
end
