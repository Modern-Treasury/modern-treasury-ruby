# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LedgerAccountsTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response = @modern_treasury.ledger_accounts.create(
      currency: "currency",
      ledger_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
      name: "name",
      normal_balance: :credit
    )

    assert_pattern do
      response => ModernTreasury::Models::LedgerAccount
    end

    assert_pattern do
      response => {
        id: String,
        balances: ModernTreasury::Models::LedgerAccount::Balances,
        created_at: Time,
        description: String | nil,
        discarded_at: Time | nil,
        ledger_id: String,
        ledgerable_id: String | nil,
        ledgerable_type: ModernTreasury::Models::LedgerAccount::LedgerableType | nil,
        live_mode: ModernTreasury::BooleanModel,
        lock_version: Integer,
        metadata: ^(ModernTreasury::HashOf[String]),
        name: String,
        normal_balance: ModernTreasury::Models::TransactionDirection,
        object: String,
        updated_at: Time
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.ledger_accounts.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::LedgerAccount
    end

    assert_pattern do
      response => {
        id: String,
        balances: ModernTreasury::Models::LedgerAccount::Balances,
        created_at: Time,
        description: String | nil,
        discarded_at: Time | nil,
        ledger_id: String,
        ledgerable_id: String | nil,
        ledgerable_type: ModernTreasury::Models::LedgerAccount::LedgerableType | nil,
        live_mode: ModernTreasury::BooleanModel,
        lock_version: Integer,
        metadata: ^(ModernTreasury::HashOf[String]),
        name: String,
        normal_balance: ModernTreasury::Models::TransactionDirection,
        object: String,
        updated_at: Time
      }
    end
  end

  def test_update
    response = @modern_treasury.ledger_accounts.update("id")

    assert_pattern do
      response => ModernTreasury::Models::LedgerAccount
    end

    assert_pattern do
      response => {
        id: String,
        balances: ModernTreasury::Models::LedgerAccount::Balances,
        created_at: Time,
        description: String | nil,
        discarded_at: Time | nil,
        ledger_id: String,
        ledgerable_id: String | nil,
        ledgerable_type: ModernTreasury::Models::LedgerAccount::LedgerableType | nil,
        live_mode: ModernTreasury::BooleanModel,
        lock_version: Integer,
        metadata: ^(ModernTreasury::HashOf[String]),
        name: String,
        normal_balance: ModernTreasury::Models::TransactionDirection,
        object: String,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.ledger_accounts.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => ModernTreasury::Models::LedgerAccount
    end

    assert_pattern do
      row => {
        id: String,
        balances: ModernTreasury::Models::LedgerAccount::Balances,
        created_at: Time,
        description: String | nil,
        discarded_at: Time | nil,
        ledger_id: String,
        ledgerable_id: String | nil,
        ledgerable_type: ModernTreasury::Models::LedgerAccount::LedgerableType | nil,
        live_mode: ModernTreasury::BooleanModel,
        lock_version: Integer,
        metadata: ^(ModernTreasury::HashOf[String]),
        name: String,
        normal_balance: ModernTreasury::Models::TransactionDirection,
        object: String,
        updated_at: Time
      }
    end
  end

  def test_delete
    response = @modern_treasury.ledger_accounts.delete("id")

    assert_pattern do
      response => ModernTreasury::Models::LedgerAccount
    end

    assert_pattern do
      response => {
        id: String,
        balances: ModernTreasury::Models::LedgerAccount::Balances,
        created_at: Time,
        description: String | nil,
        discarded_at: Time | nil,
        ledger_id: String,
        ledgerable_id: String | nil,
        ledgerable_type: ModernTreasury::Models::LedgerAccount::LedgerableType | nil,
        live_mode: ModernTreasury::BooleanModel,
        lock_version: Integer,
        metadata: ^(ModernTreasury::HashOf[String]),
        name: String,
        normal_balance: ModernTreasury::Models::TransactionDirection,
        object: String,
        updated_at: Time
      }
    end
  end
end
