# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::ReturnsTest < Test::Unit::TestCase
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.returns.create(
      {returnable_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", returnable_type: "incoming_payment_detail"}
    )
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::ReturnObject, response),
      response.class.to_s
    )
  end

  def test_retrieve
    response = @modern_treasury.returns.retrieve("string")
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::ReturnObject, response),
      response.class.to_s
    )
  end

  def test_list
    response = @modern_treasury.returns.list
    assert(ModernTreasury::Converter.same_type?(ModernTreasury::Page, response), response.class.to_s)
  end
end
