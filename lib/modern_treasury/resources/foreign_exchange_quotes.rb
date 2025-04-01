# frozen_string_literal: true

module ModernTreasury
  module Resources
    class ForeignExchangeQuotes
      # create foreign_exchange_quote
      #
      # @param params [ModernTreasury::Models::ForeignExchangeQuoteCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :internal_account_id The ID for the `InternalAccount` this quote is associated with.
      #
      #   @option params [Symbol, ModernTreasury::Models::Currency] :target_currency Currency to convert the `base_currency` to, often called the "buy" currency.
      #
      #   @option params [Integer] :base_amount Amount in the lowest denomination of the `base_currency` to convert, often
      #     called the "sell" amount.
      #
      #   @option params [Symbol, ModernTreasury::Models::Currency] :base_currency Currency to convert, often called the "sell" currency.
      #
      #   @option params [Time] :effective_at The timestamp until when the quoted rate is valid.
      #
      #   @option params [Integer] :target_amount Amount in the lowest denomination of the `target_currency`, often called the
      #     "buy" amount.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::ForeignExchangeQuote]
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
      # @param id [String] id
      #
      # @param params [ModernTreasury::Models::ForeignExchangeQuoteRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::ForeignExchangeQuote]
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/foreign_exchange_quotes/%1$s", id],
          model: ModernTreasury::Models::ForeignExchangeQuote,
          options: params[:request_options]
        )
      end

      # list foreign_exchange_quotes
      #
      # @param params [ModernTreasury::Models::ForeignExchangeQuoteListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :after_cursor
      #
      #   @option params [String] :base_currency Currency to convert, often called the "sell" currency.
      #
      #   @option params [Date] :effective_at_end An inclusive upper bound for searching effective_at
      #
      #   @option params [Date] :effective_at_start An inclusive lower bound for searching effective_at
      #
      #   @option params [Time] :expires_at The timestamp until which the quote must be booked by.
      #
      #   @option params [String] :internal_account_id The ID for the `InternalAccount` this quote is associated with.
      #
      #   @option params [Hash{Symbol=>String}] :metadata For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #
      #   @option params [Integer] :per_page
      #
      #   @option params [String] :target_currency Currency to convert the `base_currency` to, often called the "buy" currency.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::ForeignExchangeQuote>]
      def list(params = {})
        parsed, options = ModernTreasury::Models::ForeignExchangeQuoteListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/foreign_exchange_quotes",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::ForeignExchangeQuote,
          options: options
        )
      end

      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
