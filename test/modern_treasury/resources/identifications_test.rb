# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::IdentificationsTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response =
      @modern_treasury.identifications.create(
        id_number: "id_number",
        id_type: :ar_cuil,
        legal_entity_id: "legal_entity_id"
      )

    assert_pattern do
      response => ModernTreasury::Identification
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        discarded_at: Time | nil,
        documents: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Document]),
        expiration_date: Date | nil,
        id_type: ModernTreasury::Identification::IDType,
        issuing_country: String | nil,
        issuing_region: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        updated_at: Time
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.identifications.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Identification
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        discarded_at: Time | nil,
        documents: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Document]),
        expiration_date: Date | nil,
        id_type: ModernTreasury::Identification::IDType,
        issuing_country: String | nil,
        issuing_region: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        updated_at: Time
      }
    end
  end

  def test_update
    response = @modern_treasury.identifications.update("id")

    assert_pattern do
      response => ModernTreasury::Identification
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        discarded_at: Time | nil,
        documents: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Document]),
        expiration_date: Date | nil,
        id_type: ModernTreasury::Identification::IDType,
        issuing_country: String | nil,
        issuing_region: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        updated_at: Time
      }
    end
  end
end
