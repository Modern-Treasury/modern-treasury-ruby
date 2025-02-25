# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::ReturnsTest < Minitest::Test
  def before_all
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.returns.create(
      returnable_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
      returnable_type: :incoming_payment_detail
    )

    assert_pattern do
      response => ModernTreasury::Models::ReturnObject
    end

    assert_pattern do
      response => {
        id: String,
        amount: Integer,
        code: ModernTreasury::Models::ReturnObject::Code | nil,
        created_at: Time,
        currency: ModernTreasury::Models::Currency,
        current_return: ModernTreasury::Models::ReturnObject | nil,
        date_of_death: Date | nil,
        failure_reason: String | nil,
        internal_account_id: String | nil,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        object: String,
        reason: String | nil,
        reference_numbers: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::ReturnObject::ReferenceNumber]),
        returnable_id: String | nil,
        returnable_type: ModernTreasury::Models::ReturnObject::ReturnableType | nil,
        role: ModernTreasury::Models::ReturnObject::Role,
        status: ModernTreasury::Models::ReturnObject::Status,
        transaction_id: String | nil,
        transaction_line_item_id: String | nil,
        type: ModernTreasury::Models::ReturnObject::Type,
        updated_at: Time,
        additional_information: String | nil
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.returns.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::ReturnObject
    end

    assert_pattern do
      response => {
        id: String,
        amount: Integer,
        code: ModernTreasury::Models::ReturnObject::Code | nil,
        created_at: Time,
        currency: ModernTreasury::Models::Currency,
        current_return: ModernTreasury::Models::ReturnObject | nil,
        date_of_death: Date | nil,
        failure_reason: String | nil,
        internal_account_id: String | nil,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        object: String,
        reason: String | nil,
        reference_numbers: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::ReturnObject::ReferenceNumber]),
        returnable_id: String | nil,
        returnable_type: ModernTreasury::Models::ReturnObject::ReturnableType | nil,
        role: ModernTreasury::Models::ReturnObject::Role,
        status: ModernTreasury::Models::ReturnObject::Status,
        transaction_id: String | nil,
        transaction_line_item_id: String | nil,
        type: ModernTreasury::Models::ReturnObject::Type,
        updated_at: Time,
        additional_information: String | nil
      }
    end
  end

  def test_list
    response = @modern_treasury.returns.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    page = response.next_page
    assert_pattern do
      page => ModernTreasury::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => ModernTreasury::Models::ReturnObject
    end

    assert_pattern do
      row => {
        id: String,
        amount: Integer,
        code: ModernTreasury::Models::ReturnObject::Code | nil,
        created_at: Time,
        currency: ModernTreasury::Models::Currency,
        current_return: ModernTreasury::Models::ReturnObject | nil,
        date_of_death: Date | nil,
        failure_reason: String | nil,
        internal_account_id: String | nil,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        object: String,
        reason: String | nil,
        reference_numbers: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::ReturnObject::ReferenceNumber]),
        returnable_id: String | nil,
        returnable_type: ModernTreasury::Models::ReturnObject::ReturnableType | nil,
        role: ModernTreasury::Models::ReturnObject::Role,
        status: ModernTreasury::Models::ReturnObject::Status,
        transaction_id: String | nil,
        transaction_line_item_id: String | nil,
        type: ModernTreasury::Models::ReturnObject::Type,
        updated_at: Time,
        additional_information: String | nil
      }
    end
  end
end
