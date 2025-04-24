# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Ledgers#list
    class LedgerListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute id
      #   If you have specific IDs to retrieve in bulk, you can pass them as query
      #   parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #
      #   @return [Array<String>, nil]
      optional :id, ModernTreasury::Internal::Type::ArrayOf[String]

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!attribute updated_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      #   @return [Hash{Symbol=>Time}, nil]
      optional :updated_at, ModernTreasury::Internal::Type::HashOf[Time]

      # @!method initialize(id: nil, after_cursor: nil, metadata: nil, per_page: nil, updated_at: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LedgerListParams} for more details.
      #
      #   @param id [Array<String>] If you have specific IDs to retrieve in bulk, you can pass them as query paramet
      #   ...
      #
      #   @param after_cursor [String, nil]
      #
      #   @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #   ...
      #
      #   @param per_page [Integer]
      #
      #   @param updated_at [Hash{Symbol=>Time}] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the pos
      #   ...
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
