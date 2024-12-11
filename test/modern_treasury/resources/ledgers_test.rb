# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LedgersTest < Minitest::Test
  parallelize_me!

  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.ledgers.create(name: "name")
    assert_kind_of(ModernTreasury::Models::Ledger, response)
  end

  def test_retrieve
    response = @modern_treasury.ledgers.retrieve("id")
    assert_kind_of(ModernTreasury::Models::Ledger, response)
  end

  def test_update
    response = @modern_treasury.ledgers.update("id")
    assert_kind_of(ModernTreasury::Models::Ledger, response)
  end

  def test_list
    response = @modern_treasury.ledgers.list
    assert_kind_of(ModernTreasury::Page, response)
  end

  def test_delete
    response = @modern_treasury.ledgers.delete("id")
    assert_kind_of(ModernTreasury::Models::Ledger, response)
  end
end
