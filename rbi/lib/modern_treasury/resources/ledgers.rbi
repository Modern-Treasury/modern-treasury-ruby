# typed: strong

module ModernTreasury
  module Resources
    class Ledgers
      sig do
        params(
          params: T.any(ModernTreasury::Models::LedgerCreateParams, T::Hash[Symbol, T.anything]),
          name: String,
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::Ledger)
      end
      def create(params, name:, description:, metadata:, request_options: {}); end

      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::Ledger)
      end
      def retrieve(id, request_options: {}); end

      sig do
        params(
          id: String,
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          name: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::Ledger)
      end
      def update(id, description:, metadata:, name:, request_options: {}); end

      sig do
        params(
          id: T::Array[String],
          after_cursor: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          updated_at: T::Hash[Symbol, Time],
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Page[ModernTreasury::Models::Ledger])
      end
      def list(id:, after_cursor:, metadata:, per_page:, updated_at:, request_options: {}); end

      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::Ledger)
      end
      def delete(id, request_options: {}); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
