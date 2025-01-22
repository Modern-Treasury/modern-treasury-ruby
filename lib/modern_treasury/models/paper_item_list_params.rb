# frozen_string_literal: true

module ModernTreasury
  module Models
    class PaperItemListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute [r] deposit_date_end
      #   Specify an inclusive end date (YYYY-MM-DD) when filtering by deposit_date
      #
      #   @return [Date, nil]
      optional :deposit_date_end, Date

      # @!parse
      #   # @return [Date]
      #   attr_writer :deposit_date_end

      # @!attribute [r] deposit_date_start
      #   Specify an inclusive start date (YYYY-MM-DD) when filtering by deposit_date
      #
      #   @return [Date, nil]
      optional :deposit_date_start, Date

      # @!parse
      #   # @return [Date]
      #   attr_writer :deposit_date_start

      # @!attribute [r] lockbox_number
      #   Specify `lockbox_number` if you wish to see paper items that are associated with
      #     a specific lockbox number.
      #
      #   @return [String, nil]
      optional :lockbox_number, String

      # @!parse
      #   # @return [String]
      #   attr_writer :lockbox_number

      # @!attribute [r] per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :per_page

      # @!parse
      #   # @param after_cursor [String, nil]
      #   # @param deposit_date_end [String]
      #   # @param deposit_date_start [String]
      #   # @param lockbox_number [String]
      #   # @param per_page [Integer]
      #   #
      #   def initialize(after_cursor: nil, deposit_date_end: nil, deposit_date_start: nil, lockbox_number: nil, per_page: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
