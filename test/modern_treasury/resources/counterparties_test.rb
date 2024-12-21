# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::CounterpartiesTest < Minitest::Test
  def before_all
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    response = @modern_treasury.counterparties.create(name: "name")

    assert_pattern do
      response => ModernTreasury::Models::Counterparty
    end
  end

  def test_retrieve
    response = @modern_treasury.counterparties.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::Counterparty
    end
  end

  def test_update
    response = @modern_treasury.counterparties.update("id")

    assert_pattern do
      response => ModernTreasury::Models::Counterparty
    end
  end

  def test_list
    response = @modern_treasury.counterparties.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    page = response.next_page
    assert_pattern do
      page => ModernTreasury::Page
    end
  end

  def test_delete
    response = @modern_treasury.counterparties.delete("id")

    assert_pattern do
      response => nil
    end
  end

  def test_collect_account_required_params
    response = @modern_treasury.counterparties.collect_account("id", direction: "credit")

    assert_pattern do
      response => ModernTreasury::Models::CounterpartyCollectAccountResponse
    end
  end
end
