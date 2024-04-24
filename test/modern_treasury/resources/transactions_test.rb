# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::TransactionsTest < Test::Unit::TestCase
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.transactions.create(
      {
        amount: 0,
        as_of_date: "2019-12-27",
        direction: "string",
        internal_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        vendor_code: "string",
        vendor_code_type: "string"
      }
    )
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::Transaction, response),
      response.class.to_s
    )
  end

  def test_retrieve
    response = @modern_treasury.transactions.retrieve("string")
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::Transaction, response),
      response.class.to_s
    )
  end

  def test_update
    response = @modern_treasury.transactions.update("string")
    assert(
      ModernTreasury::Converter.same_type?(ModernTreasury::Models::Transaction, response),
      response.class.to_s
    )
  end

  def test_list
    response = @modern_treasury.transactions.list
    assert(ModernTreasury::Converter.same_type?(ModernTreasury::Page, response), response.class.to_s)
  end

  def test_delete
    response = @modern_treasury.transactions.delete("string")
    assert(ModernTreasury::Converter.same_type?(NilClass, response), response.class.to_s)
  end
end
