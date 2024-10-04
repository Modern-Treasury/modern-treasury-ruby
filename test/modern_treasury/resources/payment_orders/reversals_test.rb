# frozen_string_literal: true

require_relative "../../test_helper"

class ModernTreasury::Test::Resources::PaymentOrders::ReversalsTest < Test::Unit::TestCase
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.payment_orders.reversals.create("payment_order_id", {reason: "duplicate"})
    assert_kind_of(ModernTreasury::Models::Reversal, response)
  end

  def test_retrieve
    response = @modern_treasury.payment_orders.reversals.retrieve("payment_order_id", "reversal_id")
    assert_kind_of(ModernTreasury::Models::Reversal, response)
  end

  def test_list
    response = @modern_treasury.payment_orders.reversals.list("payment_order_id")
    assert_kind_of(ModernTreasury::Page, response)
  end
end
