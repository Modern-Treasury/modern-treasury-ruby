# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::IncomingPaymentDetailsTest < ModernTreasury::Test::ResourceTest
  def test_retrieve
    response = @modern_treasury.incoming_payment_details.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::IncomingPaymentDetail
    end

    assert_pattern do
      response => {
        id: String,
        amount: Integer,
        as_of_date: Date,
        created_at: Time,
        currency: ModernTreasury::Models::Currency,
        data: ^(ModernTreasury::HashOf[ModernTreasury::Unknown]),
        direction: ModernTreasury::Models::TransactionDirection,
        internal_account_id: String,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        object: String,
        originating_account_number_safe: String | nil,
        originating_account_number_type: ModernTreasury::Models::IncomingPaymentDetail::OriginatingAccountNumberType | nil,
        originating_routing_number: String | nil,
        originating_routing_number_type: ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType | nil,
        status: ModernTreasury::Models::IncomingPaymentDetail::Status,
        transaction_id: String | nil,
        transaction_line_item_id: String | nil,
        type: ModernTreasury::Models::IncomingPaymentDetail::Type,
        updated_at: Time,
        vendor_id: String | nil,
        virtual_account: ModernTreasury::Models::VirtualAccount | nil,
        virtual_account_id: String | nil,
        originating_account_number: String | nil
      }
    end
  end

  def test_update
    response = @modern_treasury.incoming_payment_details.update("id")

    assert_pattern do
      response => ModernTreasury::Models::IncomingPaymentDetail
    end

    assert_pattern do
      response => {
        id: String,
        amount: Integer,
        as_of_date: Date,
        created_at: Time,
        currency: ModernTreasury::Models::Currency,
        data: ^(ModernTreasury::HashOf[ModernTreasury::Unknown]),
        direction: ModernTreasury::Models::TransactionDirection,
        internal_account_id: String,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        object: String,
        originating_account_number_safe: String | nil,
        originating_account_number_type: ModernTreasury::Models::IncomingPaymentDetail::OriginatingAccountNumberType | nil,
        originating_routing_number: String | nil,
        originating_routing_number_type: ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType | nil,
        status: ModernTreasury::Models::IncomingPaymentDetail::Status,
        transaction_id: String | nil,
        transaction_line_item_id: String | nil,
        type: ModernTreasury::Models::IncomingPaymentDetail::Type,
        updated_at: Time,
        vendor_id: String | nil,
        virtual_account: ModernTreasury::Models::VirtualAccount | nil,
        virtual_account_id: String | nil,
        originating_account_number: String | nil
      }
    end
  end

  def test_list
    response = @modern_treasury.incoming_payment_details.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::Models::IncomingPaymentDetail
    end

    assert_pattern do
      row => {
        id: String,
        amount: Integer,
        as_of_date: Date,
        created_at: Time,
        currency: ModernTreasury::Models::Currency,
        data: ^(ModernTreasury::HashOf[ModernTreasury::Unknown]),
        direction: ModernTreasury::Models::TransactionDirection,
        internal_account_id: String,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        object: String,
        originating_account_number_safe: String | nil,
        originating_account_number_type: ModernTreasury::Models::IncomingPaymentDetail::OriginatingAccountNumberType | nil,
        originating_routing_number: String | nil,
        originating_routing_number_type: ModernTreasury::Models::IncomingPaymentDetail::OriginatingRoutingNumberType | nil,
        status: ModernTreasury::Models::IncomingPaymentDetail::Status,
        transaction_id: String | nil,
        transaction_line_item_id: String | nil,
        type: ModernTreasury::Models::IncomingPaymentDetail::Type,
        updated_at: Time,
        vendor_id: String | nil,
        virtual_account: ModernTreasury::Models::VirtualAccount | nil,
        virtual_account_id: String | nil,
        originating_account_number: String | nil
      }
    end
  end

  def test_create_async
    response = @modern_treasury.incoming_payment_details.create_async

    assert_pattern do
      response => ModernTreasury::Models::AsyncResponse
    end

    assert_pattern do
      response => {
        id: String,
        object: String
      }
    end
  end
end
