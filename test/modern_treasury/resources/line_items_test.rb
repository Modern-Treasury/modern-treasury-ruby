# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LineItemsTest < Test::Unit::TestCase
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_retrieve
    response = @modern_treasury.line_items.retrieve("expected_payments", "string", "string")
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::LineItem, response),
      response.class.to_s
    )
  end

  def test_update
    response = @modern_treasury.line_items.update("expected_payments", "string", "string")
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::LineItem, response),
      response.class.to_s
    )
  end
end
