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
            {"amount" => "string", "direction" => "string", "ledger_account_id" => "string"},
            {"amount" => "string", "direction" => "string", "ledger_account_id" => "string"},
            {"amount" => "string", "direction" => "string", "ledger_account_id" => "string"}
          ]
        },
        name: "string"
      }
    )
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::LedgerEventHandler, response),
      response.class.to_s
    )
  end

  def test_retrieve
    response = @modern_treasury.ledger_event_handlers.retrieve("string")
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::LedgerEventHandler, response),
      response.class.to_s
    )
  end

  def test_list
    response = @modern_treasury.ledger_event_handlers.list
    assert(ModernTreasury::Converter.same_type?(ModernTreasury::Page, response), response.class.to_s)
  end

  def test_delete
    response = @modern_treasury.ledger_event_handlers.delete("string")
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::LedgerEventHandler, response),
      response.class.to_s
    )
  end
end
