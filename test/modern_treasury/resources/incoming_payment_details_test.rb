# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::IncomingPaymentDetailsTest < Test::Unit::TestCase
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_retrieve
    response = @modern_treasury.incoming_payment_details.retrieve("string")
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::IncomingPaymentDetail, response),
      response.class.to_s
    )
  end

  def test_update
    response = @modern_treasury.incoming_payment_details.update("string")
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::IncomingPaymentDetail, response),
      response.class.to_s
    )
  end

  def test_list
    response = @modern_treasury.incoming_payment_details.list
    assert(ModernTreasury::Converter.same_type?(ModernTreasury::Page, response), response.class.to_s)
  end

  def test_create_async
    response = @modern_treasury.incoming_payment_details.create_async
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::AsyncResponse, response),
      response.class.to_s
    )
  end
end
