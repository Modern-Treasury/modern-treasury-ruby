# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LedgerAccountStatementsTest < Test::Unit::TestCase
  def setup
    @modern_treasury = ModernTreasury::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      organization_id: "my-organization-ID"
    )
  end

  def test_retrieve
    response = @modern_treasury.ledger_account_statements.retrieve("string")
    assert(
      ModernTreasury::Converter.same_type?(
        ModernTreasury::Models::LedgerAccountStatementRetrieveResponse,
        response
      ),
      response.class.to_s
    )
  end
end
