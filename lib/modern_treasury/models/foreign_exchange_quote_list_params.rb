# frozen_string_literal: true

module ModernTreasury
  module Models
    class ForeignExchangeQuoteListParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute [r] base_currency
      #   Currency to convert, often called the "sell" currency.
      #
      #   @return [String, nil]
      optional :base_currency, String

      # @!parse
      #   # @return [String]
      #   attr_writer :base_currency

      # @!attribute [r] effective_at_end
      #   An inclusive upper bound for searching effective_at
      #
      #   @return [Date, nil]
      optional :effective_at_end, Date

      # @!parse
      #   # @return [Date]
      #   attr_writer :effective_at_end

      # @!attribute [r] effective_at_start
      #   An inclusive lower bound for searching effective_at
      #
      #   @return [Date, nil]
      optional :effective_at_start, Date

      # @!parse
      #   # @return [Date]
      #   attr_writer :effective_at_start

      # @!attribute [r] expires_at
      #   The timestamp until which the quote must be booked by.
      #
      #   @return [Time, nil]
      optional :expires_at, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :expires_at

      # @!attribute [r] internal_account_id
      #   The ID for the `InternalAccount` this quote is associated with.
      #
      #   @return [String, nil]
      optional :internal_account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :internal_account_id

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

      # @!attribute [r] per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :per_page

      # @!attribute [r] target_currency
      #   Currency to convert the `base_currency` to, often called the "buy" currency.
      #
      #   @return [String, nil]
      optional :target_currency, String

      # @!parse
      #   # @return [String]
      #   attr_writer :target_currency

      # @!parse
      #   # @param after_cursor [String, nil]
      #   # @param base_currency [String]
      #   # @param effective_at_end [Date]
      #   # @param effective_at_start [Date]
      #   # @param expires_at [Time]
      #   # @param internal_account_id [String]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param per_page [Integer]
      #   # @param target_currency [String]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
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
      #     target_currency: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
