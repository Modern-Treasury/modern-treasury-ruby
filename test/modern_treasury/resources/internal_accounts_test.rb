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
      response => ModernTreasury::InternalAccount
    end

    assert_pattern do
      response => {
        id: String,
        account_details: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::AccountDetail]),
        account_type: ModernTreasury::InternalAccount::AccountType | nil,
        connection: ModernTreasury::Connection,
        counterparty_id: String | nil,
        created_at: Time,
        currency: ModernTreasury::Currency,
        ledger_account_id: String | nil,
        legal_entity_id: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        name: String | nil,
        object: String,
        parent_account_id: String | nil,
        party_address: ModernTreasury::InternalAccount::PartyAddress | nil,
        party_name: String,
        party_type: ModernTreasury::InternalAccount::PartyType | nil,
        routing_details: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::RoutingDetail]),
        updated_at: Time
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.internal_accounts.retrieve("id")

    assert_pattern do
      response => ModernTreasury::InternalAccount
    end

    assert_pattern do
      response => {
        id: String,
        account_details: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::AccountDetail]),
        account_type: ModernTreasury::InternalAccount::AccountType | nil,
        connection: ModernTreasury::Connection,
        counterparty_id: String | nil,
        created_at: Time,
        currency: ModernTreasury::Currency,
        ledger_account_id: String | nil,
        legal_entity_id: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        name: String | nil,
        object: String,
        parent_account_id: String | nil,
        party_address: ModernTreasury::InternalAccount::PartyAddress | nil,
        party_name: String,
        party_type: ModernTreasury::InternalAccount::PartyType | nil,
        routing_details: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::RoutingDetail]),
        updated_at: Time
      }
    end
  end

  def test_update
    response = @modern_treasury.internal_accounts.update("id")

    assert_pattern do
      response => ModernTreasury::InternalAccount
    end

    assert_pattern do
      response => {
        id: String,
        account_details: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::AccountDetail]),
        account_type: ModernTreasury::InternalAccount::AccountType | nil,
        connection: ModernTreasury::Connection,
        counterparty_id: String | nil,
        created_at: Time,
        currency: ModernTreasury::Currency,
        ledger_account_id: String | nil,
        legal_entity_id: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        name: String | nil,
        object: String,
        parent_account_id: String | nil,
        party_address: ModernTreasury::InternalAccount::PartyAddress | nil,
        party_name: String,
        party_type: ModernTreasury::InternalAccount::PartyType | nil,
        routing_details: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::RoutingDetail]),
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.internal_accounts.list

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::InternalAccount
    end

    assert_pattern do
      row => {
        id: String,
        account_details: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::AccountDetail]),
        account_type: ModernTreasury::InternalAccount::AccountType | nil,
        connection: ModernTreasury::Connection,
        counterparty_id: String | nil,
        created_at: Time,
        currency: ModernTreasury::Currency,
        ledger_account_id: String | nil,
        legal_entity_id: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        name: String | nil,
        object: String,
        parent_account_id: String | nil,
        party_address: ModernTreasury::InternalAccount::PartyAddress | nil,
        party_name: String,
        party_type: ModernTreasury::InternalAccount::PartyType | nil,
        routing_details: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::RoutingDetail]),
        updated_at: Time
      }
    end
  end
end
