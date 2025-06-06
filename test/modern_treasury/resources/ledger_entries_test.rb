# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LedgerEntriesTest < ModernTreasury::Test::ResourceTest
  def test_retrieve
    response = @modern_treasury.ledger_entries.retrieve("id")

    assert_pattern do
      response => ModernTreasury::LedgerEntry
    end

    assert_pattern do
      response => {
        id: String,
        amount: Integer,
        created_at: Time,
        direction: ModernTreasury::TransactionDirection,
        discarded_at: Time | nil,
        ledger_account_currency: String,
        ledger_account_currency_exponent: Integer,
        ledger_account_id: String,
        ledger_account_lock_version: Integer | nil,
        ledger_transaction_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        resulting_ledger_account_balances: ModernTreasury::LedgerEntry::ResultingLedgerAccountBalances | nil,
        status: ModernTreasury::LedgerEntry::Status,
        updated_at: Time
      }
    end
  end

  def test_update
    response = @modern_treasury.ledger_entries.update("id")

    assert_pattern do
      response => ModernTreasury::LedgerEntry
    end

    assert_pattern do
      response => {
        id: String,
        amount: Integer,
        created_at: Time,
        direction: ModernTreasury::TransactionDirection,
        discarded_at: Time | nil,
        ledger_account_currency: String,
        ledger_account_currency_exponent: Integer,
        ledger_account_id: String,
        ledger_account_lock_version: Integer | nil,
        ledger_transaction_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        resulting_ledger_account_balances: ModernTreasury::LedgerEntry::ResultingLedgerAccountBalances | nil,
        status: ModernTreasury::LedgerEntry::Status,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.ledger_entries.list

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::LedgerEntry
    end

    assert_pattern do
      row => {
        id: String,
        amount: Integer,
        created_at: Time,
        direction: ModernTreasury::TransactionDirection,
        discarded_at: Time | nil,
        ledger_account_currency: String,
        ledger_account_currency_exponent: Integer,
        ledger_account_id: String,
        ledger_account_lock_version: Integer | nil,
        ledger_transaction_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        resulting_ledger_account_balances: ModernTreasury::LedgerEntry::ResultingLedgerAccountBalances | nil,
        status: ModernTreasury::LedgerEntry::Status,
        updated_at: Time
      }
    end
  end
end
