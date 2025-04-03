# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LedgerEventHandlersTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response =
      @modern_treasury.ledger_event_handlers.create(
        ledger_transaction_template: {
          description: "My Ledger Transaction Template Description",
          effective_at: "{{ledgerable_event.custom_data.effective_at}}",
          ledger_entries: [
            {
              amount: "amount",
              direction: "direction",
              ledger_account_id: "ledger_account_id"
            }
          ],
          status: "posted"
        },
        name: "name"
      )

    assert_pattern do
      response => ModernTreasury::Models::LedgerEventHandler
    end

    assert_pattern do
      response => {
        id: String,
        conditions: ModernTreasury::Models::LedgerEventHandler::Conditions | nil,
        created_at: Time,
        description: String | nil,
        discarded_at: Time | nil,
        ledger_id: String | nil,
        ledger_transaction_template: ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]) | nil,
        name: String,
        object: String,
        updated_at: Time,
        variables: ^(ModernTreasury::HashOf[ModernTreasury::Models::LedgerEventHandlerVariable]) | nil
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.ledger_event_handlers.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::LedgerEventHandler
    end

    assert_pattern do
      response => {
        id: String,
        conditions: ModernTreasury::Models::LedgerEventHandler::Conditions | nil,
        created_at: Time,
        description: String | nil,
        discarded_at: Time | nil,
        ledger_id: String | nil,
        ledger_transaction_template: ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]) | nil,
        name: String,
        object: String,
        updated_at: Time,
        variables: ^(ModernTreasury::HashOf[ModernTreasury::Models::LedgerEventHandlerVariable]) | nil
      }
    end
  end

  def test_list
    response = @modern_treasury.ledger_event_handlers.list

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::Models::LedgerEventHandler
    end

    assert_pattern do
      row => {
        id: String,
        conditions: ModernTreasury::Models::LedgerEventHandler::Conditions | nil,
        created_at: Time,
        description: String | nil,
        discarded_at: Time | nil,
        ledger_id: String | nil,
        ledger_transaction_template: ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]) | nil,
        name: String,
        object: String,
        updated_at: Time,
        variables: ^(ModernTreasury::HashOf[ModernTreasury::Models::LedgerEventHandlerVariable]) | nil
      }
    end
  end

  def test_delete
    response = @modern_treasury.ledger_event_handlers.delete("id")

    assert_pattern do
      response => ModernTreasury::Models::LedgerEventHandler
    end

    assert_pattern do
      response => {
        id: String,
        conditions: ModernTreasury::Models::LedgerEventHandler::Conditions | nil,
        created_at: Time,
        description: String | nil,
        discarded_at: Time | nil,
        ledger_id: String | nil,
        ledger_transaction_template: ModernTreasury::Models::LedgerEventHandler::LedgerTransactionTemplate,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]) | nil,
        name: String,
        object: String,
        updated_at: Time,
        variables: ^(ModernTreasury::HashOf[ModernTreasury::Models::LedgerEventHandlerVariable]) | nil
      }
    end
  end
end
