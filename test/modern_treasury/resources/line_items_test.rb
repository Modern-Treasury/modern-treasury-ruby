# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LineItemsTest < Minitest::Test
  def before_all
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_retrieve_required_params
    response = @modern_treasury.line_items.retrieve(
      "id",
      itemizable_type: :expected_payments,
      itemizable_id: "itemizable_id"
    )

    assert_pattern do
      response => ModernTreasury::Models::LineItem
    end

    assert_pattern do
      response => {
        id: String,
        accounting: ModernTreasury::Models::LineItem::Accounting,
        accounting_category_id: String | nil,
        accounting_ledger_class_id: String | nil,
        amount: Integer,
        created_at: Time,
        description: String | nil,
        itemizable_id: String,
        itemizable_type: ModernTreasury::Models::LineItem::ItemizableType,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        object: String,
        updated_at: Time
      }
    end
  end

  def test_update_required_params
    response = @modern_treasury.line_items.update(
      "id",
      itemizable_type: :expected_payments,
      itemizable_id: "itemizable_id"
    )

    assert_pattern do
      response => ModernTreasury::Models::LineItem
    end

    assert_pattern do
      response => {
        id: String,
        accounting: ModernTreasury::Models::LineItem::Accounting,
        accounting_category_id: String | nil,
        accounting_ledger_class_id: String | nil,
        amount: Integer,
        created_at: Time,
        description: String | nil,
        itemizable_id: String,
        itemizable_type: ModernTreasury::Models::LineItem::ItemizableType,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        object: String,
        updated_at: Time
      }
    end
  end

  def test_list_required_params
    skip("Prism is broken in this case")

    response = @modern_treasury.line_items.list("itemizable_id", itemizable_type: :expected_payments)

    assert_pattern do
      response => ModernTreasury::Page
    end

    page = response.next_page
    assert_pattern do
      page => ModernTreasury::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => ModernTreasury::Models::LineItem
    end

    assert_pattern do
      row => {
        id: String,
        accounting: ModernTreasury::Models::LineItem::Accounting,
        accounting_category_id: String | nil,
        accounting_ledger_class_id: String | nil,
        amount: Integer,
        created_at: Time,
        description: String | nil,
        itemizable_id: String,
        itemizable_type: ModernTreasury::Models::LineItem::ItemizableType,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        object: String,
        updated_at: Time
      }
    end
  end
end
