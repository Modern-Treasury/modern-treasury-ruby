# typed: strong

module ModernTreasury
  module Resources
    class ConnectionLegalEntities
      # Create a connection legal entity.
      sig do
        params(
          connection_id: String,
          legal_entity:
            ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::OrHash,
          legal_entity_id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::ConnectionLegalEntity)
      end
      def create(
        # The ID of the connection.
        connection_id:,
        # The legal entity.
        legal_entity: nil,
        # The ID of the legal entity.
        legal_entity_id: nil,
        request_options: {}
      )
      end

      # Get details on a single connection legal entity.
      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::ConnectionLegalEntity)
      end
      def retrieve(
        # The id of an existing connection legal entity.
        id,
        request_options: {}
      )
      end

      # Update a connection legal entity.
      sig do
        params(
          id: String,
          status:
            ModernTreasury::ConnectionLegalEntityUpdateParams::Status::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::ConnectionLegalEntity)
      end
      def update(
        # The id of an existing connection legal entity.
        id,
        # The status of the connection legal entity.
        status: nil,
        request_options: {}
      )
      end

      # Get a list of all connection legal entities.
      sig do
        params(
          after_cursor: T.nilable(String),
          connection_id: String,
          legal_entity_id: String,
          per_page: Integer,
          status:
            ModernTreasury::ConnectionLegalEntityListParams::Status::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(
          ModernTreasury::Internal::Page[ModernTreasury::ConnectionLegalEntity]
        )
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

      # @api private
      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
