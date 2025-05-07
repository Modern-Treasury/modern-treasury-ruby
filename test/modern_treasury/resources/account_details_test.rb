# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::AccountDetailsTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response =
      @modern_treasury.account_details.create(
        "account_id",
        accounts_type: :external_accounts,
        account_number: "account_number"
      )

    assert_pattern do
      response => ModernTreasury::AccountDetail
    end

    assert_pattern do
      response => {
        id: String,
        account_number_safe: String,
        account_number_type: ModernTreasury::AccountDetail::AccountNumberType,
        created_at: Time,
        discarded_at: Time | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        updated_at: Time,
        account_number: String | nil
      }
    end
  end

  def test_retrieve_required_params
    response =
      @modern_treasury.account_details.retrieve(
        "id",
        accounts_type: :external_accounts,
        account_id: "account_id"
      )

    assert_pattern do
      response => ModernTreasury::AccountDetail
    end

    assert_pattern do
      response => {
        id: String,
        account_number_safe: String,
        account_number_type: ModernTreasury::AccountDetail::AccountNumberType,
        created_at: Time,
        discarded_at: Time | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        updated_at: Time,
        account_number: String | nil
      }
    end
  end

  def test_list_required_params
    response = @modern_treasury.account_details.list("account_id", accounts_type: :external_accounts)

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::AccountDetail
    end

    assert_pattern do
      row => {
        id: String,
        account_number_safe: String,
        account_number_type: ModernTreasury::AccountDetail::AccountNumberType,
        created_at: Time,
        discarded_at: Time | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        object: String,
        updated_at: Time,
        account_number: String | nil
      }
    end
  end

  def test_delete_required_params
    response =
      @modern_treasury.account_details.delete(
        "id",
        accounts_type: :external_accounts,
        account_id: "account_id"
      )

    assert_pattern do
      response => nil
    end
  end
end
