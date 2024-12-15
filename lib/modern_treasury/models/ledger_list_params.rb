# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerListParams < ModernTreasury::BaseModel
      # @!attribute id
      #   If you have specific IDs to retrieve in bulk, you can pass them as query parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      #
      #   @return [Array<String>]
      optional :id, ModernTreasury::ArrayOf.new(String)

      # @!attribute after_cursor
      #
      #   @return [String]
      optional :after_cursor, String

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute per_page
      #
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute updated_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      #   @return [Hash]
      optional :updated_at, Hash
    end
  end
end
