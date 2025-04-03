# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LedgersTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response = @modern_treasury.ledgers.create(name: "name")

    assert_pattern do
      response => ModernTreasury::Models::Ledger
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        description: String | nil,
        discarded_at: Time | nil,
        live_mode: ModernTreasury::Internal::Type::BooleanModel,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        name: String,
        object: String,
        updated_at: Time
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.ledgers.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::Ledger
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        description: String | nil,
        discarded_at: Time | nil,
        live_mode: ModernTreasury::Internal::Type::BooleanModel,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        name: String,
        object: String,
        updated_at: Time
      }
    end
  end

  def test_update
    response = @modern_treasury.ledgers.update("id")

    assert_pattern do
      response => ModernTreasury::Models::Ledger
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        description: String | nil,
        discarded_at: Time | nil,
        live_mode: ModernTreasury::Internal::Type::BooleanModel,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        name: String,
        object: String,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.ledgers.list

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::Models::Ledger
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        description: String | nil,
        discarded_at: Time | nil,
        live_mode: ModernTreasury::Internal::Type::BooleanModel,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        name: String,
        object: String,
        updated_at: Time
      }
    end
  end

  def test_delete
    response = @modern_treasury.ledgers.delete("id")

    assert_pattern do
      response => ModernTreasury::Models::Ledger
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        description: String | nil,
        discarded_at: Time | nil,
        live_mode: ModernTreasury::Internal::Type::BooleanModel,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        name: String,
        object: String,
        updated_at: Time
      }
    end
  end
end
