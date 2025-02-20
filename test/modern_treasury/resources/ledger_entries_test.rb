# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LedgerEntriesTest < Minitest::Test
  def before_all
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_retrieve
    response = @modern_treasury.ledger_entries.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::LedgerEntry
    end

    assert_pattern do
      response => {
        id: String,
        amount: Integer,
        created_at: Time,
        direction: ModernTreasury::Models::TransactionDirection,
        discarded_at: Time | nil,
        ledger_account_currency: String,
        ledger_account_currency_exponent: Integer,
        ledger_account_id: String,
        ledger_account_lock_version: Integer | nil,
        ledger_transaction_id: String,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        object: String,
        resulting_ledger_account_balances: ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances | nil,
        status: ModernTreasury::Models::LedgerEntry::Status,
        updated_at: Time
      }
    end
  end

  def test_update
    response = @modern_treasury.ledger_entries.update("id")

    assert_pattern do
      response => ModernTreasury::Models::LedgerEntry
    end

    assert_pattern do
      response => {
        id: String,
        amount: Integer,
        created_at: Time,
        direction: ModernTreasury::Models::TransactionDirection,
        discarded_at: Time | nil,
        ledger_account_currency: String,
        ledger_account_currency_exponent: Integer,
        ledger_account_id: String,
        ledger_account_lock_version: Integer | nil,
        ledger_transaction_id: String,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        object: String,
        resulting_ledger_account_balances: ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances | nil,
        status: ModernTreasury::Models::LedgerEntry::Status,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.ledger_entries.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    page = response.next_page
    assert_pattern do
      page => ModernTreasury::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => ModernTreasury::Models::LedgerEntry
    end

    assert_pattern do
      row => {
        id: String,
        amount: Integer,
        created_at: Time,
        direction: ModernTreasury::Models::TransactionDirection,
        discarded_at: Time | nil,
        ledger_account_currency: String,
        ledger_account_currency_exponent: Integer,
        ledger_account_id: String,
        ledger_account_lock_version: Integer | nil,
        ledger_transaction_id: String,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        object: String,
        resulting_ledger_account_balances: ModernTreasury::Models::LedgerEntry::ResultingLedgerAccountBalances | nil,
        status: ModernTreasury::Models::LedgerEntry::Status,
        updated_at: Time
      }
    end
  end
end
