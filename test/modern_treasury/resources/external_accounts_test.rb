# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::ExternalAccountsTest < Minitest::Test
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.external_accounts.create(counterparty_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => ModernTreasury::Models::ExternalAccount
    end
  end

  def test_retrieve
    response = @modern_treasury.external_accounts.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::ExternalAccount
    end
  end

  def test_update
    response = @modern_treasury.external_accounts.update("id")

    assert_pattern do
      response => ModernTreasury::Models::ExternalAccount
    end
  end

  def test_list
    response = @modern_treasury.external_accounts.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    page = response.next_page
    assert_pattern do
      page => ModernTreasury::Page
    end
  end

  def test_delete
    response = @modern_treasury.external_accounts.delete("id")

    assert_pattern do
      response => nil
    end
  end

  def test_complete_verification
    response = @modern_treasury.external_accounts.complete_verification("id")

    assert_pattern do
      response => ModernTreasury::Models::ExternalAccount
    end
  end

  def test_verify_required_params
    response = @modern_treasury.external_accounts.verify(
      "id",
      originating_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
      payment_type: "ach"
    )

    assert_pattern do
      response => ModernTreasury::Models::ExternalAccountVerifyResponse
    end
  end
end
