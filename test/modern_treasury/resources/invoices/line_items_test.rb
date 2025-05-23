# frozen_string_literal: true

require_relative "../../test_helper"

class ModernTreasury::Test::Resources::Invoices::LineItemsTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response = @modern_treasury.invoices.line_items.create("invoice_id", name: "name", unit_amount: 0)

    assert_pattern do
      response => ModernTreasury::Invoices::InvoiceLineItem
    end

    assert_pattern do
      response => {
        id: String,
        amount: Integer,
        created_at: Time,
        description: String,
        direction: String,
        invoice_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        name: String,
        object: String,
        quantity: Integer,
        unit_amount: Integer,
        unit_amount_decimal: String,
        updated_at: Time
      }
    end
  end

  def test_retrieve_required_params
    response = @modern_treasury.invoices.line_items.retrieve("id", invoice_id: "invoice_id")

    assert_pattern do
      response => ModernTreasury::Invoices::InvoiceLineItem
    end

    assert_pattern do
      response => {
        id: String,
        amount: Integer,
        created_at: Time,
        description: String,
        direction: String,
        invoice_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        name: String,
        object: String,
        quantity: Integer,
        unit_amount: Integer,
        unit_amount_decimal: String,
        updated_at: Time
      }
    end
  end

  def test_update_required_params
    response = @modern_treasury.invoices.line_items.update("id", invoice_id: "invoice_id")

    assert_pattern do
      response => ModernTreasury::Invoices::InvoiceLineItem
    end

    assert_pattern do
      response => {
        id: String,
        amount: Integer,
        created_at: Time,
        description: String,
        direction: String,
        invoice_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        name: String,
        object: String,
        quantity: Integer,
        unit_amount: Integer,
        unit_amount_decimal: String,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.invoices.line_items.list("invoice_id")

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::Invoices::InvoiceLineItem
    end

    assert_pattern do
      row => {
        id: String,
        amount: Integer,
        created_at: Time,
        description: String,
        direction: String,
        invoice_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        name: String,
        object: String,
        quantity: Integer,
        unit_amount: Integer,
        unit_amount_decimal: String,
        updated_at: Time
      }
    end
  end

  def test_delete_required_params
    response = @modern_treasury.invoices.line_items.delete("id", invoice_id: "invoice_id")

    assert_pattern do
      response => ModernTreasury::Invoices::InvoiceLineItem
    end

    assert_pattern do
      response => {
        id: String,
        amount: Integer,
        created_at: Time,
        description: String,
        direction: String,
        invoice_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        name: String,
        object: String,
        quantity: Integer,
        unit_amount: Integer,
        unit_amount_decimal: String,
        updated_at: Time
      }
    end
  end
end
