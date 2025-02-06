# typed: strong

module ModernTreasury
  module Resources
    class ForeignExchangeQuotes
      sig do
        params(
          internal_account_id: String,
          target_currency: Symbol,
          base_amount: Integer,
          base_currency: Symbol,
          effective_at: Time,
          target_amount: Integer,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Models::ForeignExchangeQuote)
      end
      def create(
        internal_account_id:,
        target_currency:,
        base_amount: nil,
        base_currency: nil,
        effective_at: nil,
        target_amount: nil,
        request_options: {}
      ); end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Models::ForeignExchangeQuote)
      end
      def retrieve(id, request_options: {}); end

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
        ).returns(ModernTreasury::Page[ModernTreasury::Models::ForeignExchangeQuote])
      end
      def list(
        after_cursor: nil,
        base_currency: nil,
        effective_at_end: nil,
        effective_at_start: nil,
        expires_at: nil,
        internal_account_id: nil,
        metadata: nil,
        per_page: nil,
        target_currency: nil,
        request_options: {}
      ); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
