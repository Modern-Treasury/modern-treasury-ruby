# frozen_string_literal: true

require_relative "../../test_helper"

class ModernTreasury::Test::Resources::InternalAccounts::BalanceReportsTest < Minitest::Test
  parallelize_me!

  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.internal_accounts.balance_reports.create(
      "internal_account_id",
      {
        as_of_date: "2019-12-27",
        as_of_time: "as_of_time",
        balance_report_type: "intraday",
        balances: [
          {
            "amount" => 0,
            "balance_type" => "closing_available",
            "vendor_code" => "vendor_code",
            "vendor_code_type" => "vendor_code_type"
          }
        ]
      }
    )
    assert_kind_of(ModernTreasury::Models::InternalAccounts::BalanceReport, response)
  end

  def test_retrieve_required_params
    response = @modern_treasury.internal_accounts.balance_reports.retrieve(
      "id",
      {internal_account_id: "internal_account_id"}
    )
    assert_kind_of(ModernTreasury::Models::InternalAccounts::BalanceReport, response)
  end

  def test_list
    response = @modern_treasury.internal_accounts.balance_reports.list("internal_account_id")
    assert_kind_of(ModernTreasury::Page, response)
  end

  def test_delete_required_params
    response = @modern_treasury.internal_accounts.balance_reports.delete(
      "id",
      {internal_account_id: "internal_account_id"}
    )
    assert_nil(response)
  end
end
