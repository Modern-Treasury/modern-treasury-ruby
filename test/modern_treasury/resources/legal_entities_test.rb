# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LegalEntitiesTest < Minitest::Test
  parallelize_me!

  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.legal_entities.create({legal_entity_type: "business"})
    assert_kind_of(ModernTreasury::Models::LegalEntity, response)
  end

  def test_retrieve
    response = @modern_treasury.legal_entities.retrieve("id")
    assert_kind_of(ModernTreasury::Models::LegalEntity, response)
  end

  def test_update
    response = @modern_treasury.legal_entities.update("id")
    assert_kind_of(ModernTreasury::Models::LegalEntity, response)
  end

  def test_list
    response = @modern_treasury.legal_entities.list
    assert_kind_of(ModernTreasury::Page, response)
  end
end
