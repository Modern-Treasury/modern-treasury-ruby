# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LedgerAccountsTest < Minitest::Test
  def before_all
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

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
  end

  def test_retrieve
    response = @modern_treasury.ledger_accounts.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::LedgerAccount
    end
  end

  def test_update
    response = @modern_treasury.ledger_accounts.update("id")

    assert_pattern do
      response => ModernTreasury::Models::LedgerAccount
    end
  end

  def test_list
    response = @modern_treasury.ledger_accounts.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    page = response.next_page
    assert_pattern do
      page => ModernTreasury::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => ModernTreasury::Models::LedgerAccount
    end
  end

  def test_delete
    response = @modern_treasury.ledger_accounts.delete("id")

    assert_pattern do
      response => ModernTreasury::Models::LedgerAccount
    end
  end
end
