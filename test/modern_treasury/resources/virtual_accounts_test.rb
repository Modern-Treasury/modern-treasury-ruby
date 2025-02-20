# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::VirtualAccountsTest < Minitest::Test
  def before_all
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.virtual_accounts.create(
      internal_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
      name: "name"
    )

    assert_pattern do
      response => ModernTreasury::Models::VirtualAccount
    end

    assert_pattern do
      response => {
        id: String,
        account_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::AccountDetail]),
        counterparty_id: String | nil,
        created_at: Time,
        credit_ledger_account_id: String | nil,
        debit_ledger_account_id: String | nil,
        description: String | nil,
        discarded_at: Time | nil,
        internal_account_id: String,
        ledger_account_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        name: String,
        object: String,
        routing_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::RoutingDetail]),
        updated_at: Time
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.virtual_accounts.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::VirtualAccount
    end

    assert_pattern do
      response => {
        id: String,
        account_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::AccountDetail]),
        counterparty_id: String | nil,
        created_at: Time,
        credit_ledger_account_id: String | nil,
        debit_ledger_account_id: String | nil,
        description: String | nil,
        discarded_at: Time | nil,
        internal_account_id: String,
        ledger_account_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        name: String,
        object: String,
        routing_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::RoutingDetail]),
        updated_at: Time
      }
    end
  end

  def test_update
    response = @modern_treasury.virtual_accounts.update("id")

    assert_pattern do
      response => ModernTreasury::Models::VirtualAccount
    end

    assert_pattern do
      response => {
        id: String,
        account_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::AccountDetail]),
        counterparty_id: String | nil,
        created_at: Time,
        credit_ledger_account_id: String | nil,
        debit_ledger_account_id: String | nil,
        description: String | nil,
        discarded_at: Time | nil,
        internal_account_id: String,
        ledger_account_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        name: String,
        object: String,
        routing_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::RoutingDetail]),
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.virtual_accounts.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    page = response.next_page
    assert_pattern do
      page => ModernTreasury::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => ModernTreasury::Models::VirtualAccount
    end

    assert_pattern do
      row => {
        id: String,
        account_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::AccountDetail]),
        counterparty_id: String | nil,
        created_at: Time,
        credit_ledger_account_id: String | nil,
        debit_ledger_account_id: String | nil,
        description: String | nil,
        discarded_at: Time | nil,
        internal_account_id: String,
        ledger_account_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        name: String,
        object: String,
        routing_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::RoutingDetail]),
        updated_at: Time
      }
    end
  end

  def test_delete
    response = @modern_treasury.virtual_accounts.delete("id")

    assert_pattern do
      response => ModernTreasury::Models::VirtualAccount
    end

    assert_pattern do
      response => {
        id: String,
        account_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::AccountDetail]),
        counterparty_id: String | nil,
        created_at: Time,
        credit_ledger_account_id: String | nil,
        debit_ledger_account_id: String | nil,
        description: String | nil,
        discarded_at: Time | nil,
        internal_account_id: String,
        ledger_account_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        name: String,
        object: String,
        routing_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::RoutingDetail]),
        updated_at: Time
      }
    end
  end
end
