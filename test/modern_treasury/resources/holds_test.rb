# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::HoldsTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response =
      @modern_treasury.holds.create(
        status: :active,
        target_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        target_type: :payment_order
      )

    assert_pattern do
      response => ModernTreasury::Hold
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        object: ModernTreasury::Hold::Object,
        status: ModernTreasury::Hold::Status,
        target_id: String,
        target_type: ModernTreasury::Hold::TargetType,
        updated_at: Time,
        live_mode: ModernTreasury::Internal::Type::Boolean | nil,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]) | nil,
        reason: String | nil,
        resolution: String | nil,
        resolved_at: Time | nil
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.holds.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Hold
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        object: ModernTreasury::Hold::Object,
        status: ModernTreasury::Hold::Status,
        target_id: String,
        target_type: ModernTreasury::Hold::TargetType,
        updated_at: Time,
        live_mode: ModernTreasury::Internal::Type::Boolean | nil,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]) | nil,
        reason: String | nil,
        resolution: String | nil,
        resolved_at: Time | nil
      }
    end
  end

  def test_update_required_params
    response = @modern_treasury.holds.update("id", status: :resolved)

    assert_pattern do
      response => ModernTreasury::Hold
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        object: ModernTreasury::Hold::Object,
        status: ModernTreasury::Hold::Status,
        target_id: String,
        target_type: ModernTreasury::Hold::TargetType,
        updated_at: Time,
        live_mode: ModernTreasury::Internal::Type::Boolean | nil,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]) | nil,
        reason: String | nil,
        resolution: String | nil,
        resolved_at: Time | nil
      }
    end
  end

  def test_list
    response = @modern_treasury.holds.list

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::Hold
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        object: ModernTreasury::Hold::Object,
        status: ModernTreasury::Hold::Status,
        target_id: String,
        target_type: ModernTreasury::Hold::TargetType,
        updated_at: Time,
        live_mode: ModernTreasury::Internal::Type::Boolean | nil,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]) | nil,
        reason: String | nil,
        resolution: String | nil,
        resolved_at: Time | nil
      }
    end
  end
end
