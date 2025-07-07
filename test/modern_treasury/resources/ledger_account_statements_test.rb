# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LedgerAccountStatementsTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    skip("Prism is broken in this case")

    response =
      @modern_treasury.ledger_account_statements.create(
        effective_at_lower_bound: "2019-12-27T18:11:19.117Z",
        effective_at_upper_bound: "2019-12-27T18:11:19.117Z",
        ledger_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => ModernTreasury::Models::LedgerAccountStatementCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        description: String | nil,
        effective_at_lower_bound: Time,
        effective_at_upper_bound: Time,
        ending_balance: ModernTreasury::LedgerBalances,
        ledger_account_id: String,
        ledger_account_lock_version: Integer,
        ledger_account_normal_balance: ModernTreasury::TransactionDirection,
        ledger_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        starting_balance: ModernTreasury::LedgerBalances,
        updated_at: Time
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.ledger_account_statements.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::LedgerAccountStatementRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        description: String | nil,
        effective_at_lower_bound: Time,
        effective_at_upper_bound: Time,
        ending_balance: ModernTreasury::LedgerBalances,
        ledger_account_id: String,
        ledger_account_lock_version: Integer,
        ledger_account_normal_balance: ModernTreasury::TransactionDirection,
        ledger_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        starting_balance: ModernTreasury::LedgerBalances,
        updated_at: Time
      }
    end
  end
end
