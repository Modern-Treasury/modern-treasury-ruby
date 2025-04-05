# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LedgerAccountBalanceMonitorsTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response =
      @modern_treasury.ledger_account_balance_monitors.create(
        alert_condition: {field: "field", operator: "operator", value: 0},
        ledger_account_id: "ledger_account_id"
      )

    assert_pattern do
      response => ModernTreasury::Models::LedgerAccountBalanceMonitor
    end

    assert_pattern do
      response => {
        id: String,
        alert_condition: ModernTreasury::Models::LedgerAccountBalanceMonitor::AlertCondition,
        created_at: Time,
        current_ledger_account_balance_state: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState,
        description: String | nil,
        discarded_at: Time | nil,
        ledger_account_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        updated_at: Time
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.ledger_account_balance_monitors.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::LedgerAccountBalanceMonitor
    end

    assert_pattern do
      response => {
        id: String,
        alert_condition: ModernTreasury::Models::LedgerAccountBalanceMonitor::AlertCondition,
        created_at: Time,
        current_ledger_account_balance_state: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState,
        description: String | nil,
        discarded_at: Time | nil,
        ledger_account_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        updated_at: Time
      }
    end
  end

  def test_update
    response = @modern_treasury.ledger_account_balance_monitors.update("id")

    assert_pattern do
      response => ModernTreasury::Models::LedgerAccountBalanceMonitor
    end

    assert_pattern do
      response => {
        id: String,
        alert_condition: ModernTreasury::Models::LedgerAccountBalanceMonitor::AlertCondition,
        created_at: Time,
        current_ledger_account_balance_state: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState,
        description: String | nil,
        discarded_at: Time | nil,
        ledger_account_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.ledger_account_balance_monitors.list

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::Models::LedgerAccountBalanceMonitor
    end

    assert_pattern do
      row => {
        id: String,
        alert_condition: ModernTreasury::Models::LedgerAccountBalanceMonitor::AlertCondition,
        created_at: Time,
        current_ledger_account_balance_state: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState,
        description: String | nil,
        discarded_at: Time | nil,
        ledger_account_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        updated_at: Time
      }
    end
  end

  def test_delete
    response = @modern_treasury.ledger_account_balance_monitors.delete("id")

    assert_pattern do
      response => ModernTreasury::Models::LedgerAccountBalanceMonitor
    end

    assert_pattern do
      response => {
        id: String,
        alert_condition: ModernTreasury::Models::LedgerAccountBalanceMonitor::AlertCondition,
        created_at: Time,
        current_ledger_account_balance_state: ModernTreasury::Models::LedgerAccountBalanceMonitor::CurrentLedgerAccountBalanceState,
        description: String | nil,
        discarded_at: Time | nil,
        ledger_account_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        updated_at: Time
      }
    end
  end
end
