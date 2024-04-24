# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::EventsTest < Test::Unit::TestCase
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_retrieve
    response = @modern_treasury.events.retrieve("string")
    assert(ModernTreasury::Converter.same_type?(ModernTreasury::Models::Event, response), response.class.to_s)
  end

  def test_list
    response = @modern_treasury.events.list
    assert(ModernTreasury::Converter.same_type?(ModernTreasury::Page, response), response.class.to_s)
  end
end
