# typed: strong

module ModernTreasury
  module Resources
    class LegalEntityAssociations
      # Add an associated legal entity to a business legal entity.
      sig do
        params(
          parent_legal_entity_id: String,
          relationship_types:
            T::Array[
              ModernTreasury::LegalEntityAssociationCreateParams::RelationshipType::OrSymbol
            ],
          child_legal_entity: ModernTreasury::ChildLegalEntityCreate::OrHash,
          child_legal_entity_id: String,
          ownership_percentage: T.nilable(Integer),
          title: T.nilable(String),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::LegalEntityAssociation)
      end
      def create(
        # The ID of the parent legal entity. This must be a business legal entity.
        parent_legal_entity_id:,
        relationship_types:,
        # The child legal entity.
        child_legal_entity: nil,
        # The ID of the child legal entity.
        child_legal_entity_id: nil,
        # The child entity's ownership percentage iff they are a beneficial owner.
        ownership_percentage: nil,
        # The job title of the child entity at the parent entity.
        title: nil,
        request_options: {}
      )
      end

      # Remove an associated legal entity from a business legal entity.
      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::LegalEntityAssociation)
      end
      def delete(
        # The id of an existing legal entity association.
        id,
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
