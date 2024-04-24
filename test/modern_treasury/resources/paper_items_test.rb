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
    response = @modern_treasury.paper_items.retrieve("string")
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::PaperItem, response),
      response.class.to_s
    )
  end

  def test_list
    response = @modern_treasury.paper_items.list
    assert(ModernTreasury::Converter.same_type?(ModernTreasury::Page, response), response.class.to_s)
  end
end
