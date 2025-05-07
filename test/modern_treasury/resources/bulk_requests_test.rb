# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::BulkRequestsTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    skip("Multipart documents aren't constructed properly yet")

    response =
      @modern_treasury.bulk_requests.create(
        action_type: :create,
        resource_type: :payment_order,
        resources: [
          {
            amount: 0,
            direction: :credit,
            originating_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
            type: :ach
          }
        ]
      )

    assert_pattern do
      response => ModernTreasury::BulkRequest
    end

    assert_pattern do
      response => {
        id: String,
        action_type: ModernTreasury::BulkRequest::ActionType,
        created_at: Time,
        failed_result_count: Integer,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        resource_type: ModernTreasury::BulkRequest::ResourceType,
        status: ModernTreasury::BulkRequest::Status,
        success_result_count: Integer,
        total_resource_count: Integer,
        updated_at: Time
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.bulk_requests.retrieve("id")

    assert_pattern do
      response => ModernTreasury::BulkRequest
    end

    assert_pattern do
      response => {
        id: String,
        action_type: ModernTreasury::BulkRequest::ActionType,
        created_at: Time,
        failed_result_count: Integer,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        resource_type: ModernTreasury::BulkRequest::ResourceType,
        status: ModernTreasury::BulkRequest::Status,
        success_result_count: Integer,
        total_resource_count: Integer,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.bulk_requests.list

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::BulkRequest
    end

    assert_pattern do
      row => {
        id: String,
        action_type: ModernTreasury::BulkRequest::ActionType,
        created_at: Time,
        failed_result_count: Integer,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        resource_type: ModernTreasury::BulkRequest::ResourceType,
        status: ModernTreasury::BulkRequest::Status,
        success_result_count: Integer,
        total_resource_count: Integer,
        updated_at: Time
      }
    end
  end
end
