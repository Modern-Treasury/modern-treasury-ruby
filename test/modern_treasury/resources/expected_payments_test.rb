# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::ExpectedPaymentsTest < Test::Unit::TestCase
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.expected_payments.create(
      {
        amount_lower_bound: 0,
        amount_upper_bound: 0,
        direction: "credit",
        internal_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      }
    )
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::ExpectedPayment, response),
      response.class.to_s
    )
  end

  def test_retrieve
    response = @modern_treasury.expected_payments.retrieve("string")
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::ExpectedPayment, response),
      response.class.to_s
    )
  end

  def test_update
    response = @modern_treasury.expected_payments.update("string")
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::ExpectedPayment, response),
      response.class.to_s
    )
  end

  def test_list
    response = @modern_treasury.expected_payments.list
    assert(ModernTreasury::Converter.same_type?(ModernTreasury::Page, response), response.class.to_s)
  end

  def test_delete
    response = @modern_treasury.expected_payments.delete("string")
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::ExpectedPayment, response),
      response.class.to_s
    )
  end
end
