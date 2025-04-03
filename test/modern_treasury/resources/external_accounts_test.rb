# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::ExternalAccountsTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response =
      @modern_treasury.external_accounts.create(counterparty_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => ModernTreasury::Models::ExternalAccount
    end

    assert_pattern do
      response => {
        id: String,
        account_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::AccountDetail]),
        account_type: ModernTreasury::Models::ExternalAccountType,
        contact_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::ExternalAccount::ContactDetail]),
        counterparty_id: String | nil,
        created_at: Time,
        discarded_at: Time | nil,
        ledger_account_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        name: String | nil,
        object: String,
        party_address: ModernTreasury::Models::ExternalAccount::PartyAddress | nil,
        party_name: String,
        party_type: ModernTreasury::Models::ExternalAccount::PartyType | nil,
        routing_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::RoutingDetail]),
        updated_at: Time,
        verification_source: ModernTreasury::Models::ExternalAccount::VerificationSource | nil,
        verification_status: ModernTreasury::Models::ExternalAccount::VerificationStatus
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.external_accounts.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::ExternalAccount
    end

    assert_pattern do
      response => {
        id: String,
        account_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::AccountDetail]),
        account_type: ModernTreasury::Models::ExternalAccountType,
        contact_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::ExternalAccount::ContactDetail]),
        counterparty_id: String | nil,
        created_at: Time,
        discarded_at: Time | nil,
        ledger_account_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        name: String | nil,
        object: String,
        party_address: ModernTreasury::Models::ExternalAccount::PartyAddress | nil,
        party_name: String,
        party_type: ModernTreasury::Models::ExternalAccount::PartyType | nil,
        routing_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::RoutingDetail]),
        updated_at: Time,
        verification_source: ModernTreasury::Models::ExternalAccount::VerificationSource | nil,
        verification_status: ModernTreasury::Models::ExternalAccount::VerificationStatus
      }
    end
  end

  def test_update
    response = @modern_treasury.external_accounts.update("id")

    assert_pattern do
      response => ModernTreasury::Models::ExternalAccount
    end

    assert_pattern do
      response => {
        id: String,
        account_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::AccountDetail]),
        account_type: ModernTreasury::Models::ExternalAccountType,
        contact_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::ExternalAccount::ContactDetail]),
        counterparty_id: String | nil,
        created_at: Time,
        discarded_at: Time | nil,
        ledger_account_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        name: String | nil,
        object: String,
        party_address: ModernTreasury::Models::ExternalAccount::PartyAddress | nil,
        party_name: String,
        party_type: ModernTreasury::Models::ExternalAccount::PartyType | nil,
        routing_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::RoutingDetail]),
        updated_at: Time,
        verification_source: ModernTreasury::Models::ExternalAccount::VerificationSource | nil,
        verification_status: ModernTreasury::Models::ExternalAccount::VerificationStatus
      }
    end
  end

  def test_list
    response = @modern_treasury.external_accounts.list

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::Models::ExternalAccount
    end

    assert_pattern do
      row => {
        id: String,
        account_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::AccountDetail]),
        account_type: ModernTreasury::Models::ExternalAccountType,
        contact_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::ExternalAccount::ContactDetail]),
        counterparty_id: String | nil,
        created_at: Time,
        discarded_at: Time | nil,
        ledger_account_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        name: String | nil,
        object: String,
        party_address: ModernTreasury::Models::ExternalAccount::PartyAddress | nil,
        party_name: String,
        party_type: ModernTreasury::Models::ExternalAccount::PartyType | nil,
        routing_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::RoutingDetail]),
        updated_at: Time,
        verification_source: ModernTreasury::Models::ExternalAccount::VerificationSource | nil,
        verification_status: ModernTreasury::Models::ExternalAccount::VerificationStatus
      }
    end
  end

  def test_delete
    response = @modern_treasury.external_accounts.delete("id")

    assert_pattern do
      response => nil
    end
  end

  def test_complete_verification
    response = @modern_treasury.external_accounts.complete_verification("id")

    assert_pattern do
      response => ModernTreasury::Models::ExternalAccount
    end

    assert_pattern do
      response => {
        id: String,
        account_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::AccountDetail]),
        account_type: ModernTreasury::Models::ExternalAccountType,
        contact_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::ExternalAccount::ContactDetail]),
        counterparty_id: String | nil,
        created_at: Time,
        discarded_at: Time | nil,
        ledger_account_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        name: String | nil,
        object: String,
        party_address: ModernTreasury::Models::ExternalAccount::PartyAddress | nil,
        party_name: String,
        party_type: ModernTreasury::Models::ExternalAccount::PartyType | nil,
        routing_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::RoutingDetail]),
        updated_at: Time,
        verification_source: ModernTreasury::Models::ExternalAccount::VerificationSource | nil,
        verification_status: ModernTreasury::Models::ExternalAccount::VerificationStatus
      }
    end
  end

  def test_verify_required_params
    response =
      @modern_treasury.external_accounts.verify(
        "id",
        originating_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        payment_type: :ach
      )

    assert_pattern do
      response => ModernTreasury::Models::ExternalAccountVerifyResponse
    end

    assert_pattern do
      case response
      in ModernTreasury::Models::ExternalAccount
      in ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt
      end
    end
  end
end
