# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LedgerAccountSettlementsTest < Test::Unit::TestCase
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.ledger_account_settlements.create(
      {
        contra_ledger_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        settled_ledger_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      }
    )
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::LedgerAccountSettlement, response),
      response.class.to_s
    )
  end

  def test_retrieve
    response = @modern_treasury.ledger_account_settlements.retrieve("string")
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::LedgerAccountSettlement, response),
      response.class.to_s
    )
  end

  def test_update
    response = @modern_treasury.ledger_account_settlements.update("string")
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::LedgerAccountSettlement, response),
      response.class.to_s
    )
  end

  def test_list
    response = @modern_treasury.ledger_account_settlements.list
    assert(ModernTreasury::Converter.same_type?(ModernTreasury::Page, response), response.class.to_s)
  end
end
