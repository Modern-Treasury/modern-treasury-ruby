# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LineItems#retrieve
    class LineItemRetrieveParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute itemizable_type
      #
      #   @return [Symbol, ModernTreasury::Models::LineItemRetrieveParams::ItemizableType]
      required :itemizable_type, enum: -> { ModernTreasury::Models::LineItemRetrieveParams::ItemizableType }

      # @!attribute itemizable_id
      #
      #   @return [String]
      required :itemizable_id, String

      # @!method initialize(itemizable_type:, itemizable_id:, request_options: {})
      #   @param itemizable_type [Symbol, ModernTreasury::Models::LineItemRetrieveParams::ItemizableType]
      #   @param itemizable_id [String]
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      module ItemizableType
        extend ModernTreasury::Internal::Type::Enum

        EXPECTED_PAYMENTS = :expected_payments
        PAYMENT_ORDERS = :payment_orders

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
