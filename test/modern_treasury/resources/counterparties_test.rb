# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::CounterpartiesTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response = @modern_treasury.counterparties.create(name: "name")

    assert_pattern do
      response => ModernTreasury::Counterparty
    end

    assert_pattern do
      response => {
        id: String,
        accounts: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Counterparty::Account]),
        created_at: Time,
        discarded_at: Time | nil,
        email: String | nil,
        external_id: String | nil,
        legal_entity_id: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        name: String | nil,
        object: String,
        send_remittance_advice: ModernTreasury::Internal::Type::Boolean,
        updated_at: Time,
        verification_status: ModernTreasury::Counterparty::VerificationStatus
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.counterparties.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Counterparty
    end

    assert_pattern do
      response => {
        id: String,
        accounts: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Counterparty::Account]),
        created_at: Time,
        discarded_at: Time | nil,
        email: String | nil,
        external_id: String | nil,
        legal_entity_id: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        name: String | nil,
        object: String,
        send_remittance_advice: ModernTreasury::Internal::Type::Boolean,
        updated_at: Time,
        verification_status: ModernTreasury::Counterparty::VerificationStatus
      }
    end
  end

  def test_update
    response = @modern_treasury.counterparties.update("id")

    assert_pattern do
      response => ModernTreasury::Counterparty
    end

    assert_pattern do
      response => {
        id: String,
        accounts: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Counterparty::Account]),
        created_at: Time,
        discarded_at: Time | nil,
        email: String | nil,
        external_id: String | nil,
        legal_entity_id: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        name: String | nil,
        object: String,
        send_remittance_advice: ModernTreasury::Internal::Type::Boolean,
        updated_at: Time,
        verification_status: ModernTreasury::Counterparty::VerificationStatus
      }
    end
  end

  def test_list
    response = @modern_treasury.counterparties.list

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::Counterparty
    end

    assert_pattern do
      row => {
        id: String,
        accounts: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Counterparty::Account]),
        created_at: Time,
        discarded_at: Time | nil,
        email: String | nil,
        external_id: String | nil,
        legal_entity_id: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        name: String | nil,
        object: String,
        send_remittance_advice: ModernTreasury::Internal::Type::Boolean,
        updated_at: Time,
        verification_status: ModernTreasury::Counterparty::VerificationStatus
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
      response => ModernTreasury::CounterpartyCollectAccountResponse
    end

    assert_pattern do
      response => {
        id: String,
        form_link: String,
        is_resend: ModernTreasury::Internal::Type::Boolean
      }
    end
  end
end
