# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::ConnectionLegalEntitiesTest < Minitest::Test
  def before_all
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

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

    page = response.next_page
    assert_pattern do
      page => ModernTreasury::Page
    end

    row = response.to_enum.first
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
