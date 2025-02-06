# typed: strong

module ModernTreasury
  module Resources
    class LegalEntityAssociations
      sig do
        params(
          parent_legal_entity_id: String,
          relationship_types: T::Array[Symbol],
          child_legal_entity: ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity,
          child_legal_entity_id: String,
          ownership_percentage: T.nilable(Integer),
          title: T.nilable(String),
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(ModernTreasury::Models::LegalEntityAssociation)
      end
      def create(
        parent_legal_entity_id:,
        relationship_types:,
        child_legal_entity: nil,
        child_legal_entity_id: nil,
        ownership_percentage: nil,
        title: nil,
        request_options: {}
      ); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
