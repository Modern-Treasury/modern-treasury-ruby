# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LedgerAccountCategoriesTest < Test::Unit::TestCase
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.ledger_account_categories.create(
      {
        currency: "string",
        ledger_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        name: "string",
        normal_balance: "credit"
      }
    )
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::LedgerAccountCategory, response),
      response.class.to_s
    )
  end

  def test_retrieve
    response = @modern_treasury.ledger_account_categories.retrieve("string")
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::LedgerAccountCategory, response),
      response.class.to_s
    )
  end

  def test_update
    response = @modern_treasury.ledger_account_categories.update("string")
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::LedgerAccountCategory, response),
      response.class.to_s
    )
  end

  def test_list
    response = @modern_treasury.ledger_account_categories.list
    assert(ModernTreasury::Converter.same_type?(ModernTreasury::Page, response), response.class.to_s)
  end

  def test_delete
    response = @modern_treasury.ledger_account_categories.delete("string")
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::LedgerAccountCategory, response),
      response.class.to_s
    )
  end

  def test_add_ledger_account
    response = @modern_treasury.ledger_account_categories.add_ledger_account("string", "string")
    assert(ModernTreasury::Converter.same_type?(NilClass, response), response.class.to_s)
  end

  def test_add_nested_category
    response = @modern_treasury.ledger_account_categories.add_nested_category("string", "string")
    assert(ModernTreasury::Converter.same_type?(NilClass, response), response.class.to_s)
  end

  def test_remove_ledger_account
    response = @modern_treasury.ledger_account_categories.remove_ledger_account("string", "string")
    assert(ModernTreasury::Converter.same_type?(NilClass, response), response.class.to_s)
  end

  def test_remove_nested_category
    response = @modern_treasury.ledger_account_categories.remove_nested_category("string", "string")
    assert(ModernTreasury::Converter.same_type?(NilClass, response), response.class.to_s)
  end
end
