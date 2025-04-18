# frozen_string_literal: true

module ModernTreasury
  module Models
    module Invoices
      # @see ModernTreasury::Resources::Invoices::LineItems#list
      class LineItemListParams < ModernTreasury::Internal::Type::BaseModel
        # @!parse
        #   extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

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

        # @!method initialize(after_cursor: nil, per_page: nil, request_options: {})
        #   @param after_cursor [String, nil]
        #   @param per_page [Integer]
        #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
