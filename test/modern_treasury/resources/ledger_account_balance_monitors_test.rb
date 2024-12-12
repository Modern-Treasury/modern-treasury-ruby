# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LedgerAccountBalanceMonitorsTest < Minitest::Test
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.ledger_account_balance_monitors.create(
      alert_condition: {"field" => "field", "operator" => "operator", "value" => 0},
      ledger_account_id: "ledger_account_id"
    )
    assert_kind_of(ModernTreasury::Models::LedgerAccountBalanceMonitor, response)
  end

  def test_retrieve
    response = @modern_treasury.ledger_account_balance_monitors.retrieve("id")
    assert_kind_of(ModernTreasury::Models::LedgerAccountBalanceMonitor, response)
  end

  def test_update
    response = @modern_treasury.ledger_account_balance_monitors.update("id")
    assert_kind_of(ModernTreasury::Models::LedgerAccountBalanceMonitor, response)
  end

  def test_list
    response = @modern_treasury.ledger_account_balance_monitors.list
    assert_kind_of(ModernTreasury::Page, response)
  end

  def test_delete
    response = @modern_treasury.ledger_account_balance_monitors.delete("id")
    assert_kind_of(ModernTreasury::Models::LedgerAccountBalanceMonitor, response)
  end
end
