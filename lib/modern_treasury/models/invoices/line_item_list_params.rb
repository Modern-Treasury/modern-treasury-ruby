# frozen_string_literal: true

module ModernTreasury
  module Models
    module Invoices
      class LineItemListParams < ModernTreasury::BaseModel
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
        #   # @param after_cursor [String, nil]
        #   # @param per_page [Integer]
        #   #
        #   def initialize(after_cursor: nil, per_page: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end
    end
  end
end
