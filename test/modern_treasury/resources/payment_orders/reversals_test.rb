# frozen_string_literal: true

require_relative "../../test_helper"

class ModernTreasury::Test::Resources::PaymentOrders::ReversalsTest < Minitest::Test
  parallelize_me!

  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.payment_orders.reversals.create("payment_order_id", {reason: "duplicate"})
    assert_kind_of(ModernTreasury::Models::Reversal, response)
  end

  def test_retrieve_required_params
    response = @modern_treasury.payment_orders.reversals.retrieve(
      "reversal_id",
      {payment_order_id: "payment_order_id"}
    )
    assert_kind_of(ModernTreasury::Models::Reversal, response)
  end

  def test_list
    response = @modern_treasury.payment_orders.reversals.list("payment_order_id")
    assert_kind_of(ModernTreasury::Page, response)
  end
end
