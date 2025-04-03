# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LineItems#list
    class LineItemListParams < ModernTreasury::Internal::Type::BaseModel
      # @!parse
      #   extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute itemizable_type
      #
      #   @return [Symbol, ModernTreasury::Models::LineItemListParams::ItemizableType]
      required :itemizable_type, enum: -> { ModernTreasury::Models::LineItemListParams::ItemizableType }

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute [r] per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :per_page

      # @!parse
      #   # @param itemizable_type [Symbol, ModernTreasury::Models::LineItemListParams::ItemizableType]
      #   # @param after_cursor [String, nil]
      #   # @param per_page [Integer]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(itemizable_type:, after_cursor: nil, per_page: nil, request_options: {}, **) = super

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
