# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::TransactionsTest < Minitest::Test
  parallelize_me!

  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.transactions.create(
      {
        amount: 0,
        as_of_date: "2019-12-27",
        direction: "direction",
        internal_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        vendor_code: "vendor_code",
        vendor_code_type: "vendor_code_type"
      }
    )
    assert_kind_of(ModernTreasury::Models::Transaction, response)
  end

  def test_retrieve
    response = @modern_treasury.transactions.retrieve("id")
    assert_kind_of(ModernTreasury::Models::Transaction, response)
  end

  def test_update
    response = @modern_treasury.transactions.update("id")
    assert_kind_of(ModernTreasury::Models::Transaction, response)
  end

  def test_list
    response = @modern_treasury.transactions.list
    assert_kind_of(ModernTreasury::Page, response)
  end

  def test_delete
    response = @modern_treasury.transactions.delete("id")
    assert_nil(response)
  end
end
