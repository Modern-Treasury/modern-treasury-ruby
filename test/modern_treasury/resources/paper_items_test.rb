# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::PaperItemsTest < Minitest::Test
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_retrieve
    response = @modern_treasury.paper_items.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::PaperItem
    end
  end

  def test_list
    response = @modern_treasury.paper_items.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    page = response.next_page
    assert_pattern do
      page => ModernTreasury::Page
    end
  end
end
