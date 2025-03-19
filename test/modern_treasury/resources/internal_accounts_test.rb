# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::InternalAccountsTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response =
      @modern_treasury.internal_accounts.create(
        connection_id: "connection_id",
        currency: :USD,
        name: "name",
        party_name: "party_name"
      )

    assert_pattern do
      response => ModernTreasury::Models::InternalAccount
    end

    assert_pattern do
      response => {
        id: String,
        account_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::AccountDetail]),
        account_type: ModernTreasury::Models::InternalAccount::AccountType | nil,
        connection: ModernTreasury::Models::Connection,
        counterparty_id: String | nil,
        created_at: Time,
        currency: ModernTreasury::Models::Currency,
        ledger_account_id: String | nil,
        legal_entity_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        name: String | nil,
        object: String,
        parent_account_id: String | nil,
        party_address: ModernTreasury::Models::InternalAccount::PartyAddress | nil,
        party_name: String,
        party_type: ModernTreasury::Models::InternalAccount::PartyType | nil,
        routing_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::RoutingDetail]),
        updated_at: Time
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.internal_accounts.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::InternalAccount
    end

    assert_pattern do
      response => {
        id: String,
        account_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::AccountDetail]),
        account_type: ModernTreasury::Models::InternalAccount::AccountType | nil,
        connection: ModernTreasury::Models::Connection,
        counterparty_id: String | nil,
        created_at: Time,
        currency: ModernTreasury::Models::Currency,
        ledger_account_id: String | nil,
        legal_entity_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        name: String | nil,
        object: String,
        parent_account_id: String | nil,
        party_address: ModernTreasury::Models::InternalAccount::PartyAddress | nil,
        party_name: String,
        party_type: ModernTreasury::Models::InternalAccount::PartyType | nil,
        routing_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::RoutingDetail]),
        updated_at: Time
      }
    end
  end

  def test_update
    response = @modern_treasury.internal_accounts.update("id")

    assert_pattern do
      response => ModernTreasury::Models::InternalAccount
    end

    assert_pattern do
      response => {
        id: String,
        account_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::AccountDetail]),
        account_type: ModernTreasury::Models::InternalAccount::AccountType | nil,
        connection: ModernTreasury::Models::Connection,
        counterparty_id: String | nil,
        created_at: Time,
        currency: ModernTreasury::Models::Currency,
        ledger_account_id: String | nil,
        legal_entity_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        name: String | nil,
        object: String,
        parent_account_id: String | nil,
        party_address: ModernTreasury::Models::InternalAccount::PartyAddress | nil,
        party_name: String,
        party_type: ModernTreasury::Models::InternalAccount::PartyType | nil,
        routing_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::RoutingDetail]),
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.internal_accounts.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => ModernTreasury::Models::InternalAccount
    end

    assert_pattern do
      row => {
        id: String,
        account_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::AccountDetail]),
        account_type: ModernTreasury::Models::InternalAccount::AccountType | nil,
        connection: ModernTreasury::Models::Connection,
        counterparty_id: String | nil,
        created_at: Time,
        currency: ModernTreasury::Models::Currency,
        ledger_account_id: String | nil,
        legal_entity_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        name: String | nil,
        object: String,
        parent_account_id: String | nil,
        party_address: ModernTreasury::Models::InternalAccount::PartyAddress | nil,
        party_name: String,
        party_type: ModernTreasury::Models::InternalAccount::PartyType | nil,
        routing_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::RoutingDetail]),
        updated_at: Time
      }
    end
  end
end
