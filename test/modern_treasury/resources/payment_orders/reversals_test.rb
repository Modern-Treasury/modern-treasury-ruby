# frozen_string_literal: true

require_relative "../../test_helper"

class ModernTreasury::Test::Resources::PaymentOrders::ReversalsTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response = @modern_treasury.payment_orders.reversals.create("payment_order_id", reason: :duplicate)

    assert_pattern do
      response => ModernTreasury::PaymentOrders::Reversal
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        payment_order_id: String | nil,
        reason: ModernTreasury::PaymentOrders::Reversal::Reason,
        status: ModernTreasury::PaymentOrders::Reversal::Status,
        transaction_ids: ^(ModernTreasury::Internal::Type::ArrayOf[String, nil?: true]),
        updated_at: Time
      }
    end
  end

  def test_retrieve_required_params
    response =
      @modern_treasury.payment_orders.reversals.retrieve("reversal_id", payment_order_id: "payment_order_id")

    assert_pattern do
      response => ModernTreasury::PaymentOrders::Reversal
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        payment_order_id: String | nil,
        reason: ModernTreasury::PaymentOrders::Reversal::Reason,
        status: ModernTreasury::PaymentOrders::Reversal::Status,
        transaction_ids: ^(ModernTreasury::Internal::Type::ArrayOf[String, nil?: true]),
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.payment_orders.reversals.list("payment_order_id")

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::PaymentOrders::Reversal
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        payment_order_id: String | nil,
        reason: ModernTreasury::PaymentOrders::Reversal::Reason,
        status: ModernTreasury::PaymentOrders::Reversal::Status,
        transaction_ids: ^(ModernTreasury::Internal::Type::ArrayOf[String, nil?: true]),
        updated_at: Time
      }
    end
  end
end
