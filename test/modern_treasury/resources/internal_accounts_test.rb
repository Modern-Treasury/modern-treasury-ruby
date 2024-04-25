# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::InternalAccountsTest < Test::Unit::TestCase
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.internal_accounts.create(
      {connection_id: "string", currency: "USD", name: "string", party_name: "string"}
    )
    assert_kind_of(ModernTreasury::Models::InternalAccount, response)
  end

  def test_retrieve
    response = @modern_treasury.internal_accounts.retrieve("string")
    assert_kind_of(ModernTreasury::Models::InternalAccount, response)
  end

  def test_update
    response = @modern_treasury.internal_accounts.update("string")
    assert_kind_of(ModernTreasury::Models::InternalAccount, response)
  end

  def test_list
    response = @modern_treasury.internal_accounts.list
    assert_kind_of(ModernTreasury::Page, response)
  end
end
