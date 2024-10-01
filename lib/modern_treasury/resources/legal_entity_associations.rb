# frozen_string_literal: true

module ModernTreasury
  module Resources
    class LegalEntityAssociations
      def initialize(client:)
        @client = client
      end

      # create legal_entity_association
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :parent_legal_entity_id The ID of the parent legal entity. This must be a business or joint legal
      #   entity.
      # @option params [Array<Symbol, RelationshipType>] :relationship_types
      # @option params [ChildLegalEntity, nil] :child_legal_entity The child legal entity.
      # @option params [String, nil] :child_legal_entity_id The ID of the child legal entity.
      # @option params [Integer, nil] :ownership_percentage The child entity's ownership percentage iff they are a beneficial owner.
      # @option params [String, nil] :title The job title of the child entity at the parent entity.
      #
      # @param opts [Hash, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::LegalEntityAssociation]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/api/legal_entity_associations"
        req[:body] = params
        req[:model] = ModernTreasury::Models::LegalEntityAssociation
        @client.request(req, opts)
      end
    end
  end
end
