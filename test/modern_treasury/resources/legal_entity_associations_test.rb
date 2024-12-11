# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LegalEntityAssociationsTest < Minitest::Test
  parallelize_me!

  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.legal_entity_associations.create(
      parent_legal_entity_id: "parent_legal_entity_id",
      relationship_types: ["beneficial_owner"]
    )
    assert_kind_of(ModernTreasury::Models::LegalEntityAssociation, response)
  end
end
