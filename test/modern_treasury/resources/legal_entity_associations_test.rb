# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LegalEntityAssociationsTest < Test::Unit::TestCase
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.legal_entity_associations.create(
      {relationship_types: %w[beneficial_owner control_person]}
    )
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::LegalEntityAssociation, response),
      response.class.to_s
    )
  end
end
