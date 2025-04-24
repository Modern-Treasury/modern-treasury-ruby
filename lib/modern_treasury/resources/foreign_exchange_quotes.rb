# frozen_string_literal: true

module ModernTreasury
  module Resources
    class ForeignExchangeQuotes
      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::ForeignExchangeQuoteCreateParams} for more details.
      #
      # create foreign_exchange_quote
      #
      # @overload create(internal_account_id:, target_currency:, base_amount: nil, base_currency: nil, effective_at: nil, target_amount: nil, request_options: {})
      #
      # @param internal_account_id [String] The ID for the `InternalAccount` this quote is associated with.
      #
      # @param target_currency [Symbol, ModernTreasury::Models::Currency] Currency to convert the `base_currency` to, often called the "buy" currency.
      #
      # @param base_amount [Integer] Amount in the lowest denomination of the `base_currency` to convert, often calle
      # ...
      #
      # @param base_currency [Symbol, ModernTreasury::Models::Currency] Currency to convert, often called the "sell" currency.
      #
      # @param effective_at [Time] The timestamp until when the quoted rate is valid.
      #
      # @param target_amount [Integer] Amount in the lowest denomination of the `target_currency`, often called the "bu
      # ...
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::ForeignExchangeQuote]
      #
      # @see ModernTreasury::Models::ForeignExchangeQuoteCreateParams
      def create(params)
        parsed, options = ModernTreasury::Models::ForeignExchangeQuoteCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/foreign_exchange_quotes",
          body: parsed,
          model: ModernTreasury::Models::ForeignExchangeQuote,
          options: options
        )
      end

      # get foreign_exchange_quote
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::ForeignExchangeQuote]
      #
      # @see ModernTreasury::Models::ForeignExchangeQuoteRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/foreign_exchange_quotes/%1$s", id],
          model: ModernTreasury::Models::ForeignExchangeQuote,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::ForeignExchangeQuoteListParams} for more details.
      #
      # list foreign_exchange_quotes
      #
      # @overload list(after_cursor: nil, base_currency: nil, effective_at_end: nil, effective_at_start: nil, expires_at: nil, internal_account_id: nil, metadata: nil, per_page: nil, target_currency: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      #
      # @param base_currency [String] Currency to convert, often called the "sell" currency.
      #
      # @param effective_at_end [Date] An inclusive upper bound for searching effective_at
      #
      # @param effective_at_start [Date] An inclusive lower bound for searching effective_at
      #
      # @param expires_at [Time] The timestamp until which the quote must be booked by.
      #
      # @param internal_account_id [String] The ID for the `InternalAccount` this quote is associated with.
      #
      # @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      # ...
      #
      # @param per_page [Integer]
      #
      # @param target_currency [String] Currency to convert the `base_currency` to, often called the "buy" currency.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::ForeignExchangeQuote>]
      #
      # @see ModernTreasury::Models::ForeignExchangeQuoteListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::ForeignExchangeQuoteListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/foreign_exchange_quotes",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Models::ForeignExchangeQuote,
          options: options
        )
      end

      # @api private
      #
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
