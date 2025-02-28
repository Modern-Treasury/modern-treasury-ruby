# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::PaperItemsTest < ModernTreasury::Test::ResourceTest
  def test_retrieve
    response = @modern_treasury.paper_items.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::PaperItem
    end

    assert_pattern do
      response => {
        id: String,
        account_number: String | nil,
        account_number_safe: String | nil,
        amount: Integer,
        check_number: String | nil,
        created_at: Time,
        currency: ModernTreasury::Models::Currency,
        deposit_date: Date,
        live_mode: ModernTreasury::BooleanModel,
        lockbox_number: String,
        memo_field: String | nil,
        object: String,
        remitter_name: String | nil,
        routing_number: String | nil,
        status: ModernTreasury::Models::PaperItem::Status,
        transaction_id: String | nil,
        transaction_line_item_id: String | nil,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.paper_items.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    page = response.next_page
    assert_pattern do
      page => ModernTreasury::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => ModernTreasury::Models::PaperItem
    end

    assert_pattern do
      row => {
        id: String,
        account_number: String | nil,
        account_number_safe: String | nil,
        amount: Integer,
        check_number: String | nil,
        created_at: Time,
        currency: ModernTreasury::Models::Currency,
        deposit_date: Date,
        live_mode: ModernTreasury::BooleanModel,
        lockbox_number: String,
        memo_field: String | nil,
        object: String,
        remitter_name: String | nil,
        routing_number: String | nil,
        status: ModernTreasury::Models::PaperItem::Status,
        transaction_id: String | nil,
        transaction_line_item_id: String | nil,
        updated_at: Time
      }
    end
  end
end
