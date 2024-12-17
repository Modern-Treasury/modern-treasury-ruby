# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::IncomingPaymentDetailsTest < Minitest::Test
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_retrieve
    response = @modern_treasury.incoming_payment_details.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::IncomingPaymentDetail
    end
  end

  def test_update
    response = @modern_treasury.incoming_payment_details.update("id")

    assert_pattern do
      response => ModernTreasury::Models::IncomingPaymentDetail
    end
  end

  def test_list
    response = @modern_treasury.incoming_payment_details.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    page = response.next_page
    assert_pattern do
      page => ModernTreasury::Page
    end
  end

  def test_create_async
    response = @modern_treasury.incoming_payment_details.create_async

    assert_pattern do
      response => ModernTreasury::Models::AsyncResponse
    end
  end
end
