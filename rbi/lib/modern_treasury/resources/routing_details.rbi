# typed: strong

module ModernTreasury
  module Resources
    class RoutingDetails
      sig do
        params(
          account_id: String,
          params: T.any(ModernTreasury::Models::RoutingDetailCreateParams, T::Hash[Symbol, T.anything]),
          accounts_type: Symbol,
          routing_number: String,
          routing_number_type: Symbol,
          payment_type: T.nilable(Symbol),
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::RoutingDetail)
      end
      def create(
        account_id,
        params,
        accounts_type:,
        routing_number:,
        routing_number_type:,
        payment_type:,
        request_options: {}
      ); end

      sig do
        params(
          id: String,
          params: T.any(ModernTreasury::Models::RoutingDetailRetrieveParams, T::Hash[Symbol, T.anything]),
          accounts_type: Symbol,
          account_id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::RoutingDetail)
      end
      def retrieve(id, params, accounts_type:, account_id:, request_options: {}); end

      sig do
        params(
          account_id: String,
          params: T.any(ModernTreasury::Models::RoutingDetailListParams, T::Hash[Symbol, T.anything]),
          accounts_type: Symbol,
          after_cursor: T.nilable(String),
          per_page: Integer,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Page[ModernTreasury::Models::RoutingDetail])
      end
      def list(account_id, params, accounts_type:, after_cursor:, per_page:, request_options: {}); end

      sig do
        params(
          id: String,
          params: T.any(ModernTreasury::Models::RoutingDetailDeleteParams, T::Hash[Symbol, T.anything]),
          accounts_type: Symbol,
          account_id: String,
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def delete(id, params, accounts_type:, account_id:, request_options: {}); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
