# frozen_string_literal: true

require_relative "../../test_helper"

class ModernTreasury::Test::Resources::Transactions::LineItemsTest < Minitest::Test
  parallelize_me!

  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.transactions.line_items.create(
      {
        amount: 0,
        expected_payment_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        transaction_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      }
    )
    assert_kind_of(ModernTreasury::Models::TransactionLineItem, response)
  end

  def test_retrieve
    response = @modern_treasury.transactions.line_items.retrieve("id")
    assert_kind_of(ModernTreasury::Models::TransactionLineItem, response)
  end

  def test_list
    response = @modern_treasury.transactions.line_items.list
    assert_kind_of(ModernTreasury::Page, response)
  end

  def test_delete
    response = @modern_treasury.transactions.line_items.delete("id")
    assert_nil(response)
  end
end
