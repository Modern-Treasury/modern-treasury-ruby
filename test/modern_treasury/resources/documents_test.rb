# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::DocumentsTest < Minitest::Test
  def before_all
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    skip("multipart/form-data not yet supported")

    response = @modern_treasury.documents.create(
      documentable_id: "documentable_id",
      documentable_type: :cases,
      file: StringIO.new("some file contents")
    )

    assert_pattern do
      response => ModernTreasury::Models::Document
    end
  end

  def test_retrieve
    response = @modern_treasury.documents.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::Document
    end
  end

  def test_list
    response = @modern_treasury.documents.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    page = response.next_page
    assert_pattern do
      page => ModernTreasury::Page
    end
  end
end
