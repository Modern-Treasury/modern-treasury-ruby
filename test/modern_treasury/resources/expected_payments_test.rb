# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::ExpectedPaymentsTest < Minitest::Test
  def before_all
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create
    response = @modern_treasury.expected_payments.create

    assert_pattern do
      response => ModernTreasury::Models::ExpectedPayment
    end

    assert_pattern do
      response => {
        id: String,
        amount_lower_bound: Integer | nil,
        amount_upper_bound: Integer | nil,
        counterparty_id: String | nil,
        created_at: Time,
        currency: ModernTreasury::Models::Currency | nil,
        date_lower_bound: Date | nil,
        date_upper_bound: Date | nil,
        description: String | nil,
        direction: ModernTreasury::Models::ExpectedPayment::Direction | nil,
        internal_account_id: String | nil,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        object: String,
        reconciliation_filters: ModernTreasury::Unknown | nil,
        reconciliation_groups: ModernTreasury::Unknown | nil,
        reconciliation_method: ModernTreasury::Models::ExpectedPayment::ReconciliationMethod | nil,
        reconciliation_rule_variables: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::ReconciliationRule]) | nil,
        remittance_information: String | nil,
        statement_descriptor: String | nil,
        status: ModernTreasury::Models::ExpectedPayment::Status,
        transaction_id: String | nil,
        transaction_line_item_id: String | nil,
        type: ModernTreasury::Models::ExpectedPaymentType | nil,
        updated_at: Time
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.expected_payments.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::ExpectedPayment
    end

    assert_pattern do
      response => {
        id: String,
        amount_lower_bound: Integer | nil,
        amount_upper_bound: Integer | nil,
        counterparty_id: String | nil,
        created_at: Time,
        currency: ModernTreasury::Models::Currency | nil,
        date_lower_bound: Date | nil,
        date_upper_bound: Date | nil,
        description: String | nil,
        direction: ModernTreasury::Models::ExpectedPayment::Direction | nil,
        internal_account_id: String | nil,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        object: String,
        reconciliation_filters: ModernTreasury::Unknown | nil,
        reconciliation_groups: ModernTreasury::Unknown | nil,
        reconciliation_method: ModernTreasury::Models::ExpectedPayment::ReconciliationMethod | nil,
        reconciliation_rule_variables: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::ReconciliationRule]) | nil,
        remittance_information: String | nil,
        statement_descriptor: String | nil,
        status: ModernTreasury::Models::ExpectedPayment::Status,
        transaction_id: String | nil,
        transaction_line_item_id: String | nil,
        type: ModernTreasury::Models::ExpectedPaymentType | nil,
        updated_at: Time
      }
    end
  end

  def test_update
    response = @modern_treasury.expected_payments.update("id")

    assert_pattern do
      response => ModernTreasury::Models::ExpectedPayment
    end

    assert_pattern do
      response => {
        id: String,
        amount_lower_bound: Integer | nil,
        amount_upper_bound: Integer | nil,
        counterparty_id: String | nil,
        created_at: Time,
        currency: ModernTreasury::Models::Currency | nil,
        date_lower_bound: Date | nil,
        date_upper_bound: Date | nil,
        description: String | nil,
        direction: ModernTreasury::Models::ExpectedPayment::Direction | nil,
        internal_account_id: String | nil,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        object: String,
        reconciliation_filters: ModernTreasury::Unknown | nil,
        reconciliation_groups: ModernTreasury::Unknown | nil,
        reconciliation_method: ModernTreasury::Models::ExpectedPayment::ReconciliationMethod | nil,
        reconciliation_rule_variables: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::ReconciliationRule]) | nil,
        remittance_information: String | nil,
        statement_descriptor: String | nil,
        status: ModernTreasury::Models::ExpectedPayment::Status,
        transaction_id: String | nil,
        transaction_line_item_id: String | nil,
        type: ModernTreasury::Models::ExpectedPaymentType | nil,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.expected_payments.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    page = response.next_page
    assert_pattern do
      page => ModernTreasury::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => ModernTreasury::Models::ExpectedPayment
    end

    assert_pattern do
      row => {
        id: String,
        amount_lower_bound: Integer | nil,
        amount_upper_bound: Integer | nil,
        counterparty_id: String | nil,
        created_at: Time,
        currency: ModernTreasury::Models::Currency | nil,
        date_lower_bound: Date | nil,
        date_upper_bound: Date | nil,
        description: String | nil,
        direction: ModernTreasury::Models::ExpectedPayment::Direction | nil,
        internal_account_id: String | nil,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        object: String,
        reconciliation_filters: ModernTreasury::Unknown | nil,
        reconciliation_groups: ModernTreasury::Unknown | nil,
        reconciliation_method: ModernTreasury::Models::ExpectedPayment::ReconciliationMethod | nil,
        reconciliation_rule_variables: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::ReconciliationRule]) | nil,
        remittance_information: String | nil,
        statement_descriptor: String | nil,
        status: ModernTreasury::Models::ExpectedPayment::Status,
        transaction_id: String | nil,
        transaction_line_item_id: String | nil,
        type: ModernTreasury::Models::ExpectedPaymentType | nil,
        updated_at: Time
      }
    end
  end

  def test_delete
    response = @modern_treasury.expected_payments.delete("id")

    assert_pattern do
      response => ModernTreasury::Models::ExpectedPayment
    end

    assert_pattern do
      response => {
        id: String,
        amount_lower_bound: Integer | nil,
        amount_upper_bound: Integer | nil,
        counterparty_id: String | nil,
        created_at: Time,
        currency: ModernTreasury::Models::Currency | nil,
        date_lower_bound: Date | nil,
        date_upper_bound: Date | nil,
        description: String | nil,
        direction: ModernTreasury::Models::ExpectedPayment::Direction | nil,
        internal_account_id: String | nil,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        object: String,
        reconciliation_filters: ModernTreasury::Unknown | nil,
        reconciliation_groups: ModernTreasury::Unknown | nil,
        reconciliation_method: ModernTreasury::Models::ExpectedPayment::ReconciliationMethod | nil,
        reconciliation_rule_variables: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::ReconciliationRule]) | nil,
        remittance_information: String | nil,
        statement_descriptor: String | nil,
        status: ModernTreasury::Models::ExpectedPayment::Status,
        transaction_id: String | nil,
        transaction_line_item_id: String | nil,
        type: ModernTreasury::Models::ExpectedPaymentType | nil,
        updated_at: Time
      }
    end
  end
end
