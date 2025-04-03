# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::PaymentFlowsTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response =
      @modern_treasury.payment_flows.create(
        amount: 0,
        counterparty_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        currency: "currency",
        direction: :credit,
        originating_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => ModernTreasury::Models::PaymentFlow
    end

    assert_pattern do
      response => {
        id: String | nil,
        amount: Integer | nil,
        client_token: String | nil,
        counterparty_id: String | nil,
        created_at: Time | nil,
        currency: String | nil,
        direction: ModernTreasury::Models::PaymentFlow::Direction | nil,
        due_date: Date | nil,
        effective_date_selection_enabled: ModernTreasury::BooleanModel | nil,
        existing_external_accounts_filter: ModernTreasury::Models::PaymentFlow::ExistingExternalAccountsFilter | nil,
        external_account_collection: ModernTreasury::Models::PaymentFlow::ExternalAccountCollection | nil,
        live_mode: ModernTreasury::BooleanModel | nil,
        object: String | nil,
        originating_account_id: String | nil,
        payment_order_id: String | nil,
        receiving_account_id: String | nil,
        selected_effective_date: Date | nil,
        status: ModernTreasury::Models::PaymentFlow::Status | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.payment_flows.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::PaymentFlow
    end

    assert_pattern do
      response => {
        id: String | nil,
        amount: Integer | nil,
        client_token: String | nil,
        counterparty_id: String | nil,
        created_at: Time | nil,
        currency: String | nil,
        direction: ModernTreasury::Models::PaymentFlow::Direction | nil,
        due_date: Date | nil,
        effective_date_selection_enabled: ModernTreasury::BooleanModel | nil,
        existing_external_accounts_filter: ModernTreasury::Models::PaymentFlow::ExistingExternalAccountsFilter | nil,
        external_account_collection: ModernTreasury::Models::PaymentFlow::ExternalAccountCollection | nil,
        live_mode: ModernTreasury::BooleanModel | nil,
        object: String | nil,
        originating_account_id: String | nil,
        payment_order_id: String | nil,
        receiving_account_id: String | nil,
        selected_effective_date: Date | nil,
        status: ModernTreasury::Models::PaymentFlow::Status | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_update_required_params
    response = @modern_treasury.payment_flows.update("id", status: :cancelled)

    assert_pattern do
      response => ModernTreasury::Models::PaymentFlow
    end

    assert_pattern do
      response => {
        id: String | nil,
        amount: Integer | nil,
        client_token: String | nil,
        counterparty_id: String | nil,
        created_at: Time | nil,
        currency: String | nil,
        direction: ModernTreasury::Models::PaymentFlow::Direction | nil,
        due_date: Date | nil,
        effective_date_selection_enabled: ModernTreasury::BooleanModel | nil,
        existing_external_accounts_filter: ModernTreasury::Models::PaymentFlow::ExistingExternalAccountsFilter | nil,
        external_account_collection: ModernTreasury::Models::PaymentFlow::ExternalAccountCollection | nil,
        live_mode: ModernTreasury::BooleanModel | nil,
        object: String | nil,
        originating_account_id: String | nil,
        payment_order_id: String | nil,
        receiving_account_id: String | nil,
        selected_effective_date: Date | nil,
        status: ModernTreasury::Models::PaymentFlow::Status | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list
    response = @modern_treasury.payment_flows.list

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::Models::PaymentFlow
    end

    assert_pattern do
      row => {
        id: String | nil,
        amount: Integer | nil,
        client_token: String | nil,
        counterparty_id: String | nil,
        created_at: Time | nil,
        currency: String | nil,
        direction: ModernTreasury::Models::PaymentFlow::Direction | nil,
        due_date: Date | nil,
        effective_date_selection_enabled: ModernTreasury::BooleanModel | nil,
        existing_external_accounts_filter: ModernTreasury::Models::PaymentFlow::ExistingExternalAccountsFilter | nil,
        external_account_collection: ModernTreasury::Models::PaymentFlow::ExternalAccountCollection | nil,
        live_mode: ModernTreasury::BooleanModel | nil,
        object: String | nil,
        originating_account_id: String | nil,
        payment_order_id: String | nil,
        receiving_account_id: String | nil,
        selected_effective_date: Date | nil,
        status: ModernTreasury::Models::PaymentFlow::Status | nil,
        updated_at: Time | nil
      }
    end
  end
end
