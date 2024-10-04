# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LineItemsTest < Minitest::Test
  parallelize_me!

  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_retrieve
    response = @modern_treasury.line_items.retrieve("expected_payments", "itemizable_id", "id")
    assert_kind_of(ModernTreasury::Models::LineItem, response)
  end

  def test_update
    response = @modern_treasury.line_items.update("expected_payments", "itemizable_id", "id")
    assert_kind_of(ModernTreasury::Models::LineItem, response)
  end

  def test_list
    skip("Prism is broken in this case")
    response = @modern_treasury.line_items.list("expected_payments", "itemizable_id")
    assert_kind_of(ModernTreasury::Page, response)
  end
end
