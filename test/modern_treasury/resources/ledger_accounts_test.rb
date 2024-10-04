# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LedgerAccountsTest < Minitest::Test
  parallelize_me!

  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.ledger_accounts.create(
      {
        currency: "currency",
        ledger_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        name: "name",
        normal_balance: "credit"
      }
    )
    assert_kind_of(ModernTreasury::Models::LedgerAccount, response)
  end

  def test_retrieve
    response = @modern_treasury.ledger_accounts.retrieve("id")
    assert_kind_of(ModernTreasury::Models::LedgerAccount, response)
  end

  def test_update
    response = @modern_treasury.ledger_accounts.update("id")
    assert_kind_of(ModernTreasury::Models::LedgerAccount, response)
  end

  def test_list
    response = @modern_treasury.ledger_accounts.list
    assert_kind_of(ModernTreasury::Page, response)
  end

  def test_delete
    response = @modern_treasury.ledger_accounts.delete("id")
    assert_kind_of(ModernTreasury::Models::LedgerAccount, response)
  end
end
