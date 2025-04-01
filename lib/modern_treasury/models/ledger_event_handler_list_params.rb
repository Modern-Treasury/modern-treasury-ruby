# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerEventHandlers#list
    class LedgerEventHandlerListParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute [r] created_at
      #   Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #     posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #     created_at%5Bgt%5D=2000-01-01T12:00:00Z.
      #
      #   @return [Hash{Symbol=>Time}, nil]
      optional :created_at, ModernTreasury::HashOf[Time]

      # @!parse
      #   # @return [Hash{Symbol=>Time}]
      #   attr_writer :created_at

      # @!attribute [r] metadata
      #   For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!attribute [r] name
      #
      #   @return [String, nil]
      optional :name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :name

      # @!attribute [r] per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :per_page

      # @!parse
      #   # @param after_cursor [String, nil]
      #   # @param created_at [Hash{Symbol=>Time}]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param name [String]
      #   # @param per_page [Integer]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(after_cursor: nil, created_at: nil, metadata: nil, name: nil, per_page: nil, request_options: {}, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
