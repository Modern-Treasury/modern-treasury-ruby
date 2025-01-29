# typed: strong

module ModernTreasury
  module Resources
    class AccountCollectionFlows
      sig do
        params(
          params: T.any(
            ModernTreasury::Models::AccountCollectionFlowCreateParams,
            T::Hash[Symbol, T.anything]
          ),
          counterparty_id: String,
          payment_types: T::Array[String],
          receiving_countries: T::Array[Symbol],
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::AccountCollectionFlow)
      end
      def create(params, counterparty_id:, payment_types:, receiving_countries:, request_options: {}); end

      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::AccountCollectionFlow)
      end
      def retrieve(id, request_options: {}); end

      sig do
        params(
          id: String,
          params: T.any(
            ModernTreasury::Models::AccountCollectionFlowUpdateParams,
            T::Hash[Symbol, T.anything]
          ),
          status: Symbol,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::AccountCollectionFlow)
      end
      def update(id, params, status:, request_options: {}); end

      sig do
        params(
          after_cursor: T.nilable(String),
          client_token: String,
          counterparty_id: String,
          external_account_id: String,
          per_page: Integer,
          status: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Page[ModernTreasury::Models::AccountCollectionFlow])
      end
      def list(
        after_cursor:,
        client_token:,
        counterparty_id:,
        external_account_id:,
        per_page:,
        status:,
        request_options: {}
      ); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
