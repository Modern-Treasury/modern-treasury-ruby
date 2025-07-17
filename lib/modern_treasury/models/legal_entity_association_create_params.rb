# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LegalEntityAssociations#create
    class LegalEntityAssociationCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute parent_legal_entity_id
      #   The ID of the parent legal entity. This must be a business or joint legal
      #   entity.
      #
      #   @return [String]
      required :parent_legal_entity_id, String

      # @!attribute relationship_types
      #
      #   @return [Array<Symbol, ModernTreasury::Models::LegalEntityAssociationCreateParams::RelationshipType>]
      required :relationship_types,
               -> {
                 ModernTreasury::Internal::Type::ArrayOf[enum: ModernTreasury::LegalEntityAssociationCreateParams::RelationshipType]
               }

      # @!attribute child_legal_entity
      #   The child legal entity.
      #
      #   @return [ModernTreasury::Models::ChildLegalEntityCreate, nil]
      optional :child_legal_entity, -> { ModernTreasury::ChildLegalEntityCreate }

      # @!attribute child_legal_entity_id
      #   The ID of the child legal entity.
      #
      #   @return [String, nil]
      optional :child_legal_entity_id, String

      # @!attribute ownership_percentage
      #   The child entity's ownership percentage iff they are a beneficial owner.
      #
      #   @return [Integer, nil]
      optional :ownership_percentage, Integer, nil?: true

      # @!attribute title
      #   The job title of the child entity at the parent entity.
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!method initialize(parent_legal_entity_id:, relationship_types:, child_legal_entity: nil, child_legal_entity_id: nil, ownership_percentage: nil, title: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LegalEntityAssociationCreateParams} for more details.
      #
      #   @param parent_legal_entity_id [String] The ID of the parent legal entity. This must be a business or joint legal entity
      #
      #   @param relationship_types [Array<Symbol, ModernTreasury::Models::LegalEntityAssociationCreateParams::RelationshipType>]
      #
      #   @param child_legal_entity [ModernTreasury::Models::ChildLegalEntityCreate] The child legal entity.
      #
      #   @param child_legal_entity_id [String] The ID of the child legal entity.
      #
      #   @param ownership_percentage [Integer, nil] The child entity's ownership percentage iff they are a beneficial owner.
      #
      #   @param title [String, nil] The job title of the child entity at the parent entity.
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # A list of relationship types for how the child entity relates to parent entity.
      module RelationshipType
        extend ModernTreasury::Internal::Type::Enum

        AUTHORIZED_SIGNER = :authorized_signer
        BENEFICIAL_OWNER = :beneficial_owner
        CONTROL_PERSON = :control_person

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
