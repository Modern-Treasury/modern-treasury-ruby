# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::CounterpartiesTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response = @modern_treasury.counterparties.create(name: "name")

    assert_pattern do
      response => ModernTreasury::Models::Counterparty
    end

    assert_pattern do
      response => {
        id: String,
        accounts: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::Counterparty::Account]),
        created_at: Time,
        discarded_at: Time | nil,
        email: String | nil,
        legal_entity_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        name: String | nil,
        object: String,
        send_remittance_advice: ModernTreasury::BooleanModel,
        updated_at: Time,
        verification_status: ModernTreasury::Models::Counterparty::VerificationStatus
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.counterparties.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::Counterparty
    end

    assert_pattern do
      response => {
        id: String,
        accounts: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::Counterparty::Account]),
        created_at: Time,
        discarded_at: Time | nil,
        email: String | nil,
        legal_entity_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        name: String | nil,
        object: String,
        send_remittance_advice: ModernTreasury::BooleanModel,
        updated_at: Time,
        verification_status: ModernTreasury::Models::Counterparty::VerificationStatus
      }
    end
  end

  def test_update
    response = @modern_treasury.counterparties.update("id")

    assert_pattern do
      response => ModernTreasury::Models::Counterparty
    end

    assert_pattern do
      response => {
        id: String,
        accounts: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::Counterparty::Account]),
        created_at: Time,
        discarded_at: Time | nil,
        email: String | nil,
        legal_entity_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        name: String | nil,
        object: String,
        send_remittance_advice: ModernTreasury::BooleanModel,
        updated_at: Time,
        verification_status: ModernTreasury::Models::Counterparty::VerificationStatus
      }
    end
  end

  def test_list
    response = @modern_treasury.counterparties.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => ModernTreasury::Models::Counterparty
    end

    assert_pattern do
      row => {
        id: String,
        accounts: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::Counterparty::Account]),
        created_at: Time,
        discarded_at: Time | nil,
        email: String | nil,
        legal_entity_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        name: String | nil,
        object: String,
        send_remittance_advice: ModernTreasury::BooleanModel,
        updated_at: Time,
        verification_status: ModernTreasury::Models::Counterparty::VerificationStatus
      }
    end
  end

  def test_delete
    response = @modern_treasury.counterparties.delete("id")

    assert_pattern do
      response => nil
    end
  end

  def test_collect_account_required_params
    response = @modern_treasury.counterparties.collect_account("id", direction: :credit)

    assert_pattern do
      response => ModernTreasury::Models::CounterpartyCollectAccountResponse
    end

    assert_pattern do
      response => {
        id: String,
        form_link: String,
        is_resend: ModernTreasury::BooleanModel
      }
    end
  end
end
