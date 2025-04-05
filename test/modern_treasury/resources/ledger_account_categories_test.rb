# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LedgerAccountCategoriesTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response =
      @modern_treasury.ledger_account_categories.create(
        currency: "currency",
        ledger_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        name: "name",
        normal_balance: :credit
      )

    assert_pattern do
      response => ModernTreasury::Models::LedgerAccountCategory
    end

    assert_pattern do
      response => {
        id: String,
        balances: ModernTreasury::Models::LedgerAccountCategory::Balances,
        created_at: Time,
        description: String | nil,
        discarded_at: Time | nil,
        ledger_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        name: String,
        normal_balance: ModernTreasury::Models::TransactionDirection,
        object: String,
        updated_at: Time
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.ledger_account_categories.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::LedgerAccountCategory
    end

    assert_pattern do
      response => {
        id: String,
        balances: ModernTreasury::Models::LedgerAccountCategory::Balances,
        created_at: Time,
        description: String | nil,
        discarded_at: Time | nil,
        ledger_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        name: String,
        normal_balance: ModernTreasury::Models::TransactionDirection,
        object: String,
        updated_at: Time
      }
    end
  end

  def test_update
    response = @modern_treasury.ledger_account_categories.update("id")

    assert_pattern do
      response => ModernTreasury::Models::LedgerAccountCategory
    end

    assert_pattern do
      response => {
        id: String,
        balances: ModernTreasury::Models::LedgerAccountCategory::Balances,
        created_at: Time,
        description: String | nil,
        discarded_at: Time | nil,
        ledger_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        name: String,
        normal_balance: ModernTreasury::Models::TransactionDirection,
        object: String,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.ledger_account_categories.list

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::Models::LedgerAccountCategory
    end

    assert_pattern do
      row => {
        id: String,
        balances: ModernTreasury::Models::LedgerAccountCategory::Balances,
        created_at: Time,
        description: String | nil,
        discarded_at: Time | nil,
        ledger_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        name: String,
        normal_balance: ModernTreasury::Models::TransactionDirection,
        object: String,
        updated_at: Time
      }
    end
  end

  def test_delete
    response = @modern_treasury.ledger_account_categories.delete("id")

    assert_pattern do
      response => ModernTreasury::Models::LedgerAccountCategory
    end

    assert_pattern do
      response => {
        id: String,
        balances: ModernTreasury::Models::LedgerAccountCategory::Balances,
        created_at: Time,
        description: String | nil,
        discarded_at: Time | nil,
        ledger_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        name: String,
        normal_balance: ModernTreasury::Models::TransactionDirection,
        object: String,
        updated_at: Time
      }
    end
  end

  def test_add_ledger_account_required_params
    response = @modern_treasury.ledger_account_categories.add_ledger_account("ledger_account_id", id: "id")

    assert_pattern do
      response => nil
    end
  end

  def test_add_nested_category_required_params
    response = @modern_treasury.ledger_account_categories.add_nested_category("sub_category_id", id: "id")

    assert_pattern do
      response => nil
    end
  end

  def test_remove_ledger_account_required_params
    response =
      @modern_treasury.ledger_account_categories.remove_ledger_account("ledger_account_id", id: "id")

    assert_pattern do
      response => nil
    end
  end

  def test_remove_nested_category_required_params
    response = @modern_treasury.ledger_account_categories.remove_nested_category("sub_category_id", id: "id")

    assert_pattern do
      response => nil
    end
  end
end
