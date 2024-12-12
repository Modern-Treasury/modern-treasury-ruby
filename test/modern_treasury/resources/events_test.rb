# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::EventsTest < Minitest::Test
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_retrieve
    response = @modern_treasury.events.retrieve("id")
    assert_kind_of(ModernTreasury::Models::Event, response)
  end

  def test_list
    response = @modern_treasury.events.list
    assert_kind_of(ModernTreasury::Page, response)
  end
end
