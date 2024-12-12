# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::InternalAccountsTest < Minitest::Test
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.internal_accounts.create(
      connection_id: "connection_id",
      currency: "USD",
      name: "name",
      party_name: "party_name"
    )
    assert_kind_of(ModernTreasury::Models::InternalAccount, response)
  end

  def test_retrieve
    response = @modern_treasury.internal_accounts.retrieve("id")
    assert_kind_of(ModernTreasury::Models::InternalAccount, response)
  end

  def test_update
    response = @modern_treasury.internal_accounts.update("id")
    assert_kind_of(ModernTreasury::Models::InternalAccount, response)
  end

  def test_list
    response = @modern_treasury.internal_accounts.list
    assert_kind_of(ModernTreasury::Page, response)
  end
end
