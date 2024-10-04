# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::IncomingPaymentDetailsTest < Minitest::Test
  parallelize_me!

  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_retrieve
    response = @modern_treasury.incoming_payment_details.retrieve("id")
    assert_kind_of(ModernTreasury::Models::IncomingPaymentDetail, response)
  end

  def test_update
    response = @modern_treasury.incoming_payment_details.update("id")
    assert_kind_of(ModernTreasury::Models::IncomingPaymentDetail, response)
  end

  def test_list
    response = @modern_treasury.incoming_payment_details.list
    assert_kind_of(ModernTreasury::Page, response)
  end

  def test_create_async
    response = @modern_treasury.incoming_payment_details.create_async
    assert_kind_of(ModernTreasury::Models::AsyncResponse, response)
  end
end
