# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::RoutingDetailsTest < Minitest::Test
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.routing_details.create(
      "account_id",
      accounts_type: "external_accounts",
      routing_number: "routing_number",
      routing_number_type: "aba"
    )
    assert_kind_of(ModernTreasury::Models::RoutingDetail, response)
  end

  def test_retrieve_required_params
    response = @modern_treasury.routing_details.retrieve(
      "id",
      accounts_type: "external_accounts",
      account_id: "account_id"
    )
    assert_kind_of(ModernTreasury::Models::RoutingDetail, response)
  end

  def test_list_required_params
    response = @modern_treasury.routing_details.list("account_id", accounts_type: "external_accounts")
    assert_kind_of(ModernTreasury::Page, response)
  end

  def test_delete_required_params
    response = @modern_treasury.routing_details.delete(
      "id",
      accounts_type: "external_accounts",
      account_id: "account_id"
    )
    assert_nil(response)
  end
end
