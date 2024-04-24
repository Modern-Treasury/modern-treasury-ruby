# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::VirtualAccountsTest < Test::Unit::TestCase
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.virtual_accounts.create(
      {internal_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", name: "string"}
    )
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::VirtualAccount, response),
      response.class.to_s
    )
  end

  def test_retrieve
    response = @modern_treasury.virtual_accounts.retrieve("string")
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::VirtualAccount, response),
      response.class.to_s
    )
  end

  def test_update
    response = @modern_treasury.virtual_accounts.update("string")
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::VirtualAccount, response),
      response.class.to_s
    )
  end

  def test_list
    response = @modern_treasury.virtual_accounts.list
    assert(ModernTreasury::Converter.same_type?(ModernTreasury::Page, response), response.class.to_s)
  end

  def test_delete
    response = @modern_treasury.virtual_accounts.delete("string")
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::VirtualAccount, response),
      response.class.to_s
    )
  end
end
