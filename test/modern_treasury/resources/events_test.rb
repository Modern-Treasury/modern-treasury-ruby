# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::EventsTest < ModernTreasury::Test::ResourceTest
  def test_retrieve
    response = @modern_treasury.events.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Event
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        data: ^(ModernTreasury::Internal::Type::HashOf[ModernTreasury::Internal::Type::Unknown]),
        entity_id: String,
        event_name: String,
        event_time: Time,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        resource: String,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.events.list

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::Event
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        data: ^(ModernTreasury::Internal::Type::HashOf[ModernTreasury::Internal::Type::Unknown]),
        entity_id: String,
        event_name: String,
        event_time: Time,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        resource: String,
        updated_at: Time
      }
    end
  end
end
