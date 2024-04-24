# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LedgerAccountBalanceMonitorsTest < Test::Unit::TestCase
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.ledger_account_balance_monitors.create(
      {
        alert_condition: {"field" => "string", "operator" => "string", "value" => 0},
        ledger_account_id: "string"
      }
    )
    assert(
      ModernTreasury::Converter.same_type?(
        ModernTreasury::Models::LedgerAccountBalanceMonitor,
        response
      ),
      response.class.to_s
    )
  end

  def test_retrieve
    response = @modern_treasury.ledger_account_balance_monitors.retrieve("string")
    assert(
      ModernTreasury::Converter.same_type?(
        ModernTreasury::Models::LedgerAccountBalanceMonitor,
        response
      ),
      response.class.to_s
    )
  end

  def test_update
    response = @modern_treasury.ledger_account_balance_monitors.update("string")
    assert(
      ModernTreasury::Converter.same_type?(
        ModernTreasury::Models::LedgerAccountBalanceMonitor,
        response
      ),
      response.class.to_s
    )
  end

  def test_list
    response = @modern_treasury.ledger_account_balance_monitors.list
    assert(ModernTreasury::Converter.same_type?(ModernTreasury::Page, response), response.class.to_s)
  end

  def test_delete
    response = @modern_treasury.ledger_account_balance_monitors.delete("string")
    assert(
      ModernTreasury::Converter.same_type?(
        ModernTreasury::Models::LedgerAccountBalanceMonitor,
        response
      ),
      response.class.to_s
    )
  end
end
