# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LedgerAccountSettlementsTest < Minitest::Test
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.ledger_account_settlements.create(
      contra_ledger_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
      settled_ledger_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
    )

    assert_pattern do
      response => ModernTreasury::Models::LedgerAccountSettlement
    end
  end

  def test_retrieve
    response = @modern_treasury.ledger_account_settlements.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::LedgerAccountSettlement
    end
  end

  def test_update
    response = @modern_treasury.ledger_account_settlements.update("id")

    assert_pattern do
      response => ModernTreasury::Models::LedgerAccountSettlement
    end
  end

  def test_list
    response = @modern_treasury.ledger_account_settlements.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    page = response.next_page
    assert_pattern do
      page => ModernTreasury::Page
    end
  end
end
