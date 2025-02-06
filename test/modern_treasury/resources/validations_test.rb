# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::ValidationsTest < Minitest::Test
  def before_all
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_validate_routing_number_required_params
    response = @modern_treasury.validations.validate_routing_number(
      routing_number: "routing_number",
      routing_number_type: :aba
    )

    assert_pattern do
      response => ModernTreasury::Models::RoutingNumberLookupRequest
    end
  end
end
