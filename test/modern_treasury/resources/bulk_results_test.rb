# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::BulkResultsTest < ModernTreasury::Test::ResourceTest
  def test_retrieve
    response = @modern_treasury.bulk_results.retrieve("id")

    assert_pattern do
      response => ModernTreasury::BulkResult
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        entity: ModernTreasury::BulkResult::Entity,
        entity_id: String,
        entity_type: ModernTreasury::BulkResult::EntityType,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        request_id: String,
        request_params: ^(ModernTreasury::Internal::Type::HashOf[String]) | nil,
        request_type: ModernTreasury::BulkResult::RequestType,
        status: ModernTreasury::BulkResult::Status,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.bulk_results.list

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::BulkResult
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        entity: ModernTreasury::BulkResult::Entity,
        entity_id: String,
        entity_type: ModernTreasury::BulkResult::EntityType,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        request_id: String,
        request_params: ^(ModernTreasury::Internal::Type::HashOf[String]) | nil,
        request_type: ModernTreasury::BulkResult::RequestType,
        status: ModernTreasury::BulkResult::Status,
        updated_at: Time
      }
    end
  end
end
