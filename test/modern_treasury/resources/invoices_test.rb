# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::InvoicesTest < Minitest::Test
  def before_all
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.invoices.create(
      counterparty_id: "counterparty_id",
      due_date: "2019-12-27T18:11:19.117Z",
      originating_account_id: "originating_account_id"
    )

    assert_pattern do
      response => ModernTreasury::Models::Invoice
    end
  end

  def test_retrieve
    response = @modern_treasury.invoices.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::Invoice
    end
  end

  def test_update
    response = @modern_treasury.invoices.update("id")

    assert_pattern do
      response => ModernTreasury::Models::Invoice
    end
  end

  def test_list
    response = @modern_treasury.invoices.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    page = response.next_page
    assert_pattern do
      page => ModernTreasury::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => ModernTreasury::Models::Invoice
    end
  end

  def test_add_payment_order_required_params
    response = @modern_treasury.invoices.add_payment_order("payment_order_id", id: "id")

    assert_pattern do
      response => nil
    end
  end
end
