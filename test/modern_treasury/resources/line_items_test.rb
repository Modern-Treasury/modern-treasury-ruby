# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LineItemsTest < Minitest::Test
  parallelize_me!

  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_retrieve_required_params
    response = @modern_treasury.line_items.retrieve(
      "id",
      itemizable_type: "expected_payments",
      itemizable_id: "itemizable_id"
    )
    assert_kind_of(ModernTreasury::Models::LineItem, response)
  end

  def test_update_required_params
    response = @modern_treasury.line_items.update(
      "id",
      itemizable_type: "expected_payments",
      itemizable_id: "itemizable_id"
    )
    assert_kind_of(ModernTreasury::Models::LineItem, response)
  end

  def test_list_required_params
    skip("Prism is broken in this case")
    response = @modern_treasury.line_items.list("itemizable_id", itemizable_type: "expected_payments")
    assert_kind_of(ModernTreasury::Page, response)
  end
end
