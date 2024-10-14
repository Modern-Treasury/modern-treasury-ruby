# frozen_string_literal: true

module ModernTreasury
  module Models
    class InvoiceLineItem < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] amount
      #   The total amount for this line item specified in the invoice currency's smallest unit.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] description
      #   An optional free-form description of the line item.
      #   @return [String]
      required :description, String

      # @!attribute [rw] direction
      #   Either `debit` or `credit`. `debit` indicates that a client owes the business money           and increases the invoice's `total_amount` due. `credit` has the opposite intention and effect.
      #   @return [String]
      required :direction, String

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      required :metadata, Hash

      # @!attribute [rw] name_
      #   The name of the line item, typically a product or SKU name.
      #   @return [String]
      required :name_, String

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] quantity
      #   The number of units of a product or service that this line item is for.           Must be a whole number. Defaults to 1 if not provided.
      #   @return [Integer]
      required :quantity, Integer

      # @!attribute [rw] unit_amount
      #   The cost per unit of the product or service that this line item is for,           specified in the invoice currency's smallest unit.
      #   @return [Integer]
      required :unit_amount, Integer

      # @!attribute [rw] unit_amount_decimal
      #   The cost per unit of the product or service that this line item is for,           specified in the invoice currency's smallest unit. Accepts decimal strings with up to 12 decimals
      #   @return [String]
      required :unit_amount_decimal, String

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      # Create a new instance of InvoiceLineItem from a Hash of raw data.
      #
      # @overload initialize(id: nil, amount: nil, created_at: nil, description: nil, direction: nil, live_mode: nil, metadata: nil, name: nil, object: nil, quantity: nil, unit_amount: nil, unit_amount_decimal: nil, updated_at: nil)
      # @param id [String]
      # @param amount [Integer] The total amount for this line item specified in the invoice currency's smallest
      #   unit.
      # @param created_at [String]
      # @param description [String] An optional free-form description of the line item.
      # @param direction [String] Either `debit` or `credit`. `debit` indicates that a client owes the business
      #   money and increases the invoice's `total_amount` due. `credit` has the opposite
      #   intention and effect.
      # @param live_mode [Hash] This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      # @param metadata [Hash] Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @param name [String] The name of the line item, typically a product or SKU name.
      # @param object [String]
      # @param quantity [Integer] The number of units of a product or service that this line item is for. Must be
      #   a whole number. Defaults to 1 if not provided.
      # @param unit_amount [Integer] The cost per unit of the product or service that this line item is for,
      #   specified in the invoice currency's smallest unit.
      # @param unit_amount_decimal [String] The cost per unit of the product or service that this line item is for,
      #   specified in the invoice currency's smallest unit. Accepts decimal strings with
      #   up to 12 decimals
      # @param updated_at [String]
      def initialize(data = {})
        super
      end
    end
  end
end
