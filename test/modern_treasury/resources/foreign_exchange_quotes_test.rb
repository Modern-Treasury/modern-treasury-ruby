# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::ForeignExchangeQuotesTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response =
      @modern_treasury.foreign_exchange_quotes.create(
        internal_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        target_currency: :AED
      )

    assert_pattern do
      response => ModernTreasury::ForeignExchangeQuote
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        effective_at: Time,
        expires_at: Time,
        foreign_exchange_indicator: String,
        foreign_exchange_rate: ModernTreasury::ForeignExchangeQuote::ForeignExchangeRate,
        internal_account_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        updated_at: Time,
        vendor_id: String | nil
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.foreign_exchange_quotes.retrieve("id")

    assert_pattern do
      response => ModernTreasury::ForeignExchangeQuote
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        effective_at: Time,
        expires_at: Time,
        foreign_exchange_indicator: String,
        foreign_exchange_rate: ModernTreasury::ForeignExchangeQuote::ForeignExchangeRate,
        internal_account_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        updated_at: Time,
        vendor_id: String | nil
      }
    end
  end

  def test_list
    response = @modern_treasury.foreign_exchange_quotes.list

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::ForeignExchangeQuote
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        effective_at: Time,
        expires_at: Time,
        foreign_exchange_indicator: String,
        foreign_exchange_rate: ModernTreasury::ForeignExchangeQuote::ForeignExchangeRate,
        internal_account_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        object: String,
        updated_at: Time,
        vendor_id: String | nil
      }
    end
  end
end
