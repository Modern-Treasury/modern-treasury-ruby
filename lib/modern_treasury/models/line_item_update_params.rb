# frozen_string_literal: true

module ModernTreasury
  module Models
    class LineItemUpdateParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute itemizable_type
      #
      #   @return [Symbol, ModernTreasury::Models::LineItemUpdateParams::ItemizableType]
      required :itemizable_type, enum: -> { ModernTreasury::Models::LineItemUpdateParams::ItemizableType }

      # @!attribute itemizable_id
      #
      #   @return [String]
      required :itemizable_id, String

      # @!attribute [r] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!parse
      #   # @param itemizable_type [Symbol, ModernTreasury::Models::LineItemUpdateParams::ItemizableType]
      #   # @param itemizable_id [String]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(itemizable_type:, itemizable_id:, metadata: nil, request_options: {}, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @abstract
      #
      # @example
      # ```ruby
      # case itemizable_type
      # in :expected_payments
      #   # ...
      # in :payment_orders
      #   # ...
      # end
      # ```
      class ItemizableType < ModernTreasury::Enum
        EXPECTED_PAYMENTS = :expected_payments
        PAYMENT_ORDERS = :payment_orders

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
