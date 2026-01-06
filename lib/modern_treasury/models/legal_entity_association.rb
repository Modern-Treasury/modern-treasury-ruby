# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LegalEntityAssociations#create
    class LegalEntityAssociation < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute child_legal_entity
      #   The child legal entity.
      #
      #   @return [ModernTreasury::Models::ChildLegalEntity]
      required :child_legal_entity, -> { ModernTreasury::ChildLegalEntity }

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute discarded_at
      #
      #   @return [Time, nil]
      required :discarded_at, Time, nil?: true

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute ownership_percentage
      #   The child entity's ownership percentage iff they are a beneficial owner.
      #
      #   @return [Integer, nil]
      required :ownership_percentage, Integer, nil?: true

      # @!attribute parent_legal_entity_id
      #   The ID of the parent legal entity. This must be a business or joint legal
      #   entity.
      #
      #   @return [String]
      required :parent_legal_entity_id, String

      # @!attribute relationship_types
      #
      #   @return [Array<Symbol, ModernTreasury::Models::LegalEntityAssociation::RelationshipType>]
      required :relationship_types,
               -> { ModernTreasury::Internal::Type::ArrayOf[enum: ModernTreasury::LegalEntityAssociation::RelationshipType] }

      # @!attribute title
      #   The job title of the child entity at the parent entity.
      #
      #   @return [String, nil]
      required :title, String, nil?: true

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, child_legal_entity:, created_at:, discarded_at:, live_mode:, object:, ownership_percentage:, parent_legal_entity_id:, relationship_types:, title:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LegalEntityAssociation} for more details.
      #
      #   @param id [String]
      #
      #   @param child_legal_entity [ModernTreasury::Models::ChildLegalEntity] The child legal entity.
      #
      #   @param created_at [Time]
      #
      #   @param discarded_at [Time, nil]
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param object [String]
      #
      #   @param ownership_percentage [Integer, nil] The child entity's ownership percentage iff they are a beneficial owner.
      #
      #   @param parent_legal_entity_id [String] The ID of the parent legal entity. This must be a business or joint legal entity
      #
      #   @param relationship_types [Array<Symbol, ModernTreasury::Models::LegalEntityAssociation::RelationshipType>]
      #
      #   @param title [String, nil] The job title of the child entity at the parent entity.
      #
      #   @param updated_at [Time]

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
