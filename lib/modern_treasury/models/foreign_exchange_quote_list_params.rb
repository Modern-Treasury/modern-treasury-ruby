# frozen_string_literal: true

module ModernTreasury
  module Models
    class ForeignExchangeQuoteListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #   @return [String]
      optional :after_cursor, String

      # @!attribute base_currency
      #   Currency to convert, often called the "sell" currency.
      #   @return [String]
      optional :base_currency, String

      # @!attribute effective_at_end
      #   An inclusive upper bound for searching effective_at
      #   @return [Date]
      optional :effective_at_end, Date

      # @!attribute effective_at_start
      #   An inclusive lower bound for searching effective_at
      #   @return [Date]
      optional :effective_at_start, Date

      # @!attribute expires_at
      #   The timestamp until which the quote must be booked by.
      #   @return [Time]
      optional :expires_at, Time

      # @!attribute internal_account_id
      #   The ID for the `InternalAccount` this quote is associated with.
      #   @return [String]
      optional :internal_account_id, String

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute per_page
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute target_currency
      #   Currency to convert the `base_currency` to, often called the "buy" currency.
      #   @return [String]
      optional :target_currency, String
    end
  end
end
