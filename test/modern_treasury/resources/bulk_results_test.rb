# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::BulkResultsTest < Minitest::Test
  def before_all
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_retrieve
    response = @modern_treasury.bulk_results.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::BulkResult
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        entity: ModernTreasury::Models::BulkResult::Entity,
        entity_id: String,
        entity_type: ModernTreasury::Models::BulkResult::EntityType,
        live_mode: ModernTreasury::BooleanModel,
        object: String,
        request_id: String,
        request_params: ^(ModernTreasury::HashOf[String]) | nil,
        request_type: ModernTreasury::Models::BulkResult::RequestType,
        status: ModernTreasury::Models::BulkResult::Status,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.bulk_results.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    page = response.next_page
    assert_pattern do
      page => ModernTreasury::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => ModernTreasury::Models::BulkResult
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        entity: ModernTreasury::Models::BulkResult::Entity,
        entity_id: String,
        entity_type: ModernTreasury::Models::BulkResult::EntityType,
        live_mode: ModernTreasury::BooleanModel,
        object: String,
        request_id: String,
        request_params: ^(ModernTreasury::HashOf[String]) | nil,
        request_type: ModernTreasury::Models::BulkResult::RequestType,
        status: ModernTreasury::Models::BulkResult::Status,
        updated_at: Time
      }
    end
  end
end
