# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::DocumentsTest < Minitest::Test
  parallelize_me!

  def setup
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
      documentable_type: "cases",
      file: [StringIO.new("some file contents"), {filename: "file.txt"}]
    )
    assert_kind_of(ModernTreasury::Models::Document, response)
  end

  def test_retrieve
    response = @modern_treasury.documents.retrieve("id")
    assert_kind_of(ModernTreasury::Models::Document, response)
  end

  def test_list
    response = @modern_treasury.documents.list
    assert_kind_of(ModernTreasury::Page, response)
  end
end
