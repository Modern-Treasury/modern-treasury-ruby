# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LegalEntityAssociations
      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::LegalEntityAssociationCreateParams} for more details.
      #
      # create legal_entity_association
      #
      # @overload create(parent_legal_entity_id:, relationship_types:, child_legal_entity: nil, child_legal_entity_id: nil, ownership_percentage: nil, title: nil, request_options: {})
      #
      # @param parent_legal_entity_id [String] The ID of the parent legal entity. This must be a business or joint legal entity
      #
      # @param relationship_types [Array<Symbol, ModernTreasury::LegalEntityAssociationCreateParams::RelationshipType>]
      #
      # @param child_legal_entity [ModernTreasury::LegalEntityAssociationCreateParams::ChildLegalEntity] The child legal entity.
      #
      # @param child_legal_entity_id [String] The ID of the child legal entity.
      #
      # @param ownership_percentage [Integer, nil] The child entity's ownership percentage iff they are a beneficial owner.
      #
      # @param title [String, nil] The job title of the child entity at the parent entity.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::LegalEntityAssociation]
      #
      # @see ModernTreasury::Models::LegalEntityAssociationCreateParams
      def create(params)
        parsed, options = ModernTreasury::LegalEntityAssociationCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/legal_entity_associations",
          body: parsed,
          model: ModernTreasury::LegalEntityAssociation,
          options: options
        )
      end

      # @api private
      #
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
