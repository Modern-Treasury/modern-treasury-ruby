# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::AccountDetailsTest < Test::Unit::TestCase
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
      "string",
      {account_number: "string"}
    )
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::AccountDetail, response),
      response.class.to_s
    )
  end

  def test_retrieve
    response = @modern_treasury.account_details.retrieve("external_accounts", "string", "string")
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::AccountDetail, response),
      response.class.to_s
    )
  end

  def test_list
    response = @modern_treasury.account_details.list("external_accounts", "string")
    assert(ModernTreasury::Converter.same_type?(ModernTreasury::Page, response), response.class.to_s)
  end

  def test_delete
    response = @modern_treasury.account_details.delete("external_accounts", "string", "string")
    assert(ModernTreasury::Converter.same_type?(NilClass, response), response.class.to_s)
  end
end
