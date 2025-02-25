# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LedgersTest < Minitest::Test
  def before_all
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

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
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
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
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
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
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        name: String,
        object: String,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.ledgers.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    page = response.next_page
    assert_pattern do
      page => ModernTreasury::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => ModernTreasury::Models::Ledger
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        description: String | nil,
        discarded_at: Time | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
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
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        name: String,
        object: String,
        updated_at: Time
      }
    end
  end
end
