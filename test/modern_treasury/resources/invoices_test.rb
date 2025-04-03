# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::InvoicesTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response =
      @modern_treasury.invoices.create(
        counterparty_id: "counterparty_id",
        due_date: "2019-12-27T18:11:19.117Z",
        originating_account_id: "originating_account_id"
      )

    assert_pattern do
      response => ModernTreasury::Models::Invoice
    end

    assert_pattern do
      response => {
        id: String,
        amount_paid: Integer,
        amount_remaining: Integer,
        contact_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::Invoice::ContactDetail]),
        counterparty_billing_address: ModernTreasury::Models::Invoice::CounterpartyBillingAddress | nil,
        counterparty_id: String,
        counterparty_shipping_address: ModernTreasury::Models::Invoice::CounterpartyShippingAddress | nil,
        created_at: Time,
        currency: ModernTreasury::Models::Currency,
        description: String,
        due_date: Time,
        expected_payments: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::ExpectedPayment]),
        fallback_payment_method: String | nil,
        hosted_url: String,
        invoicer_address: ModernTreasury::Models::Invoice::InvoicerAddress | nil,
        ledger_account_settlement_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]) | nil,
        notification_email_addresses: ^(ModernTreasury::ArrayOf[String]) | nil,
        notifications_enabled: ModernTreasury::BooleanModel,
        number: String,
        object: String,
        originating_account_id: String,
        payment_effective_date: Date | nil,
        payment_method: ModernTreasury::Models::Invoice::PaymentMethod | nil,
        payment_orders: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::PaymentOrder]),
        payment_type: ModernTreasury::Models::Invoice::PaymentType | nil,
        pdf_url: String | nil,
        receiving_account_id: String | nil,
        recipient_email: String | nil,
        recipient_name: String | nil,
        remind_after_overdue_days: ^(ModernTreasury::ArrayOf[Integer]) | nil,
        status: ModernTreasury::Models::Invoice::Status,
        total_amount: Integer,
        transaction_line_item_ids: ^(ModernTreasury::ArrayOf[String]),
        updated_at: Time,
        virtual_account_id: String | nil
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.invoices.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::Invoice
    end

    assert_pattern do
      response => {
        id: String,
        amount_paid: Integer,
        amount_remaining: Integer,
        contact_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::Invoice::ContactDetail]),
        counterparty_billing_address: ModernTreasury::Models::Invoice::CounterpartyBillingAddress | nil,
        counterparty_id: String,
        counterparty_shipping_address: ModernTreasury::Models::Invoice::CounterpartyShippingAddress | nil,
        created_at: Time,
        currency: ModernTreasury::Models::Currency,
        description: String,
        due_date: Time,
        expected_payments: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::ExpectedPayment]),
        fallback_payment_method: String | nil,
        hosted_url: String,
        invoicer_address: ModernTreasury::Models::Invoice::InvoicerAddress | nil,
        ledger_account_settlement_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]) | nil,
        notification_email_addresses: ^(ModernTreasury::ArrayOf[String]) | nil,
        notifications_enabled: ModernTreasury::BooleanModel,
        number: String,
        object: String,
        originating_account_id: String,
        payment_effective_date: Date | nil,
        payment_method: ModernTreasury::Models::Invoice::PaymentMethod | nil,
        payment_orders: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::PaymentOrder]),
        payment_type: ModernTreasury::Models::Invoice::PaymentType | nil,
        pdf_url: String | nil,
        receiving_account_id: String | nil,
        recipient_email: String | nil,
        recipient_name: String | nil,
        remind_after_overdue_days: ^(ModernTreasury::ArrayOf[Integer]) | nil,
        status: ModernTreasury::Models::Invoice::Status,
        total_amount: Integer,
        transaction_line_item_ids: ^(ModernTreasury::ArrayOf[String]),
        updated_at: Time,
        virtual_account_id: String | nil
      }
    end
  end

  def test_update
    response = @modern_treasury.invoices.update("id")

    assert_pattern do
      response => ModernTreasury::Models::Invoice
    end

    assert_pattern do
      response => {
        id: String,
        amount_paid: Integer,
        amount_remaining: Integer,
        contact_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::Invoice::ContactDetail]),
        counterparty_billing_address: ModernTreasury::Models::Invoice::CounterpartyBillingAddress | nil,
        counterparty_id: String,
        counterparty_shipping_address: ModernTreasury::Models::Invoice::CounterpartyShippingAddress | nil,
        created_at: Time,
        currency: ModernTreasury::Models::Currency,
        description: String,
        due_date: Time,
        expected_payments: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::ExpectedPayment]),
        fallback_payment_method: String | nil,
        hosted_url: String,
        invoicer_address: ModernTreasury::Models::Invoice::InvoicerAddress | nil,
        ledger_account_settlement_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]) | nil,
        notification_email_addresses: ^(ModernTreasury::ArrayOf[String]) | nil,
        notifications_enabled: ModernTreasury::BooleanModel,
        number: String,
        object: String,
        originating_account_id: String,
        payment_effective_date: Date | nil,
        payment_method: ModernTreasury::Models::Invoice::PaymentMethod | nil,
        payment_orders: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::PaymentOrder]),
        payment_type: ModernTreasury::Models::Invoice::PaymentType | nil,
        pdf_url: String | nil,
        receiving_account_id: String | nil,
        recipient_email: String | nil,
        recipient_name: String | nil,
        remind_after_overdue_days: ^(ModernTreasury::ArrayOf[Integer]) | nil,
        status: ModernTreasury::Models::Invoice::Status,
        total_amount: Integer,
        transaction_line_item_ids: ^(ModernTreasury::ArrayOf[String]),
        updated_at: Time,
        virtual_account_id: String | nil
      }
    end
  end

  def test_list
    response = @modern_treasury.invoices.list

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::Models::Invoice
    end

    assert_pattern do
      row => {
        id: String,
        amount_paid: Integer,
        amount_remaining: Integer,
        contact_details: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::Invoice::ContactDetail]),
        counterparty_billing_address: ModernTreasury::Models::Invoice::CounterpartyBillingAddress | nil,
        counterparty_id: String,
        counterparty_shipping_address: ModernTreasury::Models::Invoice::CounterpartyShippingAddress | nil,
        created_at: Time,
        currency: ModernTreasury::Models::Currency,
        description: String,
        due_date: Time,
        expected_payments: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::ExpectedPayment]),
        fallback_payment_method: String | nil,
        hosted_url: String,
        invoicer_address: ModernTreasury::Models::Invoice::InvoicerAddress | nil,
        ledger_account_settlement_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]) | nil,
        notification_email_addresses: ^(ModernTreasury::ArrayOf[String]) | nil,
        notifications_enabled: ModernTreasury::BooleanModel,
        number: String,
        object: String,
        originating_account_id: String,
        payment_effective_date: Date | nil,
        payment_method: ModernTreasury::Models::Invoice::PaymentMethod | nil,
        payment_orders: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::PaymentOrder]),
        payment_type: ModernTreasury::Models::Invoice::PaymentType | nil,
        pdf_url: String | nil,
        receiving_account_id: String | nil,
        recipient_email: String | nil,
        recipient_name: String | nil,
        remind_after_overdue_days: ^(ModernTreasury::ArrayOf[Integer]) | nil,
        status: ModernTreasury::Models::Invoice::Status,
        total_amount: Integer,
        transaction_line_item_ids: ^(ModernTreasury::ArrayOf[String]),
        updated_at: Time,
        virtual_account_id: String | nil
      }
    end
  end

  def test_add_payment_order_required_params
    response = @modern_treasury.invoices.add_payment_order("payment_order_id", id: "id")

    assert_pattern do
      response => nil
    end
  end
end
