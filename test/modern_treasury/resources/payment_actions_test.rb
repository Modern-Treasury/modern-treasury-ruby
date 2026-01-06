# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::PaymentActionsTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response = @modern_treasury.payment_actions.create(type: "type")

    assert_pattern do
      response => ModernTreasury::PaymentAction
    end

    assert_pattern do
      response => {
        id: String,
        actionable_id: String | nil,
        actionable_type: String | nil,
        created_at: Time,
        details: ModernTreasury::Internal::Type::Unknown,
        internal_account_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        status: String,
        type: String,
        updated_at: Time
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.payment_actions.retrieve("id")

    assert_pattern do
      response => ModernTreasury::PaymentAction
    end

    assert_pattern do
      response => {
        id: String,
        actionable_id: String | nil,
        actionable_type: String | nil,
        created_at: Time,
        details: ModernTreasury::Internal::Type::Unknown,
        internal_account_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        status: String,
        type: String,
        updated_at: Time
      }
    end
  end

  def test_update_required_params
    response = @modern_treasury.payment_actions.update("id", status: :pending)

    assert_pattern do
      response => ModernTreasury::PaymentAction
    end

    assert_pattern do
      response => {
        id: String,
        actionable_id: String | nil,
        actionable_type: String | nil,
        created_at: Time,
        details: ModernTreasury::Internal::Type::Unknown,
        internal_account_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        status: String,
        type: String,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.payment_actions.list

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::PaymentAction
    end

    assert_pattern do
      row => {
        id: String,
        actionable_id: String | nil,
        actionable_type: String | nil,
        created_at: Time,
        details: ModernTreasury::Internal::Type::Unknown,
        internal_account_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        status: String,
        type: String,
        updated_at: Time
      }
    end
  end
end
