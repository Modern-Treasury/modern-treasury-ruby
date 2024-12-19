# frozen_string_literal: true

module ModernTreasury
  module Models
    class ForeignExchangeQuoteListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #
      #   @return [String]
      optional :after_cursor, String

      # @!attribute base_currency
      #   Currency to convert, often called the "sell" currency.
      #
      #   @return [String]
      optional :base_currency, String

      # @!attribute effective_at_end
      #   An inclusive upper bound for searching effective_at
      #
      #   @return [Date]
      optional :effective_at_end, Date

      # @!attribute effective_at_start
      #   An inclusive lower bound for searching effective_at
      #
      #   @return [Date]
      optional :effective_at_start, Date

      # @!attribute expires_at
      #   The timestamp until which the quote must be booked by.
      #
      #   @return [Time]
      optional :expires_at, Time

      # @!attribute internal_account_id
      #   The ID for the `InternalAccount` this quote is associated with.
      #
      #   @return [String]
      optional :internal_account_id, String

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #
      #   @return [Hash{Symbol => String}]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!attribute per_page
      #
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute target_currency
      #   Currency to convert the `base_currency` to, often called the "buy" currency.
      #
      #   @return [String]
      optional :target_currency, String

      # @!parse
      #   # @param after_cursor [String, nil]
      #   #
      #   # @param base_currency [String, nil] Currency to convert, often called the "sell" currency.
      #   #
      #   # @param effective_at_end [String, nil] An inclusive upper bound for searching effective_at
      #   #
      #   # @param effective_at_start [String, nil] An inclusive lower bound for searching effective_at
      #   #
      #   # @param expires_at [String, nil] The timestamp until which the quote must be booked by.
      #   #
      #   # @param internal_account_id [String, nil] The ID for the `InternalAccount` this quote is associated with.
      #   #
      #   # @param metadata [Hash{Symbol => String}, nil] For example, if you want to query for records with metadata key `Type` and value
      #   #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   #   parameters.
      #   #
      #   # @param per_page [Integer, nil]
      #   #
      #   # @param target_currency [String, nil] Currency to convert the `base_currency` to, often called the "buy" currency.
      #   #
      #   def initialize(
      #     after_cursor: nil,
      #     base_currency: nil,
      #     effective_at_end: nil,
      #     effective_at_start: nil,
      #     expires_at: nil,
      #     internal_account_id: nil,
      #     metadata: nil,
      #     per_page: nil,
      #     target_currency: nil
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
