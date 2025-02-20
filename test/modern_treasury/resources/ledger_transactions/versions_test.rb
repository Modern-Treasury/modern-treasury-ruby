# frozen_string_literal: true

require_relative "../../test_helper"

class ModernTreasury::Test::Resources::LedgerTransactions::VersionsTest < Minitest::Test
  def before_all
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_list
    response = @modern_treasury.ledger_transactions.versions.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    page = response.next_page
    assert_pattern do
      page => ModernTreasury::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        description: String | nil,
        effective_at: Time,
        effective_date: Date,
        external_id: String | nil,
        ledger_entries: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerEntry]),
        ledger_id: String,
        ledger_transaction_id: String,
        ledgerable_id: String | nil,
        ledgerable_type: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::LedgerableType | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        object: String,
        partially_posts_ledger_transaction_id: String | nil,
        posted_at: Time | nil,
        reversed_by_ledger_transaction_id: String | nil,
        reverses_ledger_transaction_id: String | nil,
        status: ModernTreasury::Models::LedgerTransactions::LedgerTransactionVersion::Status,
        version: Integer
      }
    end
  end
end
