# frozen_string_literal: true

require_relative "../../test_helper"

class ModernTreasury::Test::Resources::LedgerAccountSettlements::AccountEntriesTest < ModernTreasury::Test::ResourceTest
  def test_update_required_params
    response =
      @modern_treasury.ledger_account_settlements.account_entries.update(
        "id",
        ledger_entry_ids: ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"]
      )

    assert_pattern do
      response => nil
    end
  end

  def test_delete_required_params
    response =
      @modern_treasury.ledger_account_settlements.account_entries.delete("id", ledger_entry_ids: [{}])

    assert_pattern do
      response => nil
    end
  end
end
