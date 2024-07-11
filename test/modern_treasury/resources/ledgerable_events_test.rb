# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LedgerableEventsTest < Test::Unit::TestCase
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.ledgerable_events.create({name: "name"})
    assert_kind_of(ModernTreasury::Models::LedgerableEvent, response)
  end

  def test_retrieve
    response = @modern_treasury.ledgerable_events.retrieve("id")
    assert_kind_of(ModernTreasury::Models::LedgerableEvent, response)
  end
end
