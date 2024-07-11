# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::ValidationsTest < Test::Unit::TestCase
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_validate_routing_number_required_params
    response = @modern_treasury.validations.validate_routing_number(
      {routing_number: "routing_number", routing_number_type: "aba"}
    )
    assert_kind_of(ModernTreasury::Models::RoutingNumberLookupRequest, response)
  end
end
