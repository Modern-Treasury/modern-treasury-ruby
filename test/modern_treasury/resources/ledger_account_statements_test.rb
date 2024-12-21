# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LedgerAccountStatementsTest < Minitest::Test
  def before_all
    @modern_treasury = ModernTreasury::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_create_required_params
    skip("Prism is broken in this case")

    response = @modern_treasury.ledger_account_statements.create(
      effective_at_lower_bound: "2019-12-27T18:11:19.117Z",
      effective_at_upper_bound: "2019-12-27T18:11:19.117Z",
      ledger_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
    )

    assert_pattern do
      response => ModernTreasury::Models::LedgerAccountStatementCreateResponse
    end
  end

  def test_retrieve
    response = @modern_treasury.ledger_account_statements.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::LedgerAccountStatementRetrieveResponse
    end
  end
end
