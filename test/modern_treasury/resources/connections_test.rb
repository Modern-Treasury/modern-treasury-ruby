# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::ConnectionsTest < ModernTreasury::Test::ResourceTest
  def test_list
    response = @modern_treasury.connections.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => ModernTreasury::Models::Connection
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        discarded_at: Time | nil,
        live_mode: ModernTreasury::BooleanModel,
        object: String,
        updated_at: Time,
        vendor_customer_id: String | nil,
        vendor_id: String,
        vendor_name: String
      }
    end
  end
end
