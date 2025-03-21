# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::ConnectionLegalEntitiesTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response = @modern_treasury.connection_legal_entities.create(connection_id: "connection_id")

    assert_pattern do
      response => ModernTreasury::Models::ConnectionLegalEntity
    end

    assert_pattern do
      response => {
        id: String,
        connection_id: String,
        created_at: Time,
        discarded_at: Time | nil,
        legal_entity_id: String,
        live_mode: ModernTreasury::BooleanModel,
        object: String,
        status: ModernTreasury::Models::ConnectionLegalEntity::Status,
        updated_at: Time,
        vendor_id: String
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.connection_legal_entities.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::ConnectionLegalEntity
    end

    assert_pattern do
      response => {
        id: String,
        connection_id: String,
        created_at: Time,
        discarded_at: Time | nil,
        legal_entity_id: String,
        live_mode: ModernTreasury::BooleanModel,
        object: String,
        status: ModernTreasury::Models::ConnectionLegalEntity::Status,
        updated_at: Time,
        vendor_id: String
      }
    end
  end

  def test_update
    response = @modern_treasury.connection_legal_entities.update("id")

    assert_pattern do
      response => ModernTreasury::Models::ConnectionLegalEntity
    end

    assert_pattern do
      response => {
        id: String,
        connection_id: String,
        created_at: Time,
        discarded_at: Time | nil,
        legal_entity_id: String,
        live_mode: ModernTreasury::BooleanModel,
        object: String,
        status: ModernTreasury::Models::ConnectionLegalEntity::Status,
        updated_at: Time,
        vendor_id: String
      }
    end
  end

  def test_list
    response = @modern_treasury.connection_legal_entities.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::Models::ConnectionLegalEntity
    end

    assert_pattern do
      row => {
        id: String,
        connection_id: String,
        created_at: Time,
        discarded_at: Time | nil,
        legal_entity_id: String,
        live_mode: ModernTreasury::BooleanModel,
        object: String,
        status: ModernTreasury::Models::ConnectionLegalEntity::Status,
        updated_at: Time,
        vendor_id: String
      }
    end
  end
end
