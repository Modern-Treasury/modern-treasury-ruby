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

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        discarded_at: Time | nil,
        document_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::Document::DocumentDetail]),
        document_type: String | nil,
        documentable_id: String,
        documentable_type: ModernTreasury::Models::Document::DocumentableType,
        file: ModernTreasury::Models::Document::File,
        live_mode: ModernTreasury::BooleanModel,
        object: String,
        source: String,
        updated_at: Time
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.documents.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::Document
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        discarded_at: Time | nil,
        document_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::Document::DocumentDetail]),
        document_type: String | nil,
        documentable_id: String,
        documentable_type: ModernTreasury::Models::Document::DocumentableType,
        file: ModernTreasury::Models::Document::File,
        live_mode: ModernTreasury::BooleanModel,
        object: String,
        source: String,
        updated_at: Time
      }
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

    row = response.to_enum.first
    assert_pattern do
      row => ModernTreasury::Models::Document
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        discarded_at: Time | nil,
        document_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::Document::DocumentDetail]),
        document_type: String | nil,
        documentable_id: String,
        documentable_type: ModernTreasury::Models::Document::DocumentableType,
        file: ModernTreasury::Models::Document::File,
        live_mode: ModernTreasury::BooleanModel,
        object: String,
        source: String,
        updated_at: Time
      }
    end
  end
end
