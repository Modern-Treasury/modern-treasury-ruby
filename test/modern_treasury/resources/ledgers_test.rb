# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LedgersTest < Test::Unit::TestCase
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.ledgers.create({name: "string"})
    assert_kind_of(ModernTreasury::Models::Ledger, response)
  end

  def test_retrieve
    response = @modern_treasury.ledgers.retrieve("string")
    assert_kind_of(ModernTreasury::Models::Ledger, response)
  end

  def test_update
    response = @modern_treasury.ledgers.update("string")
    assert_kind_of(ModernTreasury::Models::Ledger, response)
  end

  def test_list
    response = @modern_treasury.ledgers.list
    assert_kind_of(ModernTreasury::Page, response)
  end

  def test_delete
    response = @modern_treasury.ledgers.delete("string")
    assert_kind_of(ModernTreasury::Models::Ledger, response)
  end
end
