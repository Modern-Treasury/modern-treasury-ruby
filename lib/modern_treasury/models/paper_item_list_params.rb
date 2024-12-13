# frozen_string_literal: true

module ModernTreasury
  module Models
    class PaperItemListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #   @return [String]
      optional :after_cursor, String

      # @!attribute deposit_date_end
      #   Specify an inclusive end date (YYYY-MM-DD) when filtering by deposit_date
      #   @return [Date]
      optional :deposit_date_end, Date

      # @!attribute deposit_date_start
      #   Specify an inclusive start date (YYYY-MM-DD) when filtering by deposit_date
      #   @return [Date]
      optional :deposit_date_start, Date

      # @!attribute lockbox_number
      #   Specify `lockbox_number` if you wish to see paper items that are associated with a specific lockbox number.
      #   @return [String]
      optional :lockbox_number, String

      # @!attribute per_page
      #   @return [Integer]
      optional :per_page, Integer
    end
  end
end
