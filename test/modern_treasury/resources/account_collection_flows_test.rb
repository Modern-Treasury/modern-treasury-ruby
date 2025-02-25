# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::AccountCollectionFlowsTest < Minitest::Test
  def before_all
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.account_collection_flows.create(
      counterparty_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
      payment_types: ["string"]
    )

    assert_pattern do
      response => ModernTreasury::Models::AccountCollectionFlow
    end

    assert_pattern do
      response => {
        counterparty_id: String,
        payment_types: ^(ModernTreasury::ArrayOf[enum: ModernTreasury::Models::AccountCollectionFlow::PaymentType]),
        id: String | nil,
        client_token: String | nil,
        created_at: Time | nil,
        external_account_id: String | nil,
        live_mode: ModernTreasury::BooleanModel | nil,
        object: String | nil,
        receiving_countries: ^(ModernTreasury::ArrayOf[enum: ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry]) | nil,
        status: ModernTreasury::Models::AccountCollectionFlow::Status | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.account_collection_flows.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::AccountCollectionFlow
    end

    assert_pattern do
      response => {
        counterparty_id: String,
        payment_types: ^(ModernTreasury::ArrayOf[enum: ModernTreasury::Models::AccountCollectionFlow::PaymentType]),
        id: String | nil,
        client_token: String | nil,
        created_at: Time | nil,
        external_account_id: String | nil,
        live_mode: ModernTreasury::BooleanModel | nil,
        object: String | nil,
        receiving_countries: ^(ModernTreasury::ArrayOf[enum: ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry]) | nil,
        status: ModernTreasury::Models::AccountCollectionFlow::Status | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_update_required_params
    response = @modern_treasury.account_collection_flows.update("id", status: :cancelled)

    assert_pattern do
      response => ModernTreasury::Models::AccountCollectionFlow
    end

    assert_pattern do
      response => {
        counterparty_id: String,
        payment_types: ^(ModernTreasury::ArrayOf[enum: ModernTreasury::Models::AccountCollectionFlow::PaymentType]),
        id: String | nil,
        client_token: String | nil,
        created_at: Time | nil,
        external_account_id: String | nil,
        live_mode: ModernTreasury::BooleanModel | nil,
        object: String | nil,
        receiving_countries: ^(ModernTreasury::ArrayOf[enum: ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry]) | nil,
        status: ModernTreasury::Models::AccountCollectionFlow::Status | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list
    response = @modern_treasury.account_collection_flows.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    page = response.next_page
    assert_pattern do
      page => ModernTreasury::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => ModernTreasury::Models::AccountCollectionFlow
    end

    assert_pattern do
      row => {
        counterparty_id: String,
        payment_types: ^(ModernTreasury::ArrayOf[enum: ModernTreasury::Models::AccountCollectionFlow::PaymentType]),
        id: String | nil,
        client_token: String | nil,
        created_at: Time | nil,
        external_account_id: String | nil,
        live_mode: ModernTreasury::BooleanModel | nil,
        object: String | nil,
        receiving_countries: ^(ModernTreasury::ArrayOf[enum: ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry]) | nil,
        status: ModernTreasury::Models::AccountCollectionFlow::Status | nil,
        updated_at: Time | nil
      }
    end
  end
end
