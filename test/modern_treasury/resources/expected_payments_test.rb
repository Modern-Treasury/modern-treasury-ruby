# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::ExpectedPaymentsTest < ModernTreasury::Test::ResourceTest
  def test_create
    response = @modern_treasury.expected_payments.create

    assert_pattern do
      response => ModernTreasury::ExpectedPayment
    end

    assert_pattern do
      response => {
        id: String,
        amount_lower_bound: Integer | nil,
        amount_reconciled: Integer | nil,
        amount_reconciled_direction: ModernTreasury::ExpectedPayment::AmountReconciledDirection | nil,
        amount_unreconciled: Integer | nil,
        amount_unreconciled_direction: ModernTreasury::ExpectedPayment::AmountUnreconciledDirection | nil,
        amount_upper_bound: Integer | nil,
        counterparty_id: String | nil,
        created_at: Time,
        currency: ModernTreasury::Currency | nil,
        date_lower_bound: Date | nil,
        date_upper_bound: Date | nil,
        description: String | nil,
        direction: ModernTreasury::ExpectedPayment::Direction | nil,
        external_id: String | nil,
        internal_account_id: String | nil,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        reconciliation_filters: ModernTreasury::Internal::Type::Unknown | nil,
        reconciliation_groups: ModernTreasury::Internal::Type::Unknown | nil,
        reconciliation_method: ModernTreasury::ExpectedPayment::ReconciliationMethod | nil,
        reconciliation_rule_variables: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::ReconciliationRule]) | nil,
        remittance_information: String | nil,
        statement_descriptor: String | nil,
        status: ModernTreasury::ExpectedPayment::Status,
        transaction_id: String | nil,
        transaction_line_item_id: String | nil,
        type: ModernTreasury::ExpectedPaymentType | nil,
        updated_at: Time
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.expected_payments.retrieve("id")

    assert_pattern do
      response => ModernTreasury::ExpectedPayment
    end

    assert_pattern do
      response => {
        id: String,
        amount_lower_bound: Integer | nil,
        amount_reconciled: Integer | nil,
        amount_reconciled_direction: ModernTreasury::ExpectedPayment::AmountReconciledDirection | nil,
        amount_unreconciled: Integer | nil,
        amount_unreconciled_direction: ModernTreasury::ExpectedPayment::AmountUnreconciledDirection | nil,
        amount_upper_bound: Integer | nil,
        counterparty_id: String | nil,
        created_at: Time,
        currency: ModernTreasury::Currency | nil,
        date_lower_bound: Date | nil,
        date_upper_bound: Date | nil,
        description: String | nil,
        direction: ModernTreasury::ExpectedPayment::Direction | nil,
        external_id: String | nil,
        internal_account_id: String | nil,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        reconciliation_filters: ModernTreasury::Internal::Type::Unknown | nil,
        reconciliation_groups: ModernTreasury::Internal::Type::Unknown | nil,
        reconciliation_method: ModernTreasury::ExpectedPayment::ReconciliationMethod | nil,
        reconciliation_rule_variables: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::ReconciliationRule]) | nil,
        remittance_information: String | nil,
        statement_descriptor: String | nil,
        status: ModernTreasury::ExpectedPayment::Status,
        transaction_id: String | nil,
        transaction_line_item_id: String | nil,
        type: ModernTreasury::ExpectedPaymentType | nil,
        updated_at: Time
      }
    end
  end

  def test_update
    response = @modern_treasury.expected_payments.update("id")

    assert_pattern do
      response => ModernTreasury::ExpectedPayment
    end

    assert_pattern do
      response => {
        id: String,
        amount_lower_bound: Integer | nil,
        amount_reconciled: Integer | nil,
        amount_reconciled_direction: ModernTreasury::ExpectedPayment::AmountReconciledDirection | nil,
        amount_unreconciled: Integer | nil,
        amount_unreconciled_direction: ModernTreasury::ExpectedPayment::AmountUnreconciledDirection | nil,
        amount_upper_bound: Integer | nil,
        counterparty_id: String | nil,
        created_at: Time,
        currency: ModernTreasury::Currency | nil,
        date_lower_bound: Date | nil,
        date_upper_bound: Date | nil,
        description: String | nil,
        direction: ModernTreasury::ExpectedPayment::Direction | nil,
        external_id: String | nil,
        internal_account_id: String | nil,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        reconciliation_filters: ModernTreasury::Internal::Type::Unknown | nil,
        reconciliation_groups: ModernTreasury::Internal::Type::Unknown | nil,
        reconciliation_method: ModernTreasury::ExpectedPayment::ReconciliationMethod | nil,
        reconciliation_rule_variables: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::ReconciliationRule]) | nil,
        remittance_information: String | nil,
        statement_descriptor: String | nil,
        status: ModernTreasury::ExpectedPayment::Status,
        transaction_id: String | nil,
        transaction_line_item_id: String | nil,
        type: ModernTreasury::ExpectedPaymentType | nil,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.expected_payments.list

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::ExpectedPayment
    end

    assert_pattern do
      row => {
        id: String,
        amount_lower_bound: Integer | nil,
        amount_reconciled: Integer | nil,
        amount_reconciled_direction: ModernTreasury::ExpectedPayment::AmountReconciledDirection | nil,
        amount_unreconciled: Integer | nil,
        amount_unreconciled_direction: ModernTreasury::ExpectedPayment::AmountUnreconciledDirection | nil,
        amount_upper_bound: Integer | nil,
        counterparty_id: String | nil,
        created_at: Time,
        currency: ModernTreasury::Currency | nil,
        date_lower_bound: Date | nil,
        date_upper_bound: Date | nil,
        description: String | nil,
        direction: ModernTreasury::ExpectedPayment::Direction | nil,
        external_id: String | nil,
        internal_account_id: String | nil,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        reconciliation_filters: ModernTreasury::Internal::Type::Unknown | nil,
        reconciliation_groups: ModernTreasury::Internal::Type::Unknown | nil,
        reconciliation_method: ModernTreasury::ExpectedPayment::ReconciliationMethod | nil,
        reconciliation_rule_variables: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::ReconciliationRule]) | nil,
        remittance_information: String | nil,
        statement_descriptor: String | nil,
        status: ModernTreasury::ExpectedPayment::Status,
        transaction_id: String | nil,
        transaction_line_item_id: String | nil,
        type: ModernTreasury::ExpectedPaymentType | nil,
        updated_at: Time
      }
    end
  end

  def test_delete
    response = @modern_treasury.expected_payments.delete("id")

    assert_pattern do
      response => ModernTreasury::ExpectedPayment
    end

    assert_pattern do
      response => {
        id: String,
        amount_lower_bound: Integer | nil,
        amount_reconciled: Integer | nil,
        amount_reconciled_direction: ModernTreasury::ExpectedPayment::AmountReconciledDirection | nil,
        amount_unreconciled: Integer | nil,
        amount_unreconciled_direction: ModernTreasury::ExpectedPayment::AmountUnreconciledDirection | nil,
        amount_upper_bound: Integer | nil,
        counterparty_id: String | nil,
        created_at: Time,
        currency: ModernTreasury::Currency | nil,
        date_lower_bound: Date | nil,
        date_upper_bound: Date | nil,
        description: String | nil,
        direction: ModernTreasury::ExpectedPayment::Direction | nil,
        external_id: String | nil,
        internal_account_id: String | nil,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        reconciliation_filters: ModernTreasury::Internal::Type::Unknown | nil,
        reconciliation_groups: ModernTreasury::Internal::Type::Unknown | nil,
        reconciliation_method: ModernTreasury::ExpectedPayment::ReconciliationMethod | nil,
        reconciliation_rule_variables: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::ReconciliationRule]) | nil,
        remittance_information: String | nil,
        statement_descriptor: String | nil,
        status: ModernTreasury::ExpectedPayment::Status,
        transaction_id: String | nil,
        transaction_line_item_id: String | nil,
        type: ModernTreasury::ExpectedPaymentType | nil,
        updated_at: Time
      }
    end
  end
end
