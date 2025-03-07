# typed: strong

module ModernTreasury
  module Resources
    class AccountCollectionFlows
      sig do
        params(
          counterparty_id: String,
          payment_types: T::Array[String],
          receiving_countries: T::Array[Symbol],
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::AccountCollectionFlow)
      end
      def create(counterparty_id:, payment_types:, receiving_countries: nil, request_options: {})
      end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::AccountCollectionFlow)
      end
      def retrieve(id, request_options: {})
      end

      sig do
        params(
          id: String,
          status: Symbol,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::AccountCollectionFlow)
      end
      def update(id, status:, request_options: {})
      end

      sig do
        params(
          after_cursor: T.nilable(String),
          client_token: String,
          counterparty_id: String,
          external_account_id: String,
          per_page: Integer,
          status: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Page[ModernTreasury::Models::AccountCollectionFlow])
      end
      def list(
        after_cursor: nil,
        client_token: nil,
        counterparty_id: nil,
        external_account_id: nil,
        per_page: nil,
        status: nil,
        request_options: {}
      )
      end

      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
