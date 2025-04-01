# frozen_string_literal: true

module ModernTreasury
  module Resources
    class ForeignExchangeQuotes
      # create foreign_exchange_quote
      #
      # @overload create(internal_account_id:, target_currency:, base_amount: nil, base_currency: nil, effective_at: nil, target_amount: nil, request_options: {})
      #
      # @param internal_account_id [String]
      # @param target_currency [Symbol, ModernTreasury::Models::Currency]
      # @param base_amount [Integer]
      # @param base_currency [Symbol, ModernTreasury::Models::Currency]
      # @param effective_at [Time]
      # @param target_amount [Integer]
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
      # @param id [String]
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

      # list foreign_exchange_quotes
      #
      # @overload list(after_cursor: nil, base_currency: nil, effective_at_end: nil, effective_at_start: nil, expires_at: nil, internal_account_id: nil, metadata: nil, per_page: nil, target_currency: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      # @param base_currency [String]
      # @param effective_at_end [Date]
      # @param effective_at_start [Date]
      # @param expires_at [Time]
      # @param internal_account_id [String]
      # @param metadata [Hash{Symbol=>String}]
      # @param per_page [Integer]
      # @param target_currency [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::ForeignExchangeQuote>]
      #
      # @see ModernTreasury::Models::ForeignExchangeQuoteListParams
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

      # @api private
      #
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
