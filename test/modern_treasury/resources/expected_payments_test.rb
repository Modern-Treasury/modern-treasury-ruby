# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::ExpectedPaymentsTest < Minitest::Test
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create
    response = @modern_treasury.expected_payments.create
    assert_kind_of(ModernTreasury::Models::ExpectedPayment, response)
  end

  def test_retrieve
    response = @modern_treasury.expected_payments.retrieve("id")
    assert_kind_of(ModernTreasury::Models::ExpectedPayment, response)
  end

  def test_update
    response = @modern_treasury.expected_payments.update("id")
    assert_kind_of(ModernTreasury::Models::ExpectedPayment, response)
  end

  def test_list
    response = @modern_treasury.expected_payments.list
    assert_kind_of(ModernTreasury::Page, response)
  end

  def test_delete
    response = @modern_treasury.expected_payments.delete("id")
    assert_kind_of(ModernTreasury::Models::ExpectedPayment, response)
  end
end
