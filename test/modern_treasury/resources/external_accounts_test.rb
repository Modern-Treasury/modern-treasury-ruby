# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::ExternalAccountsTest < Test::Unit::TestCase
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.external_accounts.create({counterparty_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"})
    assert_kind_of(ModernTreasury::Models::ExternalAccount, response)
  end

  def test_retrieve
    response = @modern_treasury.external_accounts.retrieve("id")
    assert_kind_of(ModernTreasury::Models::ExternalAccount, response)
  end

  def test_update
    response = @modern_treasury.external_accounts.update("id")
    assert_kind_of(ModernTreasury::Models::ExternalAccount, response)
  end

  def test_list
    response = @modern_treasury.external_accounts.list
    assert_kind_of(ModernTreasury::Page, response)
  end

  def test_delete
    response = @modern_treasury.external_accounts.delete("id")
    assert_nil(response)
  end

  def test_complete_verification
    response = @modern_treasury.external_accounts.complete_verification("id")
    assert_kind_of(ModernTreasury::Models::ExternalAccount, response)
  end

  def test_verify_required_params
    response = @modern_treasury.external_accounts.verify(
      "id",
      {originating_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", payment_type: "ach"}
    )
    refute_nil(Object, response)
  end
end
