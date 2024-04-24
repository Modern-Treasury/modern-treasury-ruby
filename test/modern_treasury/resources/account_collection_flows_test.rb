# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::AccountCollectionFlowsTest < Test::Unit::TestCase
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.account_collection_flows.create(
      {counterparty_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", payment_types: %w[string string string]}
    )
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::AccountCollectionFlow, response),
      response.class.to_s
    )
  end

  def test_retrieve
    response = @modern_treasury.account_collection_flows.retrieve("string")
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::AccountCollectionFlow, response),
      response.class.to_s
    )
  end

  def test_update_required_params
    response = @modern_treasury.account_collection_flows.update("string", {status: "cancelled"})
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::AccountCollectionFlow, response),
      response.class.to_s
    )
  end

  def test_list
    response = @modern_treasury.account_collection_flows.list
    assert(ModernTreasury::Converter.same_type?(ModernTreasury::Page, response), response.class.to_s)
  end
end
