# frozen_string_literal: true

module ModernTreasury
  module Resources
    class ForeignExchangeQuotes
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end

      # create foreign_exchange_quote
      #
      # @param params [Hash] Attributes to send in this request.
      #   @option params [String] :internal_account_id The ID for the `InternalAccount` this quote is associated with.
      #   @option params [Symbol, ModernTreasury::Models::Currency] :target_currency Currency to convert the `base_currency` to, often called the "buy" currency.
      #   @option params [Integer, nil] :base_amount Amount in the lowest denomination of the `base_currency` to convert, often
      #     called the "sell" amount.
      #   @option params [Symbol, ModernTreasury::Models::Currency, nil] :base_currency Currency to convert, often called the "sell" currency.
      #   @option params [Time, nil] :effective_at The timestamp until when the quoted rate is valid.
      #   @option params [Integer, nil] :target_amount Amount in the lowest denomination of the `target_currency`, often called the
      #     "buy" amount.
      #
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::ForeignExchangeQuote]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/api/foreign_exchange_quotes",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: ModernTreasury::Models::ForeignExchangeQuote
        }
        @client.request(req, opts)
      end

      # get foreign_exchange_quote
      #
      # @param id [String] id
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::ForeignExchangeQuote]
      def retrieve(id, opts = {})
        req = {
          method: :get,
          path: "/api/foreign_exchange_quotes/#{id}",
          model: ModernTreasury::Models::ForeignExchangeQuote
        }
        @client.request(req, opts)
      end

      # list foreign_exchange_quotes
      #
      # @param params [Hash] Attributes to send in this request.
      #   @option params [String, nil] :after_cursor
      #   @option params [String, nil] :base_currency Currency to convert, often called the "sell" currency.
      #   @option params [Date, nil] :effective_at_end An inclusive upper bound for searching effective_at
      #   @option params [Date, nil] :effective_at_start An inclusive lower bound for searching effective_at
      #   @option params [Time, nil] :expires_at The timestamp until which the quote must be booked by.
      #   @option params [String, nil] :internal_account_id The ID for the `InternalAccount` this quote is associated with.
      #   @option params [Hash, nil] :metadata For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #   @option params [Integer, nil] :per_page
      #   @option params [String, nil] :target_currency Currency to convert the `base_currency` to, often called the "buy" currency.
      #
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::ForeignExchangeQuote>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/api/foreign_exchange_quotes",
          query: params,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::ForeignExchangeQuote
        }
        @client.request(req, opts)
      end
    end
  end
end
