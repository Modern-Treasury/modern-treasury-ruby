# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::RoutingDetailsTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response =
      @modern_treasury.routing_details.create(
        "account_id",
        accounts_type: :external_accounts,
        routing_number: "routing_number",
        routing_number_type: :aba
      )

    assert_pattern do
      response => ModernTreasury::RoutingDetail
    end

    assert_pattern do
      response => {
        id: String,
        bank_address: ModernTreasury::Address | nil,
        bank_name: String,
        created_at: Time,
        discarded_at: Time | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        payment_type: ModernTreasury::RoutingDetail::PaymentType | nil,
        routing_number: String,
        routing_number_type: ModernTreasury::RoutingDetail::RoutingNumberType,
        updated_at: Time
      }
    end
  end

  def test_retrieve_required_params
    response =
      @modern_treasury.routing_details.retrieve(
        "id",
        accounts_type: :external_accounts,
        account_id: "account_id"
      )

    assert_pattern do
      response => ModernTreasury::RoutingDetail
    end

    assert_pattern do
      response => {
        id: String,
        bank_address: ModernTreasury::Address | nil,
        bank_name: String,
        created_at: Time,
        discarded_at: Time | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        payment_type: ModernTreasury::RoutingDetail::PaymentType | nil,
        routing_number: String,
        routing_number_type: ModernTreasury::RoutingDetail::RoutingNumberType,
        updated_at: Time
      }
    end
  end

  def test_list_required_params
    response = @modern_treasury.routing_details.list("account_id", accounts_type: :external_accounts)

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::RoutingDetail
    end

    assert_pattern do
      row => {
        id: String,
        bank_address: ModernTreasury::Address | nil,
        bank_name: String,
        created_at: Time,
        discarded_at: Time | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        payment_type: ModernTreasury::RoutingDetail::PaymentType | nil,
        routing_number: String,
        routing_number_type: ModernTreasury::RoutingDetail::RoutingNumberType,
        updated_at: Time
      }
    end
  end

  def test_delete_required_params
    response =
      @modern_treasury.routing_details.delete(
        "id",
        accounts_type: :external_accounts,
        account_id: "account_id"
      )

    assert_pattern do
      response => nil
    end
  end
end
