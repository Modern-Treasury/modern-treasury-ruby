# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::PaymentFlowsTest < Test::Unit::TestCase
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.payment_flows.create(
      {
        amount: 0,
        counterparty_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        currency: "string",
        direction: "credit",
        originating_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      }
    )
    assert_kind_of(ModernTreasury::Models::PaymentFlow, response)
  end

  def test_retrieve
    response = @modern_treasury.payment_flows.retrieve("string")
    assert_kind_of(ModernTreasury::Models::PaymentFlow, response)
  end

  def test_update_required_params
    response = @modern_treasury.payment_flows.update("string", {status: "cancelled"})
    assert_kind_of(ModernTreasury::Models::PaymentFlow, response)
  end

  def test_list
    response = @modern_treasury.payment_flows.list
    assert_kind_of(ModernTreasury::Page, response)
  end
end
