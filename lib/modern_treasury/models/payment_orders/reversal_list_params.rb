# frozen_string_literal: true

module ModernTreasury
  module Models
    module PaymentOrders
      # @see ModernTreasury::Resources::PaymentOrders::Reversals#list
      class ReversalListParams < ModernTreasury::Internal::Type::BaseModel
        extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

        # @!attribute after_cursor
        #
        #   @return [String, nil]
        optional :after_cursor, String, nil?: true

        # @!attribute per_page
        #
        #   @return [Integer, nil]
        optional :per_page, Integer

        # @!method initialize(after_cursor: nil, per_page: nil, request_options: {})
        #   @param after_cursor [String, nil]
        #   @param per_page [Integer]
        #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
