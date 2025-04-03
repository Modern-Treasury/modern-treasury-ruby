# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LineItems#update
    class LineItemUpdateParams < ModernTreasury::Internal::Type::BaseModel
      # @!parse
      #   extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

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
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

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

      # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void

      module ItemizableType
        extend ModernTreasury::Internal::Type::Enum

        EXPECTED_PAYMENTS = :expected_payments
        PAYMENT_ORDERS = :payment_orders

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
