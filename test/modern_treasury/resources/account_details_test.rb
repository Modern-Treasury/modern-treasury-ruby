# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::AccountDetailsTest < Minitest::Test
  parallelize_me!

  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.account_details.create(
      "external_accounts",
      "account_id",
      {account_number: "account_number"}
    )
    assert_kind_of(ModernTreasury::Models::AccountDetail, response)
  end

  def test_retrieve
    response = @modern_treasury.account_details.retrieve("external_accounts", "account_id", "id")
    assert_kind_of(ModernTreasury::Models::AccountDetail, response)
  end

  def test_list
    response = @modern_treasury.account_details.list("external_accounts", "account_id")
    assert_kind_of(ModernTreasury::Page, response)
  end

  def test_delete
    response = @modern_treasury.account_details.delete("external_accounts", "account_id", "id")
    assert_nil(response)
  end
end
