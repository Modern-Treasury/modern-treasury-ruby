# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LegalEntityAssociations
      # Add an associated legal entity to a business legal entity.
      #
      # @overload create(parent_legal_entity_id:, relationship_types:, child_legal_entity: nil, child_legal_entity_id: nil, ownership_percentage: nil, title: nil, request_options: {})
      #
      # @param parent_legal_entity_id [String] The ID of the parent legal entity. This must be a business legal entity.
      #
      # @param relationship_types [Array<Symbol, ModernTreasury::Models::LegalEntityAssociationCreateParams::RelationshipType>]
      #
      # @param child_legal_entity [ModernTreasury::Models::ChildLegalEntityCreate] The child legal entity.
      #
      # @param child_legal_entity_id [String] The ID of the child legal entity.
      #
      # @param ownership_percentage [Integer, nil] The child entity's ownership percentage iff they are a beneficial owner.
      #
      # @param title [String, nil] The job title of the child entity at the parent entity.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LegalEntityAssociation]
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

      # Remove an associated legal entity from a business legal entity.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The id of an existing legal entity association.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::LegalEntityAssociation]
      #
      # @see ModernTreasury::Models::LegalEntityAssociationDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/legal_entity_associations/%1$s", id],
          model: ModernTreasury::LegalEntityAssociation,
          options: params[:request_options]
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
