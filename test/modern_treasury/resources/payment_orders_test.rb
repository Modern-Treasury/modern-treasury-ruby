# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::PaymentOrdersTest < Test::Unit::TestCase
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.payment_orders.create(
      {
        amount: 0,
        direction: "credit",
        originating_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        type: "ach"
      }
    )
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::PaymentOrder, response),
      response.class.to_s
    )
  end

  def test_retrieve
    response = @modern_treasury.payment_orders.retrieve("string")
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::PaymentOrder, response),
      response.class.to_s
    )
  end

  def test_update
    response = @modern_treasury.payment_orders.update("string")
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::PaymentOrder, response),
      response.class.to_s
    )
  end

  def test_list
    response = @modern_treasury.payment_orders.list
    assert(ModernTreasury::Converter.same_type?(ModernTreasury::Page, response), response.class.to_s)
  end

  def test_create_async_required_params
    response = @modern_treasury.payment_orders.create_async(
      {
        amount: 0,
        direction: "credit",
        originating_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        type: "ach"
      }
    )
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::AsyncResponse, response),
      response.class.to_s
    )
  end
end
