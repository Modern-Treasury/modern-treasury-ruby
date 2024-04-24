# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::InvoicesTest < Test::Unit::TestCase
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.invoices.create(
      {counterparty_id: "string", due_date: "2019-12-27T18:11:19.117Z", originating_account_id: "string"}
    )
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::Invoice, response),
      response.class.to_s
    )
  end

  def test_retrieve
    response = @modern_treasury.invoices.retrieve("string")
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::Invoice, response),
      response.class.to_s
    )
  end

  def test_update
    response = @modern_treasury.invoices.update("string")
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::Invoice, response),
      response.class.to_s
    )
  end

  def test_list
    response = @modern_treasury.invoices.list
    assert(ModernTreasury::Converter.same_type?(ModernTreasury::Page, response), response.class.to_s)
  end

  def test_add_payment_order
    response = @modern_treasury.invoices.add_payment_order("string", "string")
    assert(ModernTreasury::Converter.same_type?(NilClass, response), response.class.to_s)
  end
end
