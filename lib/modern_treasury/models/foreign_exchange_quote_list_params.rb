# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::ForeignExchangeQuotes#list
    class ForeignExchangeQuoteListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute base_currency
      #   Currency to convert, often called the "sell" currency.
      #
      #   @return [String, nil]
      optional :base_currency, String

      # @!attribute effective_at_end
      #   An inclusive upper bound for searching effective_at
      #
      #   @return [Date, nil]
      optional :effective_at_end, Date

      # @!attribute effective_at_start
      #   An inclusive lower bound for searching effective_at
      #
      #   @return [Date, nil]
      optional :effective_at_start, Date

      # @!attribute expires_at
      #   The timestamp until which the quote must be booked by.
      #
      #   @return [Time, nil]
      optional :expires_at, Time

      # @!attribute internal_account_id
      #   The ID for the `InternalAccount` this quote is associated with.
      #
      #   @return [String, nil]
      optional :internal_account_id, String

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

      # @!attribute target_currency
      #   Currency to convert the `base_currency` to, often called the "buy" currency.
      #
      #   @return [String, nil]
      optional :target_currency, String

      # @!method initialize(after_cursor: nil, base_currency: nil, effective_at_end: nil, effective_at_start: nil, expires_at: nil, internal_account_id: nil, metadata: nil, per_page: nil, target_currency: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::ForeignExchangeQuoteListParams} for more details.
      #
      #   @param after_cursor [String, nil]
      #
      #   @param base_currency [String] Currency to convert, often called the "sell" currency.
      #
      #   @param effective_at_end [Date] An inclusive upper bound for searching effective_at
      #
      #   @param effective_at_start [Date] An inclusive lower bound for searching effective_at
      #
      #   @param expires_at [Time] The timestamp until which the quote must be booked by.
      #
      #   @param internal_account_id [String] The ID for the `InternalAccount` this quote is associated with.
      #
      #   @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #
      #   @param per_page [Integer]
      #
      #   @param target_currency [String] Currency to convert the `base_currency` to, often called the "buy" currency.
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
