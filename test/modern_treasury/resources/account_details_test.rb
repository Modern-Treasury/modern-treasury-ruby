# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::AccountDetailsTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response = @modern_treasury.account_details.create(
      "account_id",
      accounts_type: :external_accounts,
      account_number: "account_number"
    )

    assert_pattern do
      response => ModernTreasury::Models::AccountDetail
    end

    assert_pattern do
      response => {
        id: String,
        account_number_safe: String,
        account_number_type: ModernTreasury::Models::AccountDetail::AccountNumberType,
        created_at: Time,
        discarded_at: Time | nil,
        live_mode: ModernTreasury::BooleanModel,
        object: String,
        updated_at: Time,
        account_number: String | nil
      }
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

    assert_pattern do
      response => {
        id: String,
        account_number_safe: String,
        account_number_type: ModernTreasury::Models::AccountDetail::AccountNumberType,
        created_at: Time,
        discarded_at: Time | nil,
        live_mode: ModernTreasury::BooleanModel,
        object: String,
        updated_at: Time,
        account_number: String | nil
      }
    end
  end

  def test_list_required_params
    response = @modern_treasury.account_details.list("account_id", accounts_type: :external_accounts)

    assert_pattern do
      response => ModernTreasury::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => ModernTreasury::Models::AccountDetail
    end

    assert_pattern do
      row => {
        id: String,
        account_number_safe: String,
        account_number_type: ModernTreasury::Models::AccountDetail::AccountNumberType,
        created_at: Time,
        discarded_at: Time | nil,
        live_mode: ModernTreasury::BooleanModel,
        object: String,
        updated_at: Time,
        account_number: String | nil
      }
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
