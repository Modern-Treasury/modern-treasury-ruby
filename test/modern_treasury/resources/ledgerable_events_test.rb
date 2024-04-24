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
    response = @modern_treasury.ledgerable_events.create({name: "string"})
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::LedgerableEvent, response),
      response.class.to_s
    )
  end

  def test_retrieve
    response = @modern_treasury.ledgerable_events.retrieve("string")
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::LedgerableEvent, response),
      response.class.to_s
    )
  end
end
