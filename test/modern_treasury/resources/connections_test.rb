# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::ConnectionsTest < Minitest::Test
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_list
    response = @modern_treasury.connections.list
    assert_kind_of(ModernTreasury::Page, response)
  end
end
