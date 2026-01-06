# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LegalEntityAssociationsTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response =
      @modern_treasury.legal_entity_associations.create(
        parent_legal_entity_id: "parent_legal_entity_id",
        relationship_types: [:authorized_signer]
      )

    assert_pattern do
      response => ModernTreasury::LegalEntityAssociation
    end

    assert_pattern do
      response => {
        id: String,
        child_legal_entity: ModernTreasury::ChildLegalEntity,
        created_at: Time,
        discarded_at: Time | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        ownership_percentage: Integer | nil,
        parent_legal_entity_id: String,
        relationship_types: ^(ModernTreasury::Internal::Type::ArrayOf[enum: ModernTreasury::LegalEntityAssociation::RelationshipType]),
        title: String | nil,
        updated_at: Time
      }
    end
  end
end
