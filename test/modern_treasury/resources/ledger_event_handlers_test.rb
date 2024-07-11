# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LedgerEventHandlersTest < Test::Unit::TestCase
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.ledger_event_handlers.create(
      {
        ledger_transaction_template: {
          "description" => "My Ledger Transaction Template Description",
          "effective_at" => "{{ledgerable_event.custom_data.effective_at}}",
          "status" => "posted",
          "ledger_entries" => [
            {
              "amount" => "amount",
              "direction" => "direction",
              "ledger_account_id" => "ledger_account_id"
            },
            {"amount" => "amount", "direction" => "direction", "ledger_account_id" => "ledger_account_id"},
            {"amount" => "amount", "direction" => "direction", "ledger_account_id" => "ledger_account_id"}
          ]
        },
        name: "name"
      }
    )
    assert_kind_of(ModernTreasury::Models::LedgerEventHandler, response)
  end

  def test_retrieve
    response = @modern_treasury.ledger_event_handlers.retrieve("id")
    assert_kind_of(ModernTreasury::Models::LedgerEventHandler, response)
  end

  def test_list
    response = @modern_treasury.ledger_event_handlers.list
    assert_kind_of(ModernTreasury::Page, response)
  end

  def test_delete
    response = @modern_treasury.ledger_event_handlers.delete("id")
    assert_kind_of(ModernTreasury::Models::LedgerEventHandler, response)
  end
end
