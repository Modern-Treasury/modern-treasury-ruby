# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LedgerEventHandlersTest < Minitest::Test
  def before_all
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.ledger_event_handlers.create(
      ledger_transaction_template: {
        description: "My Ledger Transaction Template Description",
        effective_at: "{{ledgerable_event.custom_data.effective_at}}",
        ledger_entries: [{amount: "amount", direction: "direction", ledger_account_id: "ledger_account_id"}],
        status: "posted"
      },
      name: "name"
    )

    assert_pattern do
      response => ModernTreasury::Models::LedgerEventHandler
    end
  end

  def test_retrieve
    response = @modern_treasury.ledger_event_handlers.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::LedgerEventHandler
    end
  end

  def test_list
    response = @modern_treasury.ledger_event_handlers.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    page = response.next_page
    assert_pattern do
      page => ModernTreasury::Page
    end
  end

  def test_delete
    response = @modern_treasury.ledger_event_handlers.delete("id")

    assert_pattern do
      response => ModernTreasury::Models::LedgerEventHandler
    end
  end
end
