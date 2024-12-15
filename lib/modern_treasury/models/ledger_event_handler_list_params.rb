# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerEventHandlerListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #
      #   @return [String]
      optional :after_cursor, String

      # @!attribute created_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use created_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      #   @return [Hash]
      optional :created_at, Hash

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute name
      #
      #   @return [String]
      optional :name, String

      # @!attribute per_page
      #
      #   @return [Integer]
      optional :per_page, Integer

      # @!parse
      #   # @param after_cursor [String, nil]
      #   #
      #   # @param created_at [Hash, nil] Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   #   posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   #   created_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #   #
      #   # @param metadata [Hash, nil] For example, if you want to query for records with metadata key `Type` and value
      #   #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   #   parameters.
      #   #
      #   # @param name [String, nil]
      #   #
      #   # @param per_page [Integer, nil]
      #   #
      #   def initialize(after_cursor: nil, created_at: nil, metadata: nil, name: nil, per_page: nil) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
