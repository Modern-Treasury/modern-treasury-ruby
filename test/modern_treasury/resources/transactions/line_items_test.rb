# frozen_string_literal: true

require_relative "../../test_helper"

class ModernTreasury::Test::Resources::Transactions::LineItemsTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response =
      @modern_treasury.transactions.line_items.create(
        amount: 0,
        expected_payment_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        transaction_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => ModernTreasury::Transactions::TransactionLineItem
    end

    assert_pattern do
      response => {
        id: String,
        amount: Integer,
        counterparty_id: String | nil,
        created_at: Time,
        description: String,
        discarded_at: Time | nil,
        expected_payment_id: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        reconcilable: ModernTreasury::Internal::Type::Boolean,
        reconciliation_group_id: String | nil,
        transactable_id: String | nil,
        transactable_type: ModernTreasury::Transactions::TransactionLineItem::TransactableType | nil,
        transaction_id: String,
        type: ModernTreasury::Transactions::TransactionLineItem::Type,
        updated_at: Time
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.transactions.line_items.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Transactions::TransactionLineItem
    end

    assert_pattern do
      response => {
        id: String,
        amount: Integer,
        counterparty_id: String | nil,
        created_at: Time,
        description: String,
        discarded_at: Time | nil,
        expected_payment_id: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        reconcilable: ModernTreasury::Internal::Type::Boolean,
        reconciliation_group_id: String | nil,
        transactable_id: String | nil,
        transactable_type: ModernTreasury::Transactions::TransactionLineItem::TransactableType | nil,
        transaction_id: String,
        type: ModernTreasury::Transactions::TransactionLineItem::Type,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.transactions.line_items.list

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::Transactions::TransactionLineItem
    end

    assert_pattern do
      row => {
        id: String,
        amount: Integer,
        counterparty_id: String | nil,
        created_at: Time,
        description: String,
        discarded_at: Time | nil,
        expected_payment_id: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        reconcilable: ModernTreasury::Internal::Type::Boolean,
        reconciliation_group_id: String | nil,
        transactable_id: String | nil,
        transactable_type: ModernTreasury::Transactions::TransactionLineItem::TransactableType | nil,
        transaction_id: String,
        type: ModernTreasury::Transactions::TransactionLineItem::Type,
        updated_at: Time
      }
    end
  end

  def test_delete
    response = @modern_treasury.transactions.line_items.delete("id")

    assert_pattern do
      response => nil
    end
  end
end
