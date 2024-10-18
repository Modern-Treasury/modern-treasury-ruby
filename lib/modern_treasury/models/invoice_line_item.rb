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
      required :name_, String, api_name: :name

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

      # @!parse
      #   # Create a new instance of InvoiceLineItem from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [Integer] :amount The total amount for this line item specified in the invoice currency's smallest
      #   #     unit.
      #   #   @option data [String] :created_at
      #   #   @option data [String] :description An optional free-form description of the line item.
      #   #   @option data [String] :direction Either `debit` or `credit`. `debit` indicates that a client owes the business
      #   #     money and increases the invoice's `total_amount` due. `credit` has the opposite
      #   #     intention and effect.
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   #     strings.
      #   #   @option data [String] :name The name of the line item, typically a product or SKU name.
      #   #   @option data [String] :object
      #   #   @option data [Integer] :quantity The number of units of a product or service that this line item is for. Must be
      #   #     a whole number. Defaults to 1 if not provided.
      #   #   @option data [Integer] :unit_amount The cost per unit of the product or service that this line item is for,
      #   #     specified in the invoice currency's smallest unit.
      #   #   @option data [String] :unit_amount_decimal The cost per unit of the product or service that this line item is for,
      #   #     specified in the invoice currency's smallest unit. Accepts decimal strings with
      #   #     up to 12 decimals
      #   #   @option data [String] :updated_at
      #   def initialize(data = {}) = super
    end
  end
end
