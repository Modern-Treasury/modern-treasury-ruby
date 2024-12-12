# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::ForeignExchangeQuotesTest < Minitest::Test
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.foreign_exchange_quotes.create(
      internal_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
      target_currency: "AED"
    )
    assert_kind_of(ModernTreasury::Models::ForeignExchangeQuote, response)
  end

  def test_retrieve
    response = @modern_treasury.foreign_exchange_quotes.retrieve("id")
    assert_kind_of(ModernTreasury::Models::ForeignExchangeQuote, response)
  end

  def test_list
    response = @modern_treasury.foreign_exchange_quotes.list
    assert_kind_of(ModernTreasury::Page, response)
  end
end
