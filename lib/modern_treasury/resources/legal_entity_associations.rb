# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LegalEntityAssociations
      # create legal_entity_association
      #
      # @param params [ModernTreasury::Models::LegalEntityAssociationCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :parent_legal_entity_id The ID of the parent legal entity. This must be a business or joint legal
      #     entity.
      #
      #   @option params [Array<Symbol, ModernTreasury::Models::LegalEntityAssociationCreateParams::RelationshipType>] :relationship_types
      #
      #   @option params [ModernTreasury::Models::LegalEntityAssociationCreateParams::ChildLegalEntity] :child_legal_entity The child legal entity.
      #
      #   @option params [String] :child_legal_entity_id The ID of the child legal entity.
      #
      #   @option params [Integer, nil] :ownership_percentage The child entity's ownership percentage iff they are a beneficial owner.
      #
      #   @option params [String, nil] :title The job title of the child entity at the parent entity.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
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
