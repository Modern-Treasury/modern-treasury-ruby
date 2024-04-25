# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::CounterpartiesTest < Test::Unit::TestCase
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.counterparties.create({name: "string"})
    assert_kind_of(ModernTreasury::Models::Counterparty, response)
  end

  def test_retrieve
    response = @modern_treasury.counterparties.retrieve("string")
    assert_kind_of(ModernTreasury::Models::Counterparty, response)
  end

  def test_update
    response = @modern_treasury.counterparties.update("string")
    assert_kind_of(ModernTreasury::Models::Counterparty, response)
  end

  def test_list
    response = @modern_treasury.counterparties.list
    assert_kind_of(ModernTreasury::Page, response)
  end

  def test_delete
    response = @modern_treasury.counterparties.delete("string")
    assert_nil(response)
  end

  def test_collect_account_required_params
    response = @modern_treasury.counterparties.collect_account("string", {direction: "credit"})
    assert_kind_of(ModernTreasury::Models::CounterpartyCollectAccountResponse, response)
  end
end
