# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LedgerAccountSettlementsTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response =
      @modern_treasury.ledger_account_settlements.create(
        contra_ledger_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        settled_ledger_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => ModernTreasury::Models::LedgerAccountSettlement
    end

    assert_pattern do
      response => {
        id: String,
        amount: Integer | nil,
        contra_ledger_account_id: String,
        created_at: Time,
        currency: String,
        currency_exponent: Integer | nil,
        description: String | nil,
        effective_at_upper_bound: Time,
        ledger_id: String,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        settled_ledger_account_id: String,
        settlement_entry_direction: String | nil,
        status: ModernTreasury::Models::LedgerAccountSettlement::Status,
        updated_at: Time
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.ledger_account_settlements.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::LedgerAccountSettlement
    end

    assert_pattern do
      response => {
        id: String,
        amount: Integer | nil,
        contra_ledger_account_id: String,
        created_at: Time,
        currency: String,
        currency_exponent: Integer | nil,
        description: String | nil,
        effective_at_upper_bound: Time,
        ledger_id: String,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        settled_ledger_account_id: String,
        settlement_entry_direction: String | nil,
        status: ModernTreasury::Models::LedgerAccountSettlement::Status,
        updated_at: Time
      }
    end
  end

  def test_update
    response = @modern_treasury.ledger_account_settlements.update("id")

    assert_pattern do
      response => ModernTreasury::Models::LedgerAccountSettlement
    end

    assert_pattern do
      response => {
        id: String,
        amount: Integer | nil,
        contra_ledger_account_id: String,
        created_at: Time,
        currency: String,
        currency_exponent: Integer | nil,
        description: String | nil,
        effective_at_upper_bound: Time,
        ledger_id: String,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        settled_ledger_account_id: String,
        settlement_entry_direction: String | nil,
        status: ModernTreasury::Models::LedgerAccountSettlement::Status,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.ledger_account_settlements.list

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::Models::LedgerAccountSettlement
    end

    assert_pattern do
      row => {
        id: String,
        amount: Integer | nil,
        contra_ledger_account_id: String,
        created_at: Time,
        currency: String,
        currency_exponent: Integer | nil,
        description: String | nil,
        effective_at_upper_bound: Time,
        ledger_id: String,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        settled_ledger_account_id: String,
        settlement_entry_direction: String | nil,
        status: ModernTreasury::Models::LedgerAccountSettlement::Status,
        updated_at: Time
      }
    end
  end
end
