# typed: strong

module ModernTreasury
  module Resources
    class ForeignExchangeQuotes
      # create foreign_exchange_quote
      sig do
        params(
          internal_account_id: String,
          target_currency: Symbol,
          base_amount: Integer,
          base_currency: Symbol,
          effective_at: Time,
          target_amount: Integer,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::ForeignExchangeQuote)
      end
      def create(
        # The ID for the `InternalAccount` this quote is associated with.
        internal_account_id:,
        # Currency to convert the `base_currency` to, often called the "buy" currency.
        target_currency:,
        # Amount in the lowest denomination of the `base_currency` to convert, often
        #   called the "sell" amount.
        base_amount: nil,
        # Currency to convert, often called the "sell" currency.
        base_currency: nil,
        # The timestamp until when the quoted rate is valid.
        effective_at: nil,
        # Amount in the lowest denomination of the `target_currency`, often called the
        #   "buy" amount.
        target_amount: nil,
        request_options: {}
      )
      end

      # get foreign_exchange_quote
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::ForeignExchangeQuote)
      end
      def retrieve(
        # id
        id,
        request_options: {}
      )
      end

      # list foreign_exchange_quotes
      sig do
        params(
          after_cursor: T.nilable(String),
          base_currency: String,
          effective_at_end: Date,
          effective_at_start: Date,
          expires_at: Time,
          internal_account_id: String,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          target_currency: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Page[ModernTreasury::Models::ForeignExchangeQuote])
      end
      def list(
        after_cursor: nil,
        # Currency to convert, often called the "sell" currency.
        base_currency: nil,
        # An inclusive upper bound for searching effective_at
        effective_at_end: nil,
        # An inclusive lower bound for searching effective_at
        effective_at_start: nil,
        # The timestamp until which the quote must be booked by.
        expires_at: nil,
        # The ID for the `InternalAccount` this quote is associated with.
        internal_account_id: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        #   parameters.
        metadata: nil,
        per_page: nil,
        # Currency to convert the `base_currency` to, often called the "buy" currency.
        target_currency: nil,
        request_options: {}
      )
      end

      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
