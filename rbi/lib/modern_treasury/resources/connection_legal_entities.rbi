# typed: strong

module ModernTreasury
  module Resources
    class ConnectionLegalEntities
      sig do
        params(
          connection_id: String,
          legal_entity: ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity,
          legal_entity_id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::ConnectionLegalEntity)
      end
      def create(connection_id:, legal_entity: nil, legal_entity_id: nil, request_options: {})
      end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::ConnectionLegalEntity)
      end
      def retrieve(id, request_options: {})
      end

      sig do
        params(
          id: String,
          status: Symbol,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::ConnectionLegalEntity)
      end
      def update(id, status: nil, request_options: {})
      end

      sig do
        params(
          after_cursor: T.nilable(String),
          connection_id: String,
          legal_entity_id: String,
          per_page: Integer,
          status: Symbol,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Page[ModernTreasury::Models::ConnectionLegalEntity])
      end
      def list(
        after_cursor: nil,
        connection_id: nil,
        legal_entity_id: nil,
        per_page: nil,
        status: nil,
        request_options: {}
      )
      end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:)
      end
    end
  end
end
