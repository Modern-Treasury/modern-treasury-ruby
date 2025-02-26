# frozen_string_literal: true

require_relative "../../test_helper"

class ModernTreasury::Test::Resources::InternalAccounts::BalanceReportsTest < Minitest::Test
  def before_all
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.internal_accounts.balance_reports.create(
      "internal_account_id",
      as_of_date: "2019-12-27",
      as_of_time: "as_of_time",
      balance_report_type: :intraday,
      balances: [
        {
          amount: 0,
          balance_type: :closing_available,
          vendor_code: "vendor_code",
          vendor_code_type: "vendor_code_type"
        }
      ]
    )

    assert_pattern do
      response => ModernTreasury::Models::InternalAccounts::BalanceReport
    end

    assert_pattern do
      response => {
        id: String,
        as_of_date: Date,
        as_of_time: Time | nil,
        balance_report_type: ModernTreasury::Models::InternalAccounts::BalanceReport::BalanceReportType,
        balances: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::InternalAccounts::BalanceReport::Balance]),
        created_at: Time,
        internal_account_id: String,
        live_mode: ModernTreasury::BooleanModel,
        object: String,
        updated_at: Time
      }
    end
  end

  def test_retrieve_required_params
    response = @modern_treasury.internal_accounts.balance_reports.retrieve(
      "id",
      internal_account_id: "internal_account_id"
    )

    assert_pattern do
      response => ModernTreasury::Models::InternalAccounts::BalanceReport
    end

    assert_pattern do
      response => {
        id: String,
        as_of_date: Date,
        as_of_time: Time | nil,
        balance_report_type: ModernTreasury::Models::InternalAccounts::BalanceReport::BalanceReportType,
        balances: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::InternalAccounts::BalanceReport::Balance]),
        created_at: Time,
        internal_account_id: String,
        live_mode: ModernTreasury::BooleanModel,
        object: String,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.internal_accounts.balance_reports.list("internal_account_id")

    assert_pattern do
      response => ModernTreasury::Page
    end

    page = response.next_page
    assert_pattern do
      page => ModernTreasury::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => ModernTreasury::Models::InternalAccounts::BalanceReport
    end

    assert_pattern do
      row => {
        id: String,
        as_of_date: Date,
        as_of_time: Time | nil,
        balance_report_type: ModernTreasury::Models::InternalAccounts::BalanceReport::BalanceReportType,
        balances: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::InternalAccounts::BalanceReport::Balance]),
        created_at: Time,
        internal_account_id: String,
        live_mode: ModernTreasury::BooleanModel,
        object: String,
        updated_at: Time
      }
    end
  end

  def test_delete_required_params
    response = @modern_treasury.internal_accounts.balance_reports.delete(
      "id",
      internal_account_id: "internal_account_id"
    )

    assert_pattern do
      response => nil
    end
  end
end
