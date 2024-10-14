# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::RoutingDetailsTest < Minitest::Test
  parallelize_me!

  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.routing_details.create(
      "external_accounts",
      "account_id",
      {routing_number: "routing_number", routing_number_type: "aba"}
    )
    assert_kind_of(ModernTreasury::Models::RoutingDetail, response)
  end

  def test_retrieve
    response = @modern_treasury.routing_details.retrieve("external_accounts", "account_id", "id")
    assert_kind_of(ModernTreasury::Models::RoutingDetail, response)
  end

  def test_list
    response = @modern_treasury.routing_details.list("external_accounts", "account_id")
    assert_kind_of(ModernTreasury::Page, response)
  end

  def test_delete
    response = @modern_treasury.routing_details.delete("external_accounts", "account_id", "id")
    assert_nil(response)
  end
end
