# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::BulkResultsTest < ModernTreasury::Test::ResourceTest
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

    row = response.to_enum.first
    return if row.nil?

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
