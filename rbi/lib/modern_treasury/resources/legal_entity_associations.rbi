# typed: strong

module ModernTreasury
  module Resources
    class LegalEntityAssociations
      sig do
        params(
          params: T.any(
            ModernTreasury::Models::LegalEntityAssociationCreateParams,
            T::Hash[Symbol, T.anything]
          ),
          parent_legal_entity_id: String,
          relationship_types: T::Array[Symbol],
          child_legal_entity: ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity,
          child_legal_entity_id: String,
          ownership_percentage: T.nilable(Integer),
          title: T.nilable(String),
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LegalEntityAssociation)
      end
      def create(
        params,
        parent_legal_entity_id:,
        relationship_types:,
        child_legal_entity:,
        child_legal_entity_id:,
        ownership_percentage:,
        title:,
        request_options: {}
      ); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
