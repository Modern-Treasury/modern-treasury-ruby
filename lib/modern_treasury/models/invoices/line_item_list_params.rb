# frozen_string_literal: true

module ModernTreasury
  module Models
    module Invoices
      class LineItemListParams < ModernTreasury::BaseModel
        # @!attribute after_cursor
        #   @return [String]
        optional :after_cursor, String

        # @!attribute per_page
        #   @return [Integer]
        optional :per_page, Integer
      end
    end
  end
end
