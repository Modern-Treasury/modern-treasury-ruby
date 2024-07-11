# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::PaperItemsTest < Test::Unit::TestCase
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_retrieve
    response = @modern_treasury.paper_items.retrieve("id")
    assert_kind_of(ModernTreasury::Models::PaperItem, response)
  end

  def test_list
    response = @modern_treasury.paper_items.list
    assert_kind_of(ModernTreasury::Page, response)
  end
end
