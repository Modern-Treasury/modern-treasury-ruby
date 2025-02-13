# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::AccountDetailsTest < Minitest::Test
  def before_all
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.account_details.create(
      "account_id",
      accounts_type: :external_accounts,
      account_number: "account_number"
    )

    assert_pattern do
      response => ModernTreasury::Models::AccountDetail
    end
  end

  def test_retrieve_required_params
    response = @modern_treasury.account_details.retrieve(
      "id",
      accounts_type: :external_accounts,
      account_id: "account_id"
    )

    assert_pattern do
      response => ModernTreasury::Models::AccountDetail
    end
  end

  def test_list_required_params
    response = @modern_treasury.account_details.list("account_id", accounts_type: :external_accounts)

    assert_pattern do
      response => ModernTreasury::Page
    end

    page = response.next_page
    assert_pattern do
      page => ModernTreasury::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => ModernTreasury::Models::AccountDetail
    end
  end

  def test_delete_required_params
    response = @modern_treasury.account_details.delete(
      "id",
      accounts_type: :external_accounts,
      account_id: "account_id"
    )

    assert_pattern do
      response => nil
    end
  end
end
