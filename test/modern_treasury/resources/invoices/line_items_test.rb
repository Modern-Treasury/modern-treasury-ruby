# frozen_string_literal: true

require_relative "../../test_helper"

class ModernTreasury::Test::Resources::Invoices::LineItemsTest < Test::Unit::TestCase
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.invoices.line_items.create("invoice_id", {name: "name", unit_amount: 0})
    assert_kind_of(ModernTreasury::Models::InvoiceLineItem, response)
  end

  def test_retrieve
    response = @modern_treasury.invoices.line_items.retrieve("invoice_id", "id")
    assert_kind_of(ModernTreasury::Models::InvoiceLineItem, response)
  end

  def test_update
    response = @modern_treasury.invoices.line_items.update("invoice_id", "id")
    assert_kind_of(ModernTreasury::Models::InvoiceLineItem, response)
  end

  def test_list
    response = @modern_treasury.invoices.line_items.list("invoice_id")
    assert_kind_of(ModernTreasury::Page, response)
  end

  def test_delete
    response = @modern_treasury.invoices.line_items.delete("invoice_id", "id")
    assert_kind_of(ModernTreasury::Models::InvoiceLineItem, response)
  end
end
