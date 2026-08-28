# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::VirtualAccountSettingsTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response =
      @modern_treasury.virtual_account_settings.create(
        allocation_type: "allocation_type",
        internal_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => ModernTreasury::VirtualAccountSetting
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        external_id: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.virtual_account_settings.list

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::VirtualAccountSetting
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        external_id: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        updated_at: Time
      }
    end
  end
end
