# frozen_string_literal: true

require_relative "../../test_helper"

class ModernTreasury::Test::Resources::InternalAccounts::BalanceReportsTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response =
      @modern_treasury.internal_accounts.balance_reports.create(
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
      response => ModernTreasury::InternalAccounts::BalanceReport
    end

    assert_pattern do
      response => {
        id: String,
        as_of_date: Date,
        as_of_time: Time | nil,
        balance_report_type: ModernTreasury::InternalAccounts::BalanceReport::BalanceReportType,
        balances: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::InternalAccounts::BalanceReport::Balance]),
        created_at: Time,
        internal_account_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        updated_at: Time
      }
    end
  end

  def test_retrieve_required_params
    response =
      @modern_treasury.internal_accounts.balance_reports.retrieve(
        "id",
        internal_account_id: "internal_account_id"
      )

    assert_pattern do
      response => ModernTreasury::InternalAccounts::BalanceReport
    end

    assert_pattern do
      response => {
        id: String,
        as_of_date: Date,
        as_of_time: Time | nil,
        balance_report_type: ModernTreasury::InternalAccounts::BalanceReport::BalanceReportType,
        balances: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::InternalAccounts::BalanceReport::Balance]),
        created_at: Time,
        internal_account_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @modern_treasury.internal_accounts.balance_reports.list("internal_account_id")

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::InternalAccounts::BalanceReport
    end

    assert_pattern do
      row => {
        id: String,
        as_of_date: Date,
        as_of_time: Time | nil,
        balance_report_type: ModernTreasury::InternalAccounts::BalanceReport::BalanceReportType,
        balances: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::InternalAccounts::BalanceReport::Balance]),
        created_at: Time,
        internal_account_id: String,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        updated_at: Time
      }
    end
  end

  def test_delete_required_params
    response =
      @modern_treasury.internal_accounts.balance_reports.delete(
        "id",
        internal_account_id: "internal_account_id"
      )

    assert_pattern do
      response => nil
    end
  end
end
