# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::ForeignExchangeQuotesTest < Minitest::Test
  def before_all
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.foreign_exchange_quotes.create(
      internal_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
      target_currency: :AED
    )

    assert_pattern do
      response => ModernTreasury::Models::ForeignExchangeQuote
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        effective_at: Time,
        expires_at: Time,
        foreign_exchange_indicator: String,
        foreign_exchange_rate: ModernTreasury::Models::ForeignExchangeQuote::ForeignExchangeRate,
        internal_account_id: String,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        object: String,
        updated_at: Time,
        vendor_id: String | nil
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.foreign_exchange_quotes.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::ForeignExchangeQuote
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        effective_at: Time,
        expires_at: Time,
        foreign_exchange_indicator: String,
        foreign_exchange_rate: ModernTreasury::Models::ForeignExchangeQuote::ForeignExchangeRate,
        internal_account_id: String,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        object: String,
        updated_at: Time,
        vendor_id: String | nil
      }
    end
  end

  def test_list
    response = @modern_treasury.foreign_exchange_quotes.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    page = response.next_page
    assert_pattern do
      page => ModernTreasury::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => ModernTreasury::Models::ForeignExchangeQuote
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        effective_at: Time,
        expires_at: Time,
        foreign_exchange_indicator: String,
        foreign_exchange_rate: ModernTreasury::Models::ForeignExchangeQuote::ForeignExchangeRate,
        internal_account_id: String,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        object: String,
        updated_at: Time,
        vendor_id: String | nil
      }
    end
  end
end
