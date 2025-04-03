# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LedgerableEventsTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response = @modern_treasury.ledgerable_events.create(name: "name")

    assert_pattern do
      response => ModernTreasury::Models::LedgerableEvent
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        custom_data: ModernTreasury::Internal::Type::Unknown | nil,
        description: String | nil,
        ledger_event_handler_id: String,
        live_mode: ModernTreasury::Internal::Type::BooleanModel,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]) | nil,
        name: String,
        object: String,
        updated_at: Time
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.ledgerable_events.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::LedgerableEvent
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        custom_data: ModernTreasury::Internal::Type::Unknown | nil,
        description: String | nil,
        ledger_event_handler_id: String,
        live_mode: ModernTreasury::Internal::Type::BooleanModel,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]) | nil,
        name: String,
        object: String,
        updated_at: Time
      }
    end
  end
end
