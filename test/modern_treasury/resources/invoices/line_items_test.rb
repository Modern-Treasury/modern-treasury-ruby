# frozen_string_literal: true

require_relative "../../test_helper"

class ModernTreasury::Test::Resources::Invoices::LineItemsTest < Minitest::Test
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.invoices.line_items.create("invoice_id", name: "name", unit_amount: 0)

    assert_pattern do
      response => ModernTreasury::Models::Invoices::InvoiceLineItem
    end
  end

  def test_retrieve_required_params
    response = @modern_treasury.invoices.line_items.retrieve("id", invoice_id: "invoice_id")

    assert_pattern do
      response => ModernTreasury::Models::Invoices::InvoiceLineItem
    end
  end

  def test_update_required_params
    response = @modern_treasury.invoices.line_items.update("id", invoice_id: "invoice_id")

    assert_pattern do
      response => ModernTreasury::Models::Invoices::InvoiceLineItem
    end
  end

  def test_list
    response = @modern_treasury.invoices.line_items.list("invoice_id")

    assert_pattern do
      response => ModernTreasury::Page
    end

    page = response.next_page
    assert_pattern do
      page => ModernTreasury::Page
    end
  end

  def test_delete_required_params
    response = @modern_treasury.invoices.line_items.delete("id", invoice_id: "invoice_id")

    assert_pattern do
      response => ModernTreasury::Models::Invoices::InvoiceLineItem
    end
  end
end
