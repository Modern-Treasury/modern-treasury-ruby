# typed: strong

module ModernTreasury
  module Resources
    class ConnectionLegalEntities
      sig do
        params(
          connection_id: String,
          legal_entity: ModernTreasury::Models::ConnectionLegalEntityCreateParams::LegalEntity,
          legal_entity_id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::ConnectionLegalEntity)
      end
      def create(connection_id:, legal_entity:, legal_entity_id:, request_options: {}); end

      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::ConnectionLegalEntity)
      end
      def retrieve(id, request_options: {}); end

      sig do
        params(
          id: String,
          status: Symbol,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::ConnectionLegalEntity)
      end
      def update(id, status:, request_options: {}); end

      sig do
        params(
          after_cursor: T.nilable(String),
          connection_id: String,
          legal_entity_id: String,
          per_page: Integer,
          status: Symbol,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Page[ModernTreasury::Models::ConnectionLegalEntity])
      end
      def list(after_cursor:, connection_id:, legal_entity_id:, per_page:, status:, request_options: {}); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
