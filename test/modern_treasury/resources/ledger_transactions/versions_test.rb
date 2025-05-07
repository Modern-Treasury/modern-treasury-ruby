# frozen_string_literal: true

require_relative "../../test_helper"

class ModernTreasury::Test::Resources::LedgerTransactions::VersionsTest < ModernTreasury::Test::ResourceTest
  def test_list
    response = @modern_treasury.ledger_transactions.versions.list

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::LedgerTransactions::LedgerTransactionVersion
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        description: String | nil,
        effective_at: Time,
        effective_date: Date,
        external_id: String | nil,
        ledger_entries: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LedgerTransactions::LedgerTransactionVersion::LedgerEntry]),
        ledger_id: String,
        ledger_transaction_id: String,
        ledgerable_id: String | nil,
        ledgerable_type: ModernTreasury::LedgerTransactions::LedgerTransactionVersion::LedgerableType | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        partially_posts_ledger_transaction_id: String | nil,
        posted_at: Time | nil,
        reversed_by_ledger_transaction_id: String | nil,
        reverses_ledger_transaction_id: String | nil,
        status: ModernTreasury::LedgerTransactions::LedgerTransactionVersion::Status,
        version: Integer
      }
    end
  end
end
