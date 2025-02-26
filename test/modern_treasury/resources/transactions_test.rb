# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::TransactionsTest < Minitest::Test
  def before_all
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.transactions.create(
      amount: 0,
      as_of_date: "2019-12-27",
      direction: "direction",
      internal_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
      vendor_code: "vendor_code",
      vendor_code_type: "vendor_code_type"
    )

    assert_pattern do
      response => ModernTreasury::Models::Transaction
    end

    assert_pattern do
      response => {
        id: String,
        amount: Integer,
        as_of_date: Date | nil,
        as_of_time: Time | nil,
        as_of_timezone: String | nil,
        created_at: Time,
        currency: ModernTreasury::Models::Currency,
        custom_identifiers: ^(ModernTreasury::HashOf[String]),
        direction: String,
        discarded_at: Time | nil,
        foreign_exchange_rate: ModernTreasury::Models::Transaction::ForeignExchangeRate | nil,
        internal_account_id: String,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        object: String,
        posted: ModernTreasury::BooleanModel,
        reconciled: ModernTreasury::BooleanModel,
        type: ModernTreasury::Models::Transaction::Type,
        updated_at: Time,
        vendor_code: String | nil,
        vendor_code_type: ModernTreasury::Models::Transaction::VendorCodeType | nil,
        vendor_customer_id: String | nil,
        vendor_id: String | nil,
        details: ^(ModernTreasury::HashOf[String]) | nil,
        vendor_description: String | nil
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.transactions.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::Transaction
    end

    assert_pattern do
      response => {
        id: String,
        amount: Integer,
        as_of_date: Date | nil,
        as_of_time: Time | nil,
        as_of_timezone: String | nil,
        created_at: Time,
        currency: ModernTreasury::Models::Currency,
        custom_identifiers: ^(ModernTreasury::HashOf[String]),
        direction: String,
        discarded_at: Time | nil,
        foreign_exchange_rate: ModernTreasury::Models::Transaction::ForeignExchangeRate | nil,
        internal_account_id: String,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        object: String,
        posted: ModernTreasury::BooleanModel,
        reconciled: ModernTreasury::BooleanModel,
        type: ModernTreasury::Models::Transaction::Type,
        updated_at: Time,
        vendor_code: String | nil,
        vendor_code_type: ModernTreasury::Models::Transaction::VendorCodeType | nil,
        vendor_customer_id: String | nil,
        vendor_id: String | nil,
        details: ^(ModernTreasury::HashOf[String]) | nil,
        vendor_description: String | nil
      }
    end
  end

  def test_update
    response = @modern_treasury.transactions.update("id")

    assert_pattern do
      response => ModernTreasury::Models::Transaction
    end

    assert_pattern do
      response => {
        id: String,
        amount: Integer,
        as_of_date: Date | nil,
        as_of_time: Time | nil,
        as_of_timezone: String | nil,
        created_at: Time,
        currency: ModernTreasury::Models::Currency,
        custom_identifiers: ^(ModernTreasury::HashOf[String]),
        direction: String,
        discarded_at: Time | nil,
        foreign_exchange_rate: ModernTreasury::Models::Transaction::ForeignExchangeRate | nil,
        internal_account_id: String,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        object: String,
        posted: ModernTreasury::BooleanModel,
        reconciled: ModernTreasury::BooleanModel,
        type: ModernTreasury::Models::Transaction::Type,
        updated_at: Time,
        vendor_code: String | nil,
        vendor_code_type: ModernTreasury::Models::Transaction::VendorCodeType | nil,
        vendor_customer_id: String | nil,
        vendor_id: String | nil,
        details: ^(ModernTreasury::HashOf[String]) | nil,
        vendor_description: String | nil
      }
    end
  end

  def test_list
    response = @modern_treasury.transactions.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    page = response.next_page
    assert_pattern do
      page => ModernTreasury::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => ModernTreasury::Models::Transaction
    end

    assert_pattern do
      row => {
        id: String,
        amount: Integer,
        as_of_date: Date | nil,
        as_of_time: Time | nil,
        as_of_timezone: String | nil,
        created_at: Time,
        currency: ModernTreasury::Models::Currency,
        custom_identifiers: ^(ModernTreasury::HashOf[String]),
        direction: String,
        discarded_at: Time | nil,
        foreign_exchange_rate: ModernTreasury::Models::Transaction::ForeignExchangeRate | nil,
        internal_account_id: String,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        object: String,
        posted: ModernTreasury::BooleanModel,
        reconciled: ModernTreasury::BooleanModel,
        type: ModernTreasury::Models::Transaction::Type,
        updated_at: Time,
        vendor_code: String | nil,
        vendor_code_type: ModernTreasury::Models::Transaction::VendorCodeType | nil,
        vendor_customer_id: String | nil,
        vendor_id: String | nil,
        details: ^(ModernTreasury::HashOf[String]) | nil,
        vendor_description: String | nil
      }
    end
  end

  def test_delete
    response = @modern_treasury.transactions.delete("id")

    assert_pattern do
      response => nil
    end
  end
end
