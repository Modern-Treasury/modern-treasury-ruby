# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::InvoicesTest < Minitest::Test
  parallelize_me!

  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.invoices.create(
      {
        counterparty_id: "counterparty_id",
        due_date: "2019-12-27T18:11:19.117Z",
        originating_account_id: "originating_account_id"
      }
    )
    assert_kind_of(ModernTreasury::Models::Invoice, response)
  end

  def test_retrieve
    response = @modern_treasury.invoices.retrieve("id")
    assert_kind_of(ModernTreasury::Models::Invoice, response)
  end

  def test_update
    response = @modern_treasury.invoices.update("id")
    assert_kind_of(ModernTreasury::Models::Invoice, response)
  end

  def test_list
    response = @modern_treasury.invoices.list
    assert_kind_of(ModernTreasury::Page, response)
  end

  def test_add_payment_order
    response = @modern_treasury.invoices.add_payment_order("id", "payment_order_id")
    assert_nil(response)
  end
end
