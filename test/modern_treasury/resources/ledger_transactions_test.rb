# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LedgerTransactionsTest < Minitest::Test
  def before_all
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.ledger_transactions.create(
      ledger_entries: [
        {
          "amount" => 0,
          "direction" => "credit",
          "ledger_account_id" => "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
        }
      ]
    )

    assert_pattern do
      response => ModernTreasury::Models::LedgerTransaction
    end
  end

  def test_retrieve
    response = @modern_treasury.ledger_transactions.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::LedgerTransaction
    end
  end

  def test_update
    response = @modern_treasury.ledger_transactions.update("id")

    assert_pattern do
      response => ModernTreasury::Models::LedgerTransaction
    end
  end

  def test_list
    response = @modern_treasury.ledger_transactions.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    page = response.next_page
    assert_pattern do
      page => ModernTreasury::Page
    end
  end

  def test_create_partial_post_required_params
    response = @modern_treasury.ledger_transactions.create_partial_post(
      "id",
      posted_ledger_entries: [
        {
          "amount" => 0,
          "direction" => "credit",
          "ledger_account_id" => "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
        }
      ]
    )

    assert_pattern do
      response => ModernTreasury::Models::LedgerTransaction
    end
  end

  def test_create_reversal
    response = @modern_treasury.ledger_transactions.create_reversal("id")

    assert_pattern do
      response => ModernTreasury::Models::LedgerTransaction
    end
  end
end
