# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LedgerTransactionsTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response =
      @modern_treasury.ledger_transactions.create(
        ledger_entries: [
          {
            amount: 0,
            direction: :credit,
            ledger_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
          }
        ]
      )

    assert_pattern do
      response => ModernTreasury::LedgerTransaction
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        description: String | nil,
        effective_at: Time,
        effective_date: Date,
        external_id: String | nil,
        ledger_entries: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LedgerEntry]),
        ledger_id: String,
        ledgerable_id: String | nil,
        ledgerable_type: ModernTreasury::LedgerTransaction::LedgerableType | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        partially_posts_ledger_transaction_id: String | nil,
        posted_at: Time | nil,
        reversed_by_ledger_transaction_id: String | nil,
        reverses_ledger_transaction_id: String | nil,
        status: ModernTreasury::LedgerTransaction::Status,
        updated_at: Time
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.ledger_transactions.retrieve("id")

    assert_pattern do
      response => ModernTreasury::LedgerTransaction
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        description: String | nil,
        effective_at: Time,
        effective_date: Date,
        external_id: String | nil,
        ledger_entries: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LedgerEntry]),
        ledger_id: String,
        ledgerable_id: String | nil,
        ledgerable_type: ModernTreasury::LedgerTransaction::LedgerableType | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        partially_posts_ledger_transaction_id: String | nil,
        posted_at: Time | nil,
        reversed_by_ledger_transaction_id: String | nil,
        reverses_ledger_transaction_id: String | nil,
        status: ModernTreasury::LedgerTransaction::Status,
        updated_at: Time
      }
    end
  end

  def test_update
    response = @modern_treasury.ledger_transactions.update("id")

    assert_pattern do
      response => ModernTreasury::LedgerTransaction
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        description: String | nil,
        effective_at: Time,
        effective_date: Date,
        external_id: String | nil,
        ledger_entries: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LedgerEntry]),
        ledger_id: String,
        ledgerable_id: String | nil,
        ledgerable_type: ModernTreasury::LedgerTransaction::LedgerableType | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        partially_posts_ledger_transaction_id: String | nil,
        posted_at: Time | nil,
        reversed_by_ledger_transaction_id: String | nil,
        reverses_ledger_transaction_id: String | nil,
        status: ModernTreasury::LedgerTransaction::Status,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.ledger_transactions.list

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::LedgerTransaction
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        description: String | nil,
        effective_at: Time,
        effective_date: Date,
        external_id: String | nil,
        ledger_entries: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LedgerEntry]),
        ledger_id: String,
        ledgerable_id: String | nil,
        ledgerable_type: ModernTreasury::LedgerTransaction::LedgerableType | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        partially_posts_ledger_transaction_id: String | nil,
        posted_at: Time | nil,
        reversed_by_ledger_transaction_id: String | nil,
        reverses_ledger_transaction_id: String | nil,
        status: ModernTreasury::LedgerTransaction::Status,
        updated_at: Time
      }
    end
  end

  def test_create_partial_post_required_params
    response =
      @modern_treasury.ledger_transactions.create_partial_post(
        "id",
        posted_ledger_entries: [
          {
            amount: 0,
            direction: :credit,
            ledger_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
          }
        ]
      )

    assert_pattern do
      response => ModernTreasury::LedgerTransaction
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        description: String | nil,
        effective_at: Time,
        effective_date: Date,
        external_id: String | nil,
        ledger_entries: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LedgerEntry]),
        ledger_id: String,
        ledgerable_id: String | nil,
        ledgerable_type: ModernTreasury::LedgerTransaction::LedgerableType | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        partially_posts_ledger_transaction_id: String | nil,
        posted_at: Time | nil,
        reversed_by_ledger_transaction_id: String | nil,
        reverses_ledger_transaction_id: String | nil,
        status: ModernTreasury::LedgerTransaction::Status,
        updated_at: Time
      }
    end
  end

  def test_create_reversal
    response = @modern_treasury.ledger_transactions.create_reversal("id")

    assert_pattern do
      response => ModernTreasury::LedgerTransaction
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        description: String | nil,
        effective_at: Time,
        effective_date: Date,
        external_id: String | nil,
        ledger_entries: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LedgerEntry]),
        ledger_id: String,
        ledgerable_id: String | nil,
        ledgerable_type: ModernTreasury::LedgerTransaction::LedgerableType | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        partially_posts_ledger_transaction_id: String | nil,
        posted_at: Time | nil,
        reversed_by_ledger_transaction_id: String | nil,
        reverses_ledger_transaction_id: String | nil,
        status: ModernTreasury::LedgerTransaction::Status,
        updated_at: Time
      }
    end
  end
end
