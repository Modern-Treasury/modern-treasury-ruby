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
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::ForeignExchangeQuote)
      end
      def create(
        internal_account_id:,
        target_currency:,
        base_amount:,
        base_currency:,
        effective_at:,
        target_amount:,
        request_options: {}
      ); end

      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
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
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Page[ModernTreasury::Models::ForeignExchangeQuote])
      end
      def list(
        after_cursor:,
        base_currency:,
        effective_at_end:,
        effective_at_start:,
        expires_at:,
        internal_account_id:,
        metadata:,
        per_page:,
        target_currency:,
        request_options: {}
      ); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
