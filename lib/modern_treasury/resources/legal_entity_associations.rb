# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LegalEntityAssociations
      # create legal_entity_association
      #
      # @overload create(parent_legal_entity_id:, relationship_types:, child_legal_entity: nil, child_legal_entity_id: nil, ownership_percentage: nil, title: nil, request_options: {})
      #
      # @param parent_legal_entity_id [String]
      # @param relationship_types [Array<Symbol, ModernTreasury::Models::LegalEntityAssociationCreateParams::RelationshipType>]
      # @param child_legal_entity [ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity]
      # @param child_legal_entity_id [String]
      # @param ownership_percentage [Integer, nil]
      # @param title [String, nil]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LegalEntityAssociation]
      #
      # @see ModernTreasury::Models::LegalEntityAssociationCreateParams
      def create(params)
        parsed, options = ModernTreasury::Models::LegalEntityAssociationCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/legal_entity_associations",
          body: parsed,
          model: ModernTreasury::Models::LegalEntityAssociation,
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
