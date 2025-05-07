# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::DocumentsTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    skip("multipart/form-data not yet supported")

    response =
      @modern_treasury.documents.create(
        documentable_id: "documentable_id",
        documentable_type: :cases,
        file: Pathname(__FILE__)
      )

    assert_pattern do
      response => ModernTreasury::Document
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        discarded_at: Time | nil,
        document_details: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Document::DocumentDetail]),
        document_type: String | nil,
        documentable_id: String,
        documentable_type: ModernTreasury::Document::DocumentableType,
        file: ModernTreasury::Document::File,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        source: String,
        updated_at: Time
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.documents.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Document
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        discarded_at: Time | nil,
        document_details: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Document::DocumentDetail]),
        document_type: String | nil,
        documentable_id: String,
        documentable_type: ModernTreasury::Document::DocumentableType,
        file: ModernTreasury::Document::File,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        source: String,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.documents.list

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::Document
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        discarded_at: Time | nil,
        document_details: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Document::DocumentDetail]),
        document_type: String | nil,
        documentable_id: String,
        documentable_type: ModernTreasury::Document::DocumentableType,
        file: ModernTreasury::Document::File,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        source: String,
        updated_at: Time
      }
    end
  end
end
