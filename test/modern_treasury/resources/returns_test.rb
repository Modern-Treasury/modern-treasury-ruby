# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::ReturnsTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response =
      @modern_treasury.returns.create(
        returnable_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        returnable_type: :incoming_payment_detail
      )

    assert_pattern do
      response => ModernTreasury::ReturnObject
    end

    assert_pattern do
      response => {
        id: String,
        amount: Integer,
        code: ModernTreasury::ReturnObject::Code | nil,
        created_at: Time,
        currency: ModernTreasury::Currency,
        current_return: ModernTreasury::ReturnObject | nil,
        date_of_death: Date | nil,
        failure_reason: String | nil,
        internal_account_id: String | nil,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        reason: String | nil,
        reference_numbers: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::ReturnObject::ReferenceNumber]),
        returnable_id: String | nil,
        returnable_type: ModernTreasury::ReturnObject::ReturnableType | nil,
        role: ModernTreasury::ReturnObject::Role,
        status: ModernTreasury::ReturnObject::Status,
        transaction_id: String | nil,
        transaction_line_item_id: String | nil,
        type: ModernTreasury::ReturnObject::Type,
        updated_at: Time,
        additional_information: String | nil,
        data: ModernTreasury::Internal::Type::Unknown | nil
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.returns.retrieve("id")

    assert_pattern do
      response => ModernTreasury::ReturnObject
    end

    assert_pattern do
      response => {
        id: String,
        amount: Integer,
        code: ModernTreasury::ReturnObject::Code | nil,
        created_at: Time,
        currency: ModernTreasury::Currency,
        current_return: ModernTreasury::ReturnObject | nil,
        date_of_death: Date | nil,
        failure_reason: String | nil,
        internal_account_id: String | nil,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        reason: String | nil,
        reference_numbers: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::ReturnObject::ReferenceNumber]),
        returnable_id: String | nil,
        returnable_type: ModernTreasury::ReturnObject::ReturnableType | nil,
        role: ModernTreasury::ReturnObject::Role,
        status: ModernTreasury::ReturnObject::Status,
        transaction_id: String | nil,
        transaction_line_item_id: String | nil,
        type: ModernTreasury::ReturnObject::Type,
        updated_at: Time,
        additional_information: String | nil,
        data: ModernTreasury::Internal::Type::Unknown | nil
      }
    end
  end

  def test_list
    response = @modern_treasury.returns.list

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::ReturnObject
    end

    assert_pattern do
      row => {
        id: String,
        amount: Integer,
        code: ModernTreasury::ReturnObject::Code | nil,
        created_at: Time,
        currency: ModernTreasury::Currency,
        current_return: ModernTreasury::ReturnObject | nil,
        date_of_death: Date | nil,
        failure_reason: String | nil,
        internal_account_id: String | nil,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        reason: String | nil,
        reference_numbers: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::ReturnObject::ReferenceNumber]),
        returnable_id: String | nil,
        returnable_type: ModernTreasury::ReturnObject::ReturnableType | nil,
        role: ModernTreasury::ReturnObject::Role,
        status: ModernTreasury::ReturnObject::Status,
        transaction_id: String | nil,
        transaction_line_item_id: String | nil,
        type: ModernTreasury::ReturnObject::Type,
        updated_at: Time,
        additional_information: String | nil,
        data: ModernTreasury::Internal::Type::Unknown | nil
      }
    end
  end
end
