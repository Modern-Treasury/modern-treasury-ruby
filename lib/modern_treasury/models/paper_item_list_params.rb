# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::PaperItems#list
    class PaperItemListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute deposit_date_end
      #   Specify an inclusive end date (YYYY-MM-DD) when filtering by deposit_date
      #
      #   @return [Date, nil]
      optional :deposit_date_end, Date

      # @!attribute deposit_date_start
      #   Specify an inclusive start date (YYYY-MM-DD) when filtering by deposit_date
      #
      #   @return [Date, nil]
      optional :deposit_date_start, Date

      # @!attribute lockbox_number
      #   Specify `lockbox_number` if you wish to see paper items that are associated with
      #   a specific lockbox number.
      #
      #   @return [String, nil]
      optional :lockbox_number, String

      # @!attribute per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!method initialize(after_cursor: nil, deposit_date_end: nil, deposit_date_start: nil, lockbox_number: nil, per_page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::PaperItemListParams} for more details.
      #
      #   @param after_cursor [String, nil]
      #
      #   @param deposit_date_end [Date] Specify an inclusive end date (YYYY-MM-DD) when filtering by deposit_date
      #
      #   @param deposit_date_start [Date] Specify an inclusive start date (YYYY-MM-DD) when filtering by deposit_date
      #
      #   @param lockbox_number [String] Specify `lockbox_number` if you wish to see paper items that are associated with
      #
      #   @param per_page [Integer]
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
